`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2019 04:05:44 PM
// Design Name: 
// Module Name: Mux_2
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


module Mux_2(
//input 
in1,
in2,
in3,
in4,
in5,
sel,
//output 
out,
);

input in1,in2,in3,in4,in5;
input [2:0]sel;
output out;
reg out_r;
always @(*)  begin
    case(sel)
    0:out_r=in1;
    1:out_r=in2;
    2:out_r=in3;
    3:out_r=in4;
    4:out_r=in5;
        default out_r = in1;
    endcase
end
assign out = out_r;
endmodule
