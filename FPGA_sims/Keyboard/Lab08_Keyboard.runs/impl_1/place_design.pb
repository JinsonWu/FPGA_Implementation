
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
42default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2191.3522default:default2
0.0002default:default2
3402default:default2
12002default:defaultZ17-722h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 136ff5625
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 340 ; free virtual = 12002default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2191.3522default:default2
0.0002default:default2
3402default:default2
12002default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 130213796
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.57 ; elapsed = 00:00:00.41 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 324 ; free virtual = 11842default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 1f1e41aba
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.59 ; elapsed = 00:00:00.42 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 324 ; free virtual = 11842default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 1f1e41aba
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.59 ; elapsed = 00:00:00.42 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 324 ; free virtual = 11842default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 1f1e41aba
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.59 ; elapsed = 00:00:00.42 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 324 ; free virtual = 11842default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 1f1e41aba
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.60 ; elapsed = 00:00:00.43 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 322 ; free virtual = 11822default:defaulth px? 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px? 
D
/Phase 2 Global Placement | Checksum: 1fed57f57
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.95 ; elapsed = 00:00:00.59 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 312 ; free virtual = 11722default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1fed57f57
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.95 ; elapsed = 00:00:00.59 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 312 ; free virtual = 11722default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1c64ea6dc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.96 ; elapsed = 00:00:00.60 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 312 ; free virtual = 11722default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1b5b5aabe
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.97 ; elapsed = 00:00:00.61 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 312 ; free virtual = 11722default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1b5b5aabe
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.98 ; elapsed = 00:00:00.61 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 312 ; free virtual = 11722default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 2aa1b5efb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.74 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 309 ; free virtual = 11692default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 2aa1b5efb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.74 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 309 ; free virtual = 11692default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 2aa1b5efb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.74 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 309 ; free virtual = 11692default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 2aa1b5efb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.74 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 309 ; free virtual = 11692default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 2aa1b5efb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 309 ; free virtual = 11692default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 2aa1b5efb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 311 ; free virtual = 11712default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 2aa1b5efb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 311 ; free virtual = 11712default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2191.3522default:default2
0.0002default:default2
3112default:default2
11712default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 269f678ff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 311 ; free virtual = 11712default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 269f678ff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.75 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 311 ; free virtual = 11712default:defaulth px? 
>
)Ending Placer Task | Checksum: 1a49fe184
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.76 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 321 ; free virtual = 11812default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
452default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2191.3522default:default2
0.0002default:default2
3212default:default2
11812default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.032default:default2
00:00:00.012default:default2
2191.3522default:default2
0.0002default:default2
3202default:default2
11812default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2191.3522default:default2
0.0002default:default2
3222default:default2
11832default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2k
W/home/jinson/vivado/Lab08_Keyboard/Lab08_Keyboard.runs/impl_1/Lab08_Keyboard_placed.dcp2default:defaultZ17-1381h px? 
i
%s4*runtcl2M
9Executing : report_io -file Lab08_Keyboard_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.08 ; elapsed = 00:00:00.13 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 315 ; free virtual = 1175
*commonh px? 
?
%s4*runtcl2?
tExecuting : report_utilization -file Lab08_Keyboard_utilization_placed.rpt -pb Lab08_Keyboard_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2j
VExecuting : report_control_sets -verbose -file Lab08_Keyboard_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.09 . Memory (MB): peak = 2191.352 ; gain = 0.000 ; free physical = 322 ; free virtual = 1182
*commonh px? 


End Record