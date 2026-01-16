// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jul  7 15:13:37 2025
// Host        : carbon running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/carbon/kambadur/Projects/Vivado/zynq_bram_1/zynq_bram_1.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
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
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 38608)
`pragma protect data_block
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
/DiPUnrkqBm6CTZ5ERrieQSatQ==
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
