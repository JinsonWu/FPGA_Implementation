`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2019 03:12:19 PM
// Design Name: 
// Module Name: Lab05_Display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Lab05_Display(
//input
in0,
in1,
in2,
in3,
dp,
an0,
an1,
an2,
an3,
an4,
an5,
an6,
an7,
//output
out_dp,
s0,
s1,
s2,
s3,
s4,
s5,
s6,
s7,
ca,
cb,
cc,
cd,
ce,
cf,
cg,
    );
input in0,in1,in2,in3;
input dp;
input an0,an1,an2,an3,an4,an5,an6,an7;
output s0,s1,s2,s3,s4,s5,s6,s7;
output out_dp;
output ca,cb,cc,cd,ce,cf,cg;

assign s0 = ~an0;
assign s1 = ~an1;
assign s2 = ~an2;
assign s3 = ~an3;
assign s4 = ~an4;
assign s5 = ~an5;
assign s6 = ~an6;
assign s7 = ~an7;
assign out_dp = ~dp;     

assign ca = (~in3 & ~in2 & ~in1 & in0) | (in2 & ~in1 & ~in0) | (in3 & in1);
assign cb = (in2 & ~in1 & in0) | (in2 & in1 & ~in0) | (in3 & in1);
assign cc = (~in2 & in1 & ~in0) | (in3 & in2);
assign cd = (~in3 & ~in2 & ~in1 & in0) | ( in2 & ~in1 & ~in0) | (in2 & in1 & in0);
assign ce = in0 | (in2 & ~in1);
assign cf = (~in3 & ~in2 & in0) | (~in2 & in1) | ( in3 & in1 & in0);
assign cg = (~in3 & ~in2 & ~in1) | ( in2 & in1 & in0);

endmodule
