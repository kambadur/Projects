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

static volatile uint32_t * a = (uint32_t *) XPAR_MYIP_FA_0_BASEADDR;
static volatile uint32_t * b = (uint32_t *) (XPAR_MYIP_FA_0_BASEADDR + 4U);
static volatile uint32_t * cin = (uint32_t *) (XPAR_MYIP_FA_0_BASEADDR + 8U);
static volatile uint32_t * sum = (uint32_t *) (XPAR_MYIP_FA_0_BASEADDR + 12U);

int main()
{
    //declare variables to write to ip_fa_0
    *a = 127;
    *b = 127;
    *cin = 0;
    
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application\n\r");
    printf("Sum returned from PL is %d\n\r", (*sum)&0xFF);
    printf("Carry returned from PL is %d\n\r", (*sum)>>8);
                
    cleanup_platform();
    return 0;
}
