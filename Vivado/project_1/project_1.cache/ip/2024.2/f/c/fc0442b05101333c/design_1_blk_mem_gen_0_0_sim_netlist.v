// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Jan 29 17:29:23 2025
// Host        : carbon running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 4096, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 4096, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9299 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[11:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 38512)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
