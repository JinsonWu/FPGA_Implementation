set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports signal]
set_property DRIVE 12 [get_ports signal]
set_property SLEW SLOW [get_ports signal]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property PACKAGE_PIN C17 [get_ports signal]
set_property PACKAGE_PIN E3 [get_ports clk]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets <myHier/myNet>]