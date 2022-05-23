set_property IOSTANDARD LVCMOS33 [get_ports {light[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {light[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {light[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {light[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports correction]
set_property IOSTANDARD LVCMOS33 [get_ports data_in]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
set_property DRIVE 12 [get_ports {light[3]}]
set_property DRIVE 12 [get_ports {light[2]}]
set_property DRIVE 12 [get_ports {light[1]}]
set_property DRIVE 12 [get_ports {light[0]}]
set_property DRIVE 12 [get_ports correction]
set_property SLEW SLOW [get_ports {light[3]}]
set_property SLEW SLOW [get_ports {light[2]}]
set_property SLEW SLOW [get_ports {light[1]}]
set_property SLEW SLOW [get_ports {light[0]}]
set_property SLEW SLOW [get_ports correction]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property PACKAGE_PIN V11 [get_ports {light[3]}]
set_property PACKAGE_PIN V12 [get_ports {light[2]}]
set_property PACKAGE_PIN V14 [get_ports {light[1]}]
set_property PACKAGE_PIN V15 [get_ports {light[0]}]
set_property PACKAGE_PIN D14 [get_ports clk]
set_property PACKAGE_PIN F16 [get_ports data_in]
set_property PACKAGE_PIN H17 [get_ports correction]
set_property PACKAGE_PIN H17 [get_ports rst_n]

