`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2019 11:04:12 AM
// Design Name: 
// Module Name: Lab05_Fulladder
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


module Lab05_Fulladder(
//input
A,
B,
Cin,
//output
S,
Cout    
    );
input A,B,Cin;
output S,Cout;
    assign S = ((A^B)^Cin);
    assign Cout = (((A^B)&Cin)|(A&B));
    
    
endmodule

