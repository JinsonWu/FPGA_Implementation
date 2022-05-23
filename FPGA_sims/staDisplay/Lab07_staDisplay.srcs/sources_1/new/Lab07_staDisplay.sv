`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/29 10:27:19
// Design Name: 
// Module Name: Lab07_staDisplay
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


module Lab07_staDisplay(
    //input
    clk,
    //output
    an,
    date,
    dp
    );
    input clk;
    output reg [7:0] an;
    output reg [6:0] date;
    output reg dp;
    
    reg [13:0] count;
    reg [3:0] switch;
    
    always_ff @ (posedge clk) begin
        count <= count + 1;
    end
    always_ff @ (posedge count [13])begin //setting the frequency
        switch <= switch + 1;
        case (switch % 8)
            0 : begin
                    date <= 7'b0100100;
                    an <= 8'b01111111;
                end
            1 : begin
                    date <= 7'b1000000;
                    an <= 8'b10111111;
                end
            2 : begin
                    date <= 7'b1111001;
                    an <= 8'b11011111;
                end
            3 : begin
                    date <= 7'b0010000;
                    an <= 8'b11101111;
                end
            4 : begin
                    date <= 7'b1000000;
                    an <= 8'b11110111;
                end
            5 : begin
                    date <= 7'b0010010;
                    an <= 8'b11111011;
                end
            6 : begin
                    date <= 7'b1000000;
                    an <= 8'b11111101;
                end
            7 : begin
                    date <= 7'b0100100;
                    an <= 8'b11111110;
                end
                default : begin
                             date <= 7'b0000000;
                             an <= 8'b11111111;
                          end
        endcase 
    end
    assign dp = 1;     
endmodule
