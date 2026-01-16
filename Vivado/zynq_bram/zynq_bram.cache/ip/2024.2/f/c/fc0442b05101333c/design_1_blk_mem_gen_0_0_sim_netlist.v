// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Apr 25 07:41:10 2025
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
