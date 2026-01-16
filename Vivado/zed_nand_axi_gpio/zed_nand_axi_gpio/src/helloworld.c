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

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xparameters.h"


int main()
{    
        
    XGpio pl_in, ps_out;
    u32 pl_in_read;
    
    init_platform();
    
    XGpio_Initialize(&pl_in, XPAR_AXI_GPIO_0_BASEADDR);
    XGpio_Initialize(&ps_out, XPAR_AXI_GPIO_1_BASEADDR);

    XGpio_SetDataDirection(&pl_in, 1, 1);
    XGpio_SetDataDirection(&ps_out, 1, 0);
    
    while(1)
    {
        pl_in_read = XGpio_DiscreteRead(&pl_in, 0);
        if(pl_in_read)
        {          
            XGpio_DiscreteWrite(&ps_out, 1, 1);
        }
        
    }    
    //print("Hello World\n\r");
    //print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}
