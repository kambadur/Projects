// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Apr 25 07:41:11 2025
// Host        : carbon running 64-bit Ubuntu 24.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/carbon/kambadur/Projects/Vivado/zynq_bram/zynq_bram.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
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
QGU92IS+xyZrq+8ArOmrpyJOow==
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
