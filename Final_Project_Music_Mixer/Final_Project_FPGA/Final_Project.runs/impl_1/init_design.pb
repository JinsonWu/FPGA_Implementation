
z
Command: %s
53*	vivadotcl2I
5link_design -top Final_Project -part xc7a100tcsg324-12default:defaultZ4-113h px? 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px? 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2z
f/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/sources_1/ip/xadc_wiz_0/xadc_wiz_0.dcp2default:default2
XADC2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2x
d/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp2default:default2
clk_8M2default:defaultZ1-454h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2?
n/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp2default:default2%
delay_module/SRAM2default:defaultZ1-454h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
18842default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px? 
?
?Netlist '%s' is not ideal for floorplanning, since the cellview '%s' defined in file '%s' contains large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
43*netlist2!
Final_Project2default:default2)
dist_mem_gen_0__spram2default:default2&
dist_mem_gen_0.edf2default:defaultZ29-43h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2018.32default:defaultZ1-479h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt2,
clk_8M/inst/clkin1_ibufg2default:default2
clk2default:defaultZ31-35h px? 
?
?Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2$
clk_8M/clk_in12default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
j/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2default:default2!
clk_8M/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
j/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2default:default2!
clk_8M/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2z
d/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2!
clk_8M/inst	2default:default8Z20-848h px? 
?
%Done setting XDC timing constraints.
35*timing2z
d/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2
572default:default8@Z38-35h px? 
?
Deriving generated clocks
2*timing2z
d/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2
572default:default8@Z38-2h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
get_clocks: 2default:default2
00:00:122default:default2
00:00:142default:default2
2096.8792default:default2
491.5082default:default2
2702default:default2
10182default:defaultZ17-722h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2z
d/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2default:default2!
clk_8M/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2|
f/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/sources_1/ip/xadc_wiz_0/xadc_wiz_0.xdc2default:default2
	XADC/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2|
f/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/sources_1/ip/xadc_wiz_0/xadc_wiz_0.xdc2default:default2
	XADC/inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2u
_/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/constrs_1/new/Final_Project.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2u
_/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.srcs/constrs_1/new/Final_Project.xdc2default:default8Z20-178h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2096.8792default:default2
0.0002default:default2
2962default:default2
10452default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 1536 instances were transformed.
  RAM256X1S => RAM256X1S (MUXF7, MUXF7, MUXF8, RAMS64E, RAMS64E, RAMS64E, RAMS64E): 1536 instances
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
122default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px? 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2!
link_design: 2default:default2
00:00:212default:default2
00:00:252default:default2
2096.8792default:default2
709.3792default:default2
2962default:default2
10452default:defaultZ17-722h px? 


End Record