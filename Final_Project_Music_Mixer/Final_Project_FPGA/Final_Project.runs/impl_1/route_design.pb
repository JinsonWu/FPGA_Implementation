
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: d9ee4dbc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:44 ; elapsed = 00:00:47 . Memory (MB): peak = 2305.207 ; gain = 69.676 ; free physical = 107 ; free virtual = 7862default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
A
,Phase 2.1 Create Timer | Checksum: d9ee4dbc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:46 ; elapsed = 00:00:49 . Memory (MB): peak = 2393.203 ; gain = 157.672 ; free physical = 121 ; free virtual = 7392default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: d9ee4dbc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:46 ; elapsed = 00:00:49 . Memory (MB): peak = 2402.203 ; gain = 166.672 ; free physical = 112 ; free virtual = 7312default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: d9ee4dbc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:46 ; elapsed = 00:00:49 . Memory (MB): peak = 2402.203 ; gain = 166.672 ; free physical = 112 ; free virtual = 7312default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
B
-Phase 2.4 Update Timing | Checksum: ed06922e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:58 ; elapsed = 00:01:01 . Memory (MB): peak = 2435.469 ; gain = 199.938 ; free physical = 134 ; free virtual = 7182default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=99.746 | TNS=0.000  | WHS=0.446  | THS=0.000  |
2default:defaultZ35-416h px? 
H
3Phase 2 Router Initialization | Checksum: dc8892ad
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:00 ; elapsed = 00:01:04 . Memory (MB): peak = 2446.469 ; gain = 210.938 ; free physical = 150 ; free virtual = 7182default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 1dd666d02
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:11 ; elapsed = 00:01:16 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 189 ; free virtual = 7082default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=99.592 | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1ab3b9f51
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:19 ; elapsed = 00:01:25 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 189 ; free virtual = 7082default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1ab3b9f51
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:19 ; elapsed = 00:01:25 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 189 ; free virtual = 7082default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1ab3b9f51
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:19 ; elapsed = 00:01:25 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 189 ; free virtual = 7082default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1ab3b9f51
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:19 ; elapsed = 00:01:25 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 189 ; free virtual = 7082default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1ab3b9f51
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:19 ; elapsed = 00:01:25 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 189 ; free virtual = 7082default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 6.1.1 Update Timing | Checksum: ee962147
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:20 ; elapsed = 00:01:26 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 186 ; free virtual = 7052default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=99.688 | TNS=0.000  | WHS=0.788  | THS=0.000  |
2default:defaultZ35-416h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: ee962147
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:20 ; elapsed = 00:01:26 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 186 ; free virtual = 7052default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: ee962147
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:20 ; elapsed = 00:01:26 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 186 ; free virtual = 7052default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
A
,Phase 7 Route finalize | Checksum: ee962147
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:20 ; elapsed = 00:01:26 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 186 ; free virtual = 7052default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
H
3Phase 8 Verifying routed nets | Checksum: ee962147
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:20 ; elapsed = 00:01:26 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 185 ; free virtual = 7042default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
D
/Phase 9 Depositing Routes | Checksum: f780b5e5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:21 ; elapsed = 00:01:27 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 186 ; free virtual = 7052default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=99.688 | TNS=0.000  | WHS=0.788  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
F
1Phase 10 Post Router Timing | Checksum: f780b5e5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:21 ; elapsed = 00:01:27 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 188 ; free virtual = 7072default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:21 ; elapsed = 00:01:27 . Memory (MB): peak = 2495.512 ; gain = 259.980 ; free physical = 204 ; free virtual = 7232default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
672default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:01:242default:default2
00:01:312default:default2
2495.5122default:default2
259.9802default:default2
2042default:default2
7232default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2495.5122default:default2
0.0002default:default2
2042default:default2
7232default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2495.5122default:default2
0.0002default:default2
1932default:default2
7212default:defaultZ17-722h px? 
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
00:00:022default:default2
00:00:022default:default2
2495.5122default:default2
0.0002default:default2
1802default:default2
7212default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2s
_/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.runs/impl_1/Final_Project_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
|Executing : report_drc -file Final_Project_drc_routed.rpt -pb Final_Project_drc_routed.pb -rpx Final_Project_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
oreport_drc -file Final_Project_drc_routed.rpt -pb Final_Project_drc_routed.pb -rpx Final_Project_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
c/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.runs/impl_1/Final_Project_drc_routed.rptc/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.runs/impl_1/Final_Project_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:062default:default2
00:00:072default:default2
2535.5312default:default2
40.0202default:default2
1962default:default2
7192default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file Final_Project_methodology_drc_routed.rpt -pb Final_Project_methodology_drc_routed.pb -rpx Final_Project_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file Final_Project_methodology_drc_routed.rpt -pb Final_Project_methodology_drc_routed.pb -rpx Final_Project_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
o/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.runs/impl_1/Final_Project_methodology_drc_routed.rpto/home/lo-yu-chen/Vivado/2018.3/Final_Project/Final_Project.runs/impl_1/Final_Project_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2(
report_methodology: 2default:default2
00:00:212default:default2
00:00:252default:default2
2535.5312default:default2
0.0002default:default2
1222default:default2
6472default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_power -file Final_Project_power_routed.rpt -pb Final_Project_power_summary_routed.pb -rpx Final_Project_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
report_power -file Final_Project_power_routed.rpt -pb Final_Project_power_summary_routed.pb -rpx Final_Project_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
792default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
report_power: 2default:default2
00:00:072default:default2
00:00:072default:default2
2535.5312default:default2
0.0002default:default2
1252default:default2
6382default:defaultZ17-722h px? 
?
%s4*runtcl2{
gExecuting : report_route_status -file Final_Project_route_status.rpt -pb Final_Project_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file Final_Project_timing_summary_routed.rpt -pb Final_Project_timing_summary_routed.pb -rpx Final_Project_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
%s4*runtcl2j
VExecuting : report_incremental_reuse -file Final_Project_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2j
VExecuting : report_clock_utilization -file Final_Project_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file Final_Project_bus_skew_routed.rpt -pb Final_Project_bus_skew_routed.pb -rpx Final_Project_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record