//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sat Jan 18 00:26:07 2025
//Host        : carbon running 64-bit Ubuntu 24.04.1 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (btn0,
    btn1,
    diff_clock_rtl_clk_n,
    diff_clock_rtl_clk_p,
    led0_tri_o,
    reset);
  input btn0;
  input btn1;
  input diff_clock_rtl_clk_n;
  input diff_clock_rtl_clk_p;
  output [0:0]led0_tri_o;
  input reset;

  wire btn0;
  wire btn1;
  wire diff_clock_rtl_clk_n;
  wire diff_clock_rtl_clk_p;
  wire [0:0]led0_tri_o;
  wire reset;

  design_1 design_1_i
       (.btn0(btn0),
        .btn1(btn1),
        .diff_clock_rtl_clk_n(diff_clock_rtl_clk_n),
        .diff_clock_rtl_clk_p(diff_clock_rtl_clk_p),
        .led0_tri_o(led0_tri_o),
        .reset(reset));
endmodule
