`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/24 23:24:00
// Design Name: 
// Module Name: Lab06_clk_odd
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


module Lab06_clk_odd(
    //input 
    clk,
    //output
    signal
    );
    input clk;
    output signal;
    reg [15:0] seq = 0;
    reg [4:0] out = 0;
    reg valid = 0;
    always @ (posedge clk) 
        seq <= seq + 1;
    always @ (seq[15])begin
            if (out >= 24) begin
                valid <= ~valid;
                out <= 0;
            end
            else begin
                out <= out + 1;
            end
    end
    assign signal = valid;
endmodule