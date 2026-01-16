// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Jan 29 17:29:23 2025
// Host        : carbon running 64-bit Ubuntu 24.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/carbon/kambadur/Projects/Vivado/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
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
91pGL+UjiOLJY1igyhUSOwRkKg==
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
