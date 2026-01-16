// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Jan 15 05:27:17 2025
// Host        : carbon running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/carbon/kambadur/Projects/Vivado/zed_nand_axi_gpio/zed_nand_axi_gpio.gen/sources_1/bd/zynq_axi_gpio/ip/zynq_axi_gpio_top_0_0/zynq_axi_gpio_top_0_0_stub.v
// Design      : zynq_axi_gpio_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "zynq_axi_gpio_top_0_0,top,{}" *) (* CORE_GENERATION_INFO = "zynq_axi_gpio_top_0_0,top,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "top,Vivado 2024.2" *) 
module zynq_axi_gpio_top_0_0(in0, in1, out0)
/* synthesis syn_black_box black_box_pad_pin="in0,in1,out0" */;
  input in0;
  input in1;
  output out0;
endmodule
