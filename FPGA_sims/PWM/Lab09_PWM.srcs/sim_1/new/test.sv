`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/13 01:49:28
// Design Name: 
// Module Name: test
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


module test(
    //input
    clk,
    rst_n,
    buttom,
    //output
    cycle
    );
output reg clk,rst_n;
output regv[6:0] buttom;
input cycle;
integer CYCLE = 10;

always #(CYCLE/2.0) clk = ~clk;

initial begin
    rst_n = 1'b0;
    buttom = 7'b0;
    @(negedge clk);
    rst_n = 1'b0;
    repeat (100) @ (negedge clk);
    buttom = 7'b1000000;
    repeat (100) @ (negedge clk);
    buttom = 7'b0100000;
    repeat (100) @ (negedge clk);
    buttom = 7'b0010000;
    repeat (100) @ (negedge clk);
    buttom = 7'b0001000;
    repeat (100) @ (negedge clk);
    buttom = 7'b0000100;
    repeat (100) @ (negedge clk);
    buttom = 7'b0000010;
    repeat (100) @ (negedge clk);
    buttom = 7'b0000001;
    @(negedge clk);
    buttom = 7'b0000000;
end
endmodule
    
