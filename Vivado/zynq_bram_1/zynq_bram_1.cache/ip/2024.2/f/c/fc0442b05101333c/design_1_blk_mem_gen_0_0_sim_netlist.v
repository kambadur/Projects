// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jul  7 15:13:36 2025
// Host        : carbon running 64-bit Ubuntu 24.04.2 LTS
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
