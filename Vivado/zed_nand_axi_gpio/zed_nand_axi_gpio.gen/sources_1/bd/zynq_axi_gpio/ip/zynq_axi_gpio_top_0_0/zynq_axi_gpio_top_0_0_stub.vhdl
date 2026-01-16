-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Wed Jan 15 05:27:17 2025
-- Host        : carbon running 64-bit Ubuntu 24.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/carbon/kambadur/Projects/Vivado/zed_nand_axi_gpio/zed_nand_axi_gpio.gen/sources_1/bd/zynq_axi_gpio/ip/zynq_axi_gpio_top_0_0/zynq_axi_gpio_top_0_0_stub.vhdl
-- Design      : zynq_axi_gpio_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zynq_axi_gpio_top_0_0 is
  Port ( 
    in0 : in STD_LOGIC;
    in1 : in STD_LOGIC;
    out0 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zynq_axi_gpio_top_0_0 : entity is "zynq_axi_gpio_top_0_0,top,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of zynq_axi_gpio_top_0_0 : entity is "zynq_axi_gpio_top_0_0,top,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zynq_axi_gpio_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zynq_axi_gpio_top_0_0 : entity is "module_ref";
end zynq_axi_gpio_top_0_0;

architecture stub of zynq_axi_gpio_top_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "in0,in1,out0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "top,Vivado 2024.2";
begin
end;
