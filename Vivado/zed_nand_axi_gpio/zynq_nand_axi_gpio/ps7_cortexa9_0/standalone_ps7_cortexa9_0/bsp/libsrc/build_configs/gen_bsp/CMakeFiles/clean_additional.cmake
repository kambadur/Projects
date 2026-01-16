# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/carbon/kambadur/Projects/Vivado/zed_nand_axi_gpio/zynq_nand_axi_gpio/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/sleep.h"
  "/home/carbon/kambadur/Projects/Vivado/zed_nand_axi_gpio/zynq_nand_axi_gpio/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xiltimer.h"
  "/home/carbon/kambadur/Projects/Vivado/zed_nand_axi_gpio/zynq_nand_axi_gpio/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xtimer_config.h"
  "/home/carbon/kambadur/Projects/Vivado/zed_nand_axi_gpio/zynq_nand_axi_gpio/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/lib/libxiltimer.a"
  )
endif()
