# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/carbon/kambadur/Projects/Vivado/custom_axi_lite_slv_1/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/lwipopts.h"
  "/home/carbon/kambadur/Projects/Vivado/custom_axi_lite_slv_1/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/sleep.h"
  "/home/carbon/kambadur/Projects/Vivado/custom_axi_lite_slv_1/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xemac_ieee_reg.h"
  "/home/carbon/kambadur/Projects/Vivado/custom_axi_lite_slv_1/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xemacpsif_hw.h"
  "/home/carbon/kambadur/Projects/Vivado/custom_axi_lite_slv_1/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xiltimer.h"
  "/home/carbon/kambadur/Projects/Vivado/custom_axi_lite_slv_1/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xlwipconfig.h"
  "/home/carbon/kambadur/Projects/Vivado/custom_axi_lite_slv_1/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/include/xtimer_config.h"
  "/home/carbon/kambadur/Projects/Vivado/custom_axi_lite_slv_1/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/lib/liblwip220.a"
  "/home/carbon/kambadur/Projects/Vivado/custom_axi_lite_slv_1/platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/lib/libxiltimer.a"
  )
endif()
