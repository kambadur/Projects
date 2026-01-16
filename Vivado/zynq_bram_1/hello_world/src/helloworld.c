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
#include "xil_io.h"


int main()
{
    uint32_t readValue;
    init_platform();

    xil_printf("\nHello World\n\r");
    print("Successfully ran Hello World application\n\r");
    for(uint8_t i=0; i<10; i++) {
        Xil_Out32(XPAR_AXI_BRAM_CTRL_0_BASEADDR + (sizeof(XPAR_AXI_BRAM_CTRL_0_BASEADDR)*i), 74 + i);            
    }
    for(uint8_t i=0; i<10; i++) {
        xil_printf("readVale at %x is %x\n\r", (XPAR_AXI_BRAM_CTRL_1_BASEADDR + (sizeof(XPAR_AXI_BRAM_CTRL_0_BASEADDR)*i)), Xil_In32(XPAR_AXI_BRAM_CTRL_1_BASEADDR + (sizeof(XPAR_AXI_BRAM_CTRL_0_BASEADDR)*i)));
    }
    //readValue = Xil_In32(XPAR_AXI_BRAM_CTRL_0_BASEADDR);
    //xil_printf("The readValue is %x\n", readValue);
    
    cleanup_platform();
    return 0;
}
