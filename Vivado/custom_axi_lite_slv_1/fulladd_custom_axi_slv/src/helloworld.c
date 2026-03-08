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
#include <string.h>
#include "lwip/udp.h"      // Library for User Datagram Protocol (UDP)
#include "lwip/init.h"     // lwIP initialization functions
#include "netif/xadapter.h" // Xilinx Network Interface Adapter
#include "xparameters.h"   // Contains hardware addresses
#include "xil_printf.h"    // UART console output
#include "platform.h"      // Board platform init

// --- GLOBAL NETWORK INTERFACE ---
// This was missing. We need a global pointer so the main loop can access it.
struct netif *netif;

/* * FPGA Register Mapping */
static volatile uint32_t * reg_a   = (uint32_t *) XPAR_MYIP_FA_0_BASEADDR;        
static volatile uint32_t * reg_b   = (uint32_t *) (XPAR_MYIP_FA_0_BASEADDR + 4U);    
static volatile uint32_t * reg_cin = (uint32_t *) (XPAR_MYIP_FA_0_BASEADDR + 8U);    
static volatile uint32_t * reg_sum = (uint32_t *) (XPAR_MYIP_FA_0_BASEADDR + 12U);   

/**
 * udp_recv_perf_callback
 * Runs when a UDP packet arrives.
 */
void udp_recv_perf_callback(void *arg, struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *addr, u16_t port) {
    if (p != NULL) {
        int a_in, b_in, cin_in;
        char buffer[64];
        
        // Copy packet to string
        strncpy(buffer, (char *)p->payload, p->len);
        buffer[p->len] = '\0'; 

        // Parse: "a b cin"
        if (sscanf(buffer, "%d %d %d", &a_in, &b_in, &cin_in) == 3) {
            
            // Write to FPGA
            *reg_a = (uint32_t)a_in;
            *reg_b = (uint32_t)b_in;
            *reg_cin = (uint32_t)cin_in;

            // Read from FPGA
            uint32_t result = *reg_sum;
            int s = (int)(result & 0xFF);
            int c = (int)(result >> 8);

            // Send response
            char resp[64];
            int resp_len = sprintf(resp, "RES %d %d", s, c);

            struct pbuf *p_ret = pbuf_alloc(PBUF_TRANSPORT, resp_len, PBUF_RAM);
            if (p_ret != NULL) {
                memcpy(p_ret->payload, resp, resp_len);
                udp_sendto(pcb, p_ret, addr, port);
                pbuf_free(p_ret);
            }
        }
        pbuf_free(p);
    }
}

int main() {
    // 1. Initialize Hardware Platform
    init_platform();

    // 2. Define IP settings
    ip_addr_t ipaddr, netmask, gw;
    unsigned char mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

    IP4_ADDR(&ipaddr,  192, 168, 1, 10);
    IP4_ADDR(&netmask, 255, 255, 255, 0);
    IP4_ADDR(&gw,      192, 168, 1, 1);

    // 3. Initialize lwIP stack
    lwip_init();

    // 4. Setup the Network Interface
    static struct netif server_netif;
    netif = &server_netif;

    // Add interface to the stack
    if (!xemac_add(netif, &ipaddr, &netmask, &gw, mac_ethernet_address, XPAR_XEMACPS_0_BASEADDR)) {
        xil_printf("Error adding N/W interface\r\n");
        return -1;
    }
    netif_set_up(netif);

    // 5. Setup UDP Listener
    struct udp_pcb *pcb = udp_new();
    udp_bind(pcb, IP_ADDR_ANY, 5005);
    udp_recv(pcb, udp_recv_perf_callback, NULL);

    xil_printf("UDP Full Adder HIL Started on Port 5005\r\n");

    // 6. Infinite Loop
    while (1) {
        // This is where 'netif' is used to check for new packets
        xemacif_input(netif); 
    }
    
    cleanup_platform();
    return 0;
}
 /*
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"

// Define pointers to your AXI registers
static volatile uint32_t * reg_a   = (uint32_t *) XPAR_MYIP_FA_0_BASEADDR;
static volatile uint32_t * reg_b   = (uint32_t *) (XPAR_MYIP_FA_0_BASEADDR + 4U);
static volatile uint32_t * reg_cin = (uint32_t *) (XPAR_MYIP_FA_0_BASEADDR + 8U);
static volatile uint32_t * reg_sum = (uint32_t *) (XPAR_MYIP_FA_0_BASEADDR + 12U);

int main() {
    init_platform();
    int a_in, b_in, cin_in;

    while(1) {
        if (scanf("%d %d %d", &a_in, &b_in, &cin_in) == 3) {
            *reg_a = (uint32_t)a_in;
            *reg_b = (uint32_t)b_in;
            *reg_cin = (uint32_t)cin_in;

            for(int i=0; i<100; i++);   //inentioanl delay for the fpga regs to settle. Might not be needed at low clock speeds.

            uint32_t result = *reg_sum;
            printf("RES %d %d\n", (int)(result & 0xFF), (int)(result >> 8));
            
            // ADD THIS LINE TO SEND DATA IMMEDIATELY
            fflush(stdout); 
        }
    }

    cleanup_platform();
    return 0;
}
*/
 /*

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
    init_platform();

    //declare variables to write to ip_fa_0
    *a = 127;
    *b = 126;
    *cin = 0;

    print("Hello World\n\r");
    print("Successfully ran Hello World application\n\r");
    printf("Sum returned from PL is %d\n\r", (*sum)&0xFF);
    printf("Carry returned from PL is %d\n\r", (*sum)>>8);
                
    cleanup_platform();
    return 0;
}
*/