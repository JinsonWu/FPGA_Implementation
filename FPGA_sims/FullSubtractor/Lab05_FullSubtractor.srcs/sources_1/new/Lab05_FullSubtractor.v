`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2019 12:43:55 PM
// Design Name: 
// Module Name: Lab05_FullSubtractor
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


module Lab05_FullSubtractor(
//input
X,
Y,
Bin,
//output
D,
Bout,
);

input X,Y,Bin;
output D,Bout;

assign D = ((X^Y)^Bin);
assign Bout = ((~X&Y)|(Bin&(~(X^Y))));

endmodule
