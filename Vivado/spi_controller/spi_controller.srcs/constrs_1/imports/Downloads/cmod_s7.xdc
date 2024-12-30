#clk
create_clock -name sysclk -period 83.33 [get_ports clk]
set_property PACKAGE_PIN M9 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
      
#done- led0
set_property PACKAGE_PIN E2 [get_ports done]
set_property IOSTANDARD LVCMOS33 [get_ports done]
      
#reset- btn0 (active low)
set_property PACKAGE_PIN D2 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

#start- btn1 (active low)
set_property PACKAGE_PIN D1 [get_ports start]
set_property IOSTANDARD LVCMOS33 [get_ports start]

#nCS- PMOD header J2
set_property PACKAGE_PIN J2 [get_ports nCS]
set_property IOSTANDARD LVCMOS33 [get_ports nCS]

#MOSI- PMOD header J2
set_property PACKAGE_PIN H2 [get_ports mosi]
set_property IOSTANDARD LVCMOS33 [get_ports mosi]

#sclk- PMOD header J2
set_property PACKAGE_PIN F3 [get_ports sclk]
set_property IOSTANDARD LVCMOS33 [get_ports sclk]

