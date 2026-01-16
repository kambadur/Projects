#clk

#done- led0

#reset- btn0 (active low)
set_property IOSTANDARD LVCMOS33 [get_ports btn0]

#start- btn1 (active low)
set_property PACKAGE_PIN D1 [get_ports btn1]
set_property IOSTANDARD LVCMOS33 [get_ports btn1]

set_property PACKAGE_PIN J2 [get_ports reset]
set_property PACKAGE_PIN D2 [get_ports btn0]
set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports led0]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports diff_clock_rtl_clk_p]
