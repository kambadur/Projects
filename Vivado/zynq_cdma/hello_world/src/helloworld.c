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

 //In this program, cdma shall read from DDR via ps7 and write to blockmem via bramctrl0

#include <stdint.h>
#include <stdio.h>
#include <xil_types.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_io.h"
#include "helloworld.h"
#include "xil_cache.h"

#define XPAR_AXI_BRAM_CTRL_0_BASEADDR 0xC0000000U
#define CDMACR                      (XPAR_AXI_CDMA_0_BASEADDR + 0x00U)
#define CDMASR                      (XPAR_AXI_CDMA_0_BASEADDR + 0x04U)
#define XPAR_AXI_CDMA_0_SRCADDR     (XPAR_AXI_CDMA_0_BASEADDR + 0x18U)
#define XPAR_AXI_CDMA_0_DESTADDR    (XPAR_AXI_CDMA_0_BASEADDR + 0x20U)
#define XPAR_AXI_CDMA_0_BTTADDR     (XPAR_AXI_CDMA_0_BASEADDR + 0x28U)

//pointer declaratrions
/*Initialize some memory in the DDR for a read operation from CDMA
512MB available from the vivado xsa
*/
volatile uint32_t * pDDRMem0 = (uint32_t *) 0x0a000000;
volatile uint32_t * pBRAMCtrl0 = (uint32_t *) XPAR_AXI_BRAM_CTRL_0_BASEADDR;

//Create a pointer to bram controller 0

/*
XPAR_AXI_CDMA_0_BASEADDR 0x7e200000 //CDMA Base Address
//Address Offsets to Base Address
18h  SA     Source Address
20h  DA     Destination Address
28h  BTT    Bytes To Transfer 
*/
volatile uint32_t* pCDMABaseAddr = (uint32_t *)XPAR_AXI_CDMA_0_BASEADDR;
volatile uint32_t* pCDMACR = (uint32_t *)CDMACR;
volatile uint32_t* pCDMASR = (uint32_t *)CDMASR;
volatile uint32_t* pCDMASrcAddr = (uint32_t *) XPAR_AXI_CDMA_0_SRCADDR;
volatile uint32_t* pCDMADestAddr = (uint32_t *) XPAR_AXI_CDMA_0_DESTADDR;
volatile uint32_t* pCDMABTTAddr = (uint32_t *) XPAR_AXI_CDMA_0_BTTADDR;
const size_t TRANSFER_LEN = 0x20;     /* 32 bytes */

int main()
{
    init_platform();

    //Write operations to DDR Memory
    for(uint8_t i = 0; i<20; i++){
        *(pDDRMem0 + i) = 4*i;
    }

    Xil_DCacheFlushRange(0x0A000000U, TRANSFER_LEN);

    //Configure CDMA Reg- XPAR_AXI_CDMA_0_BASEADDR
    //*pCDMACR = 1;
    *pCDMASrcAddr   = pDDRMem0;     //Initialite CDMA SA to starting address of the DDRMem in design
    *pCDMADestAddr  = pBRAMCtrl0;   //Initialite CDMA DA to starting address of the BRAM CTRL0 in design
    *pCDMABTTAddr   = 0x20U;        //32 bytes to transfer   
    
    //Wait until DMA reports its done
    while (~(*pCDMASR &= 0x02U));   /* bit 1 = Idle */
                                          /* spin - or use the IOC interrupt */

    cleanup_platform();
    return 0;
}
