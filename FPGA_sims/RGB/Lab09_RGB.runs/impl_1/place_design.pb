
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
2168.1482default:default2
0.0002default:default2
1172default:default2
19102default:defaultZ17-722h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 15d4340d4
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2168.148 ; gain = 0.000 ; free physical = 117 ; free virtual = 19102default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2168.1482default:default2
0.0002default:default2
1172default:default2
19102default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 0b66a266
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.62 ; elapsed = 00:00:00.50 . Memory (MB): peak = 2168.148 ; gain = 0.000 ; free physical = 106 ; free virtual = 18922default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
O
:Phase 1.3 Build Placer Netlist Model | Checksum: ea26fded
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.67 ; elapsed = 00:00:00.56 . Memory (MB): peak = 2168.148 ; gain = 0.000 ; free physical = 105 ; free virtual = 18922default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
L
7Phase 1.4 Constrain Clocks/Macros | Checksum: ea26fded
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.67 ; elapsed = 00:00:00.56 . Memory (MB): peak = 2168.148 ; gain = 0.000 ; free physical = 105 ; free virtual = 18922default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: ea26fded
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.67 ; elapsed = 00:00:00.56 . Memory (MB): peak = 2168.148 ; gain = 0.000 ; free physical = 105 ; free virtual = 18922default:defaulth px? 
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
B
-Phase 2.1 Floorplanning | Checksum: ea26fded
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.68 ; elapsed = 00:00:00.58 . Memory (MB): peak = 2168.148 ; gain = 0.000 ; free physical = 102 ; free virtual = 18902default:defaulth px? 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px? 
C
.Phase 2 Global Placement | Checksum: 70ee789c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2168.148 ; gain = 0.000 ; free physical = 117 ; free virtual = 18742default:defaulth px? 
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
O
:Phase 3.1 Commit Multi Column Macros | Checksum: 70ee789c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2168.148 ; gain = 0.000 ; free physical = 117 ; free virtual = 18742default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
Q
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 5ae52e92
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2171.156 ; gain = 3.008 ; free physical = 116 ; free virtual = 18742default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
K
6Phase 3.3 Area Swap Optimization | Checksum: ac5f9e95
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2171.156 ; gain = 3.008 ; free physical = 116 ; free virtual = 18742default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
S
>Phase 3.4 Pipeline Register Optimization | Checksum: ac5f9e95
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2171.156 ; gain = 3.008 ; free physical = 116 ; free virtual = 18742default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
Q
<Phase 3.5 Small Shape Detail Placement | Checksum: f4bc261b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2176.531 ; gain = 8.383 ; free physical = 112 ; free virtual = 18712default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
G
2Phase 3.6 Re-assign LUT pins | Checksum: f4bc261b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2176.531 ; gain = 8.383 ; free physical = 112 ; free virtual = 18712default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
S
>Phase 3.7 Pipeline Register Optimization | Checksum: f4bc261b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2176.531 ; gain = 8.383 ; free physical = 112 ; free virtual = 18712default:defaulth px? 
C
.Phase 3 Detail Placement | Checksum: f4bc261b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2176.531 ; gain = 8.383 ; free physical = 112 ; free virtual = 18712default:defaulth px? 
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
M
8Phase 4.1 Post Commit Optimization | Checksum: f4bc261b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2176.531 ; gain = 8.383 ; free physical = 112 ; free virtual = 18712default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
K
6Phase 4.2 Post Placement Cleanup | Checksum: f4bc261b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2176.531 ; gain = 8.383 ; free physical = 114 ; free virtual = 18732default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
E
0Phase 4.3 Placer Reporting | Checksum: f4bc261b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2176.531 ; gain = 8.383 ; free physical = 114 ; free virtual = 18732default:defaulth px? 
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
2176.5312default:default2
0.0002default:default2
1142default:default2
18732default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1c5b0b5bd
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2176.531 ; gain = 8.383 ; free physical = 114 ; free virtual = 18732default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1c5b0b5bd
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2176.531 ; gain = 8.383 ; free physical = 114 ; free virtual = 18732default:defaulth px? 
>
)Ending Placer Task | Checksum: 1babf6fc4
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2176.531 ; gain = 8.383 ; free physical = 123 ; free virtual = 18822default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
412default:default2
42default:default2
32default:default2
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
2176.5312default:default2
0.0002default:default2
1232default:default2
18822default:defaultZ17-722h px? 
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
00:00:00.142default:default2
00:00:00.042default:default2
2176.5312default:default2
0.0002default:default2
1192default:default2
18802default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2176.5312default:default2
0.0002default:default2
1222default:default2
18832default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2\
H/home/jinson/vivado/Lab09_RGB/Lab09_RGB.runs/impl_1/Lab09_RGB_placed.dcp2default:defaultZ17-1381h px? 
d
%s4*runtcl2H
4Executing : report_io -file Lab09_RGB_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.09 ; elapsed = 00:00:00.12 . Memory (MB): peak = 2176.531 ; gain = 0.000 ; free physical = 117 ; free virtual = 1876
*commonh px? 
?
%s4*runtcl2~
jExecuting : report_utilization -file Lab09_RGB_utilization_placed.rpt -pb Lab09_RGB_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2e
QExecuting : report_control_sets -verbose -file Lab09_RGB_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.05 ; elapsed = 00:00:00.09 . Memory (MB): peak = 2176.531 ; gain = 0.000 ; free physical = 124 ; free virtual = 1883
*commonh px? 


End Record