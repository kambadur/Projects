//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Thu Jan  2 14:27:58 2025
//Host        : carbon running 64-bit Ubuntu 24.04.1 LTS
//Command     : generate_target mb_uart_wrapper.bd
//Design      : mb_uart_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_uart_wrapper
   (diff_clock_rtl_clk_n,
    diff_clock_rtl_clk_p,
    reset,
    usb_uart_rxd,
    usb_uart_txd);
  input diff_clock_rtl_clk_n;
  input diff_clock_rtl_clk_p;
  input reset;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire diff_clock_rtl_clk_n;
  wire diff_clock_rtl_clk_p;
  wire reset;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  mb_uart mb_uart_i
       (.diff_clock_rtl_clk_n(diff_clock_rtl_clk_n),
        .diff_clock_rtl_clk_p(diff_clock_rtl_clk_p),
        .reset(reset),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
