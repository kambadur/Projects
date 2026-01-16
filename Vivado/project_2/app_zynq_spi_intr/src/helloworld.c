/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xstatus.h"
#include "sleep.h"

//IRQ_F2P[1:0]
#define INTC_INTERRUPT_ID_0  61  //'done' interrupt
#define INTC_INTERRUPT_ID_1  62  //'cmd_clear_start' interrupt

// Control and Data bytes for the SPI IP
uint32_t ControlBytes;
uint32_t DatBytes;
s32 status;

XScuGic_Config *intr_cfg;    // interrupt controller configuration
XScuGic int_ctrl;             // interrupt controller
XScuGic* int_ctrl_ptr = &int_ctrl; 

volatile uint32_t* pControlBytes = (volatile uint32_t *)XPAR_MYIP_SPI_CONTROLLER_0_BASEADDR;
volatile uint32_t* pDataBytes = (volatile uint32_t *)(XPAR_MYIP_SPI_CONTROLLER_0_BASEADDR+4); 

// Prototype interrupt configuration
uint8_t interrupts_configuration();

// ISR Prototypes for isr0 and isr1
void isr_0(void * CallBackRef);//for done
void isr_1(void * CallBackRef);   //for cmd_clear_start
void kick_start_spi(void);

uint8_t interrupts_configuration()
{
    uint8_t retval;
    //Get the configuration pointer for the interrupt controller
    intr_cfg = XScuGic_LookupConfig(XPAR_XSCUGIC_0_BASEADDR);
    if(NULL == intr_cfg){
        xil_printf("Null pointer on intr_cfg\n");
        return XST_FAILURE;
    }

    //Initialize the interrupt controller based on the recieved configuration pointer
    status = XScuGic_CfgInitialize(&int_ctrl, intr_cfg, intr_cfg ->CpuBaseAddress); 
    if(status != XST_SUCCESS){
        xil_printf("XScu_CfgInit failed\n");        
        return XST_FAILURE;
    }

    /*Set interrupt priority */
    /* Priority: Lower number = higher priority (0 is highest) */
    /* Trigger Type: 
        - Edge-triggered = 0x3 (rising edge) 
        - Level-sensitive = 0x0 (active high level) */
    XScuGic_SetPriorityTriggerType(&int_ctrl, INTC_INTERRUPT_ID_0, 0xA0, 0x0);
    XScuGic_SetPriorityTriggerType(&int_ctrl, INTC_INTERRUPT_ID_1, 0xB0, 0x0);       
    
    /* Connect the interrupt service routine to the interrupt controller    
    */
    status = XScuGic_Connect(&int_ctrl, INTC_INTERRUPT_ID_0, (Xil_ExceptionHandler) isr_0,  (void *)int_ctrl_ptr);
    if(status != XST_SUCCESS){
        xil_printf("XScu_CfgInit failed\n");        
        return XST_FAILURE;
    }
    status = XScuGic_Connect(&int_ctrl, INTC_INTERRUPT_ID_1, (Xil_ExceptionHandler) isr_1, (void *)int_ctrl_ptr);
    if(status != XST_SUCCESS){
        xil_printf("XScu_CfgInit failed\n");        
        return XST_FAILURE;
    }

    // enable interrupts for IRQ_F2P[1:0]
    XScuGic_Enable(&int_ctrl, INTC_INTERRUPT_ID_0);
    XScuGic_Enable(&int_ctrl, INTC_INTERRUPT_ID_1);
    
    //Initialite exception handling on ARM Core
    Xil_ExceptionInit();

    /* When an interrupt occurs, the processor first has to interrogate the
    interrupt controller to find out which peripheral generated the interrupt.
    Xilinx provide an interrupt handler to do this automatically, and it is called
    “XScuGic_InterruptHandler”. 
    #define XIL_EXCEPTION_ID_INT	XIL_EXCEPTION_ID_IRQ_INT // for IRQ type interrupts
    */
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, int_ctrl_ptr);

    
/* Enable exception handling on ARM processor core
*/
    Xil_ExceptionEnable();

    return XST_SUCCESS;
    
    }

int main()
{    
    init_platform();

    print("Hello World\n\r");
    // Setup and enable interrupts for IRQ_F2P[1:0]
    status = interrupts_configuration();
    if (status != XST_SUCCESS) {
         return XST_FAILURE;
    }
    print("Successfully configured interrupts!\n");
    kick_start_spi();
    
    while (1) {
        sleep(10);
    }    

    cleanup_platform();
    return 0;
}

void isr_0(void* CallBackRef)
{
    //upon done interrupt, reload input control and data bytes and assert start
    //XScuGic * int_ctrl_ptr = (XScuGic *) CallBackRef;
    xil_printf("isr_0 recieved successfully\n");
    //write control byte. This clears the start, loads data byte and asserts start
    *pControlBytes &= 0x00000000;
    //write data byte
    *pDataBytes |= 0x70;
    //assert start
    *pControlBytes |= (1U << 31);
}

void isr_1(void * CallBackRef)
{
    //clear start command
    //XScuGic* int_ctrl_ptr = (XScuGic *) CallBackRef;
    xil_printf("isr_1 recieved successfully\n");

    *pControlBytes &= ~(1U << 31);    
    
}

void kick_start_spi(void) {
    /*This clears the start, loads data byte and asserts start*/
    *pControlBytes &= 0x00000000;
    //write data byte
    *pDataBytes |= 0x75;
    //assert start    
    *pControlBytes |= (1U << 31);    
    xil_printf("Assert start sucess!\n");    
}