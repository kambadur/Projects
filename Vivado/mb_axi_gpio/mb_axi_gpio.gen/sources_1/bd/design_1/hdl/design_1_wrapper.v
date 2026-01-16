//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Tue Jan 21 00:15:24 2025
//Host        : carbon running 64-bit Ubuntu 24.04.1 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led0,
    reset,
    sysclk,
    uart_rx,
    uart_tx);
  output [0:0]led0;
  input reset;
  input sysclk;
  input uart_rx;
  output uart_tx;

  wire [0:0]led0;
  wire reset;
  wire sysclk;
  wire uart_rx;
  wire uart_tx;

  design_1 design_1_i
       (.led0(led0),
        .reset(reset),
        .sysclk(sysclk),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx));
endmodule
