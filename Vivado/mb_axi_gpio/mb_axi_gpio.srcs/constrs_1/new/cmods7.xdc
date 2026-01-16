#sysclk
create_clock -name sys_clk -period 83.33 [get_ports sysclk]
set_property PACKAGE_PIN M9 [get_ports sysclk]
set_property IOSTANDARD LVCMOS33 [get_ports sysclk]

#reset btn0
set_property PACKAGE_PIN D2 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

#btn1
set_property PACKAGE_PIN D1 [get_ports btn1]
set_property IOSTANDARD LVCMOS33 [get_ports btn1]

#LED
set_property PACKAGE_PIN E2 [get_ports led0]
set_property IOSTANDARD LVCMOS33 [get_ports led0]

#uart
set_property PACKAGE_PIN K15 [get_ports uart_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]

set_property PACKAGE_PIN L12 [get_ports uart_rx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]

