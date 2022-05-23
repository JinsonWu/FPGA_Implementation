`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/25 19:09:45
// Design Name: 
// Module Name: Lab06_clk_a
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


module Lab06_clk_a(
    //input 
    clk,
    //output
    signal
    );
    
    input clk;
    output reg signal;
    
    reg [14:0] seq;
    reg [4:0] out;
    
//    initial begin
//        signal <= 0;
//        seq <= 0;
//        out <= 0;
//    end
    
    always @ (posedge clk) begin 
        seq <= seq + 1;
    end
    
    always @(posedge seq[14])begin
            if (out == 24)begin
                signal <= ~signal;
                out <= 0;
            end
            else 
                out <= out + 1; 
    end
    
endmodule
