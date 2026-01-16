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
#include <xil_io.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xil_cache.h"

//uint64_t* pBram0BaseAddr = (uint32_t*) (XPAR_XBRAM_0_BASEADDR);

int main()
{
    //init the platform
    init_platform();
    xil_printf("\nHello World\n\r");

    // Write different values to sequential addresses
    for (uint16_t i=0; i<1024; i++) {
        Xil_Out32(XPAR_XBRAM_0_BASEADDR+(4*i), 0x11111111+(4*i));
    }
    //Xil_DCacheFlush();  // Ensure writes are actually in BRAM
    
    for (uint16_t i=0; i<1024; i++) {
        xil_printf("%d Value at the address 0x%p\t is 0x%08x\r\n", i, (volatile uint32_t*)XPAR_XBRAM_1_BASEADDR+(1*i), Xil_In32(XPAR_XBRAM_0_BASEADDR+(4*i)));
    }
    cleanup_platform();
    return 0;
}
