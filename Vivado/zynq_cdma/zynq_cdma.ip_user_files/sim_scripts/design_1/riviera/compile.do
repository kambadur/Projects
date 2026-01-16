transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_19
vlib riviera/processing_system7_vip_v1_0_21
vlib riviera/xil_defaultlib
vlib riviera/lib_pkg_v1_0_4
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/fifo_generator_v13_2_11
vlib riviera/lib_fifo_v1_0_20
vlib riviera/lib_cdc_v1_0_3
vlib riviera/axi_datamover_v5_1_35
vlib riviera/axi_sg_v4_1_19
vlib riviera/axi_cdma_v4_1_33
vlib riviera/xlconstant_v1_1_9
vlib riviera/proc_sys_reset_v5_0_16
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_33
vlib riviera/axi_bram_ctrl_v4_1_11
vlib riviera/blk_mem_gen_v8_4_9

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 riviera/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 riviera/processing_system7_vip_v1_0_21
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap fifo_generator_v13_2_11 riviera/fifo_generator_v13_2_11
vmap lib_fifo_v1_0_20 riviera/lib_fifo_v1_0_20
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap axi_datamover_v5_1_35 riviera/axi_datamover_v5_1_35
vmap axi_sg_v4_1_19 riviera/axi_sg_v4_1_19
vmap axi_cdma_v4_1_33 riviera/axi_cdma_v4_1_33
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_33 riviera/axi_register_slice_v2_1_33
vmap axi_bram_ctrl_v4_1_11 riviera/axi_bram_ctrl_v4_1_11
vmap blk_mem_gen_v8_4_9 riviera/blk_mem_gen_v8_4_9

vlog -work xilinx_vip  -incr "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11 -93  -incr \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_20 -93  -incr \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/e160/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_35 -93  -incr \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/4277/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_19 -93  -incr \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/fc5d/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_cdma_v4_1_33 -93  -incr \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/9d4d/hdl/axi_cdma_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_cdma_0_0/sim/design_1_axi_cdma_0_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m01e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work axi_register_slice_v2_1_33  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_11 -93  -incr \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/df79/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_1_0/sim/design_1_axi_bram_ctrl_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_0/sim/bd_a878_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_1/sim/bd_a878_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_2/sim/bd_a878_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_3/sim/bd_a878_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_4/sim/bd_a878_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_5/sim/bd_a878_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_6/sim/bd_a878_bsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_7/sim/bd_a878_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_8/sim/bd_a878_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_9/sim/bd_a878_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_10/sim/bd_a878_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_11/sim/bd_a878_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_12/sim/bd_a878_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_13/sim/bd_a878_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_14/sim/bd_a878_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_15/sim/bd_a878_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_16/sim/bd_a878_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_17/sim/bd_a878_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_18/sim/bd_a878_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_19/sim/bd_a878_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_20/sim/bd_a878_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_21/sim/bd_a878_m00bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_22/sim/bd_a878_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_23/sim/bd_a878_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_24/sim/bd_a878_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_25/sim/bd_a878_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_26/sim/bd_a878_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_27/sim/bd_a878_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_28/sim/bd_a878_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_29/sim/bd_a878_m01e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zynq_cdma.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l lib_cdc_v1_0_3 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_cdma_v4_1_33 -l xlconstant_v1_1_9 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_bram_ctrl_v4_1_11 -l blk_mem_gen_v8_4_9 \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/sim/bd_a878.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/sim/design_1_axi_smc_1_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

