# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/include/diskio.h"
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/include/ff.h"
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/include/ffconf.h"
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/include/sleep.h"
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/include/xilffs.h"
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/include/xilffs_config.h"
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/include/xilrsa.h"
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/include/xiltimer.h"
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/include/xtimer_config.h"
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/lib/libxilffs.a"
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/lib/libxilrsa.a"
  "/home/carbon/kambadur/Projects/Vivado/zynq_cdma/platform/zynq_fsbl/zynq_fsbl_bsp/lib/libxiltimer.a"
  )
endif()
