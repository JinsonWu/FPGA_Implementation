`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/24 17:01:16
// Design Name: 
// Module Name: Lab06_clk
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


module Lab06_clk(
    //input
    clk,
    //output
    signal
);
    input clk;
    output signal;
    reg [15:0] seq; 
    reg out;   
    //frequency to 100M Hz
    always @ (posedge clk)begin
        seq <= seq + 1;
        out <= (seq[15]) ? 1 : 0;
    end
    assign signal = out; 
endmodule
