# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/carbon/kambadur/Projects/Vivado/mb_axi_gpio/platform/microblaze_0/standalone_microblaze_0/bsp/include/sleep.h"
  "/home/carbon/kambadur/Projects/Vivado/mb_axi_gpio/platform/microblaze_0/standalone_microblaze_0/bsp/include/xiltimer.h"
  "/home/carbon/kambadur/Projects/Vivado/mb_axi_gpio/platform/microblaze_0/standalone_microblaze_0/bsp/include/xtimer_config.h"
  "/home/carbon/kambadur/Projects/Vivado/mb_axi_gpio/platform/microblaze_0/standalone_microblaze_0/bsp/lib/libxiltimer.a"
  )
endif()
