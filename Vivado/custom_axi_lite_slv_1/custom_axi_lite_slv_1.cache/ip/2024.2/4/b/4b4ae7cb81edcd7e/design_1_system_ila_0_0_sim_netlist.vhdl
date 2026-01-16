-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sun Nov  2 12:19:15 2025
-- Host        : carbon running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_system_ila_0_0_sim_netlist.vhdl
-- Design      : design_1_system_ila_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    SLOT_0_AXI_awid : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC;
    SLOT_0_AXI_awlen : in STD_LOGIC;
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awlock : in STD_LOGIC;
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awuser : in STD_LOGIC;
    SLOT_0_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wid : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC;
    SLOT_0_AXI_wstrb : in STD_LOGIC;
    SLOT_0_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wuser : in STD_LOGIC;
    SLOT_0_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_bid : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_buser : in STD_LOGIC;
    SLOT_0_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_arid : in STD_LOGIC;
    SLOT_0_AXI_araddr : in STD_LOGIC;
    SLOT_0_AXI_arlen : in STD_LOGIC;
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arlock : in STD_LOGIC;
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_aruser : in STD_LOGIC;
    SLOT_0_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_rid : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC;
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_ruser : in STD_LOGIC;
    SLOT_0_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_system_ila_0_0,bd_f60c,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_f60c,Vivado 2024.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_f60c is
  port (
    SLOT_0_AXI_araddr : in STD_LOGIC;
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arid : in STD_LOGIC;
    SLOT_0_AXI_arlen : in STD_LOGIC;
    SLOT_0_AXI_arlock : in STD_LOGIC;
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_aruser : in STD_LOGIC;
    SLOT_0_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_awaddr : in STD_LOGIC;
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awid : in STD_LOGIC;
    SLOT_0_AXI_awlen : in STD_LOGIC;
    SLOT_0_AXI_awlock : in STD_LOGIC;
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awuser : in STD_LOGIC;
    SLOT_0_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_bid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_buser : in STD_LOGIC;
    SLOT_0_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_rdata : in STD_LOGIC;
    SLOT_0_AXI_rid : in STD_LOGIC;
    SLOT_0_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_ruser : in STD_LOGIC;
    SLOT_0_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wdata : in STD_LOGIC;
    SLOT_0_AXI_wid : in STD_LOGIC;
    SLOT_0_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_wstrb : in STD_LOGIC;
    SLOT_0_AXI_wuser : in STD_LOGIC;
    SLOT_0_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_f60c;
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "design_1_system_ila_0_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SLOT_0_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_aruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARUSER";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWID";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of SLOT_0_AXI_awid : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of SLOT_0_AXI_awid : signal is "XIL_INTERFACENAME SLOT_0_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWUSER";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_buser : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BUSER";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_ruser : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RUSER";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wuser : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WUSER";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_f60c_clk, ASSOCIATED_BUSIF SLOT_0_AXI, ASSOCIATED_RESET resetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREGION";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREGION";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID";
begin
inst: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_f60c
     port map (
      SLOT_0_AXI_araddr => SLOT_0_AXI_araddr,
      SLOT_0_AXI_arburst(1 downto 0) => SLOT_0_AXI_arburst(1 downto 0),
      SLOT_0_AXI_arcache(3 downto 0) => SLOT_0_AXI_arcache(3 downto 0),
      SLOT_0_AXI_arid => SLOT_0_AXI_arid,
      SLOT_0_AXI_arlen => SLOT_0_AXI_arlen,
      SLOT_0_AXI_arlock => SLOT_0_AXI_arlock,
      SLOT_0_AXI_arprot(2 downto 0) => SLOT_0_AXI_arprot(2 downto 0),
      SLOT_0_AXI_arqos(3 downto 0) => SLOT_0_AXI_arqos(3 downto 0),
      SLOT_0_AXI_arready(0) => SLOT_0_AXI_arready(0),
      SLOT_0_AXI_arregion(3 downto 0) => SLOT_0_AXI_arregion(3 downto 0),
      SLOT_0_AXI_arsize(2 downto 0) => SLOT_0_AXI_arsize(2 downto 0),
      SLOT_0_AXI_aruser => SLOT_0_AXI_aruser,
      SLOT_0_AXI_arvalid(0) => SLOT_0_AXI_arvalid(0),
      SLOT_0_AXI_awaddr => SLOT_0_AXI_awaddr,
      SLOT_0_AXI_awburst(1 downto 0) => SLOT_0_AXI_awburst(1 downto 0),
      SLOT_0_AXI_awcache(3 downto 0) => SLOT_0_AXI_awcache(3 downto 0),
      SLOT_0_AXI_awid => SLOT_0_AXI_awid,
      SLOT_0_AXI_awlen => SLOT_0_AXI_awlen,
      SLOT_0_AXI_awlock => SLOT_0_AXI_awlock,
      SLOT_0_AXI_awprot(2 downto 0) => SLOT_0_AXI_awprot(2 downto 0),
      SLOT_0_AXI_awqos(3 downto 0) => SLOT_0_AXI_awqos(3 downto 0),
      SLOT_0_AXI_awready(0) => SLOT_0_AXI_awready(0),
      SLOT_0_AXI_awregion(3 downto 0) => SLOT_0_AXI_awregion(3 downto 0),
      SLOT_0_AXI_awsize(2 downto 0) => SLOT_0_AXI_awsize(2 downto 0),
      SLOT_0_AXI_awuser => SLOT_0_AXI_awuser,
      SLOT_0_AXI_awvalid(0) => SLOT_0_AXI_awvalid(0),
      SLOT_0_AXI_bid => SLOT_0_AXI_bid,
      SLOT_0_AXI_bready(0) => SLOT_0_AXI_bready(0),
      SLOT_0_AXI_bresp(1 downto 0) => SLOT_0_AXI_bresp(1 downto 0),
      SLOT_0_AXI_buser => SLOT_0_AXI_buser,
      SLOT_0_AXI_bvalid(0) => SLOT_0_AXI_bvalid(0),
      SLOT_0_AXI_rdata => SLOT_0_AXI_rdata,
      SLOT_0_AXI_rid => SLOT_0_AXI_rid,
      SLOT_0_AXI_rlast(0) => SLOT_0_AXI_rlast(0),
      SLOT_0_AXI_rready(0) => SLOT_0_AXI_rready(0),
      SLOT_0_AXI_rresp(1 downto 0) => SLOT_0_AXI_rresp(1 downto 0),
      SLOT_0_AXI_ruser => SLOT_0_AXI_ruser,
      SLOT_0_AXI_rvalid(0) => SLOT_0_AXI_rvalid(0),
      SLOT_0_AXI_wdata => SLOT_0_AXI_wdata,
      SLOT_0_AXI_wid => SLOT_0_AXI_wid,
      SLOT_0_AXI_wlast(0) => SLOT_0_AXI_wlast(0),
      SLOT_0_AXI_wready(0) => SLOT_0_AXI_wready(0),
      SLOT_0_AXI_wstrb => SLOT_0_AXI_wstrb,
      SLOT_0_AXI_wuser => SLOT_0_AXI_wuser,
      SLOT_0_AXI_wvalid(0) => SLOT_0_AXI_wvalid(0),
      clk => clk,
      resetn => resetn
    );
end STRUCTURE;
