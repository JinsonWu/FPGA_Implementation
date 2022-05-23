`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/02 12:57:45
// Design Name: 
// Module Name: Lab07_timer
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


module Lab07_timer(
    //input
    clk,
    switch,
    //output
    an,
    timer,
    dp
    );
    input clk;
    input switch;
    output reg [7:0] an;
    output reg [6:0] timer;
    output reg dp;
    
    reg [26:0] count;
    reg [2:0] a;
    reg [26:0] b;
    reg [6:0] num_0 = 7'b1000000,num_1 = 7'b1111001,num_2 = 7'b0100100,num_3 = 7'b0110000,num_4 = 7'b0011001,num_5 = 7'b0010010,num_6 = 7'b0000010,num_7 = 7'b1111000,num_8 = 7'b0000000,num_9 = 7'b0010000;
    reg [6:0] num_x = 7'b1111111;
    reg [7:0] c;
    
    assign dp = 1;
    
    always @ (posedge clk) begin
        count <= count + 1;
    end
    
    always @ (posedge count[10]) begin
        a <= a + 1;
        case (a)
            0 : begin
                    an <= 8'b01111111;
                    case (b%10)
                        0 : timer <= num_0;
                        1 : timer <= num_1;
                        2 : timer <= num_2;
                        3 : timer <= num_3;
                        4 : timer <= num_4;
                        5 : timer <= num_5;
                        6 : timer <= num_6;
                        7 : timer <= num_7;
                        8 : timer <= num_8;
                        9 : timer <= num_9;
                            default : timer <= num_x;
                    endcase
                end 
            1 : begin
                    an <= 8'b10111111;
                    if (b % 60 < 10) timer <= num_0;
                    else if (b % 60 < 20) timer <= num_1;
                    else if (b % 60 < 30) timer <= num_2;
                    else if (b % 60 < 40) timer <= num_3;
                    else if (b % 60 < 50) timer <= num_4;
                    else timer <= num_5;
                end
            2 : begin
                    an <= 8'b11011111;
                    timer <= 7'b0111111;
                end
            3 : begin
                    an <= 8'b11101111;
                    if (b % 600 < 60) timer <= num_0;
                    else if (b % 600 < 120) timer <= num_1;
                    else if (b % 600 < 180) timer <= num_2;
                    else if (b % 600 < 240) timer <= num_3;
                    else if (b % 600 < 300) timer <= num_4;
                    else if (b % 600 < 360) timer <= num_5;
                    else if (b % 600 < 420) timer <= num_6;
                    else if (b % 600 < 480) timer <= num_7;
                    else if (b % 600 < 540) timer <= num_8;
                    else timer <= num_9;
                    
                end
            4 : begin 
                    an <= 8'b11110111;
                    if (b % 3600 < 600) timer <= num_0;
                    else if (b % 3600 < 1200) timer <= num_1;
                    else if (b % 3600 < 1800) timer <= num_2;
                    else if (b % 3600 < 2400) timer <= num_3;
                    else if (b % 3600 < 3000) timer <= num_4;
                    else timer <= num_5;
                end
            5 : begin
                    an <= 8'b11111011;
                    timer <= 7'b0111111;
                end
            6 : begin
                    an <= 8'b11111101;
                    if (b % 36000 < 3600) timer <= num_0;
                    else if (b % 36000 < 7200) timer <= num_1;
                    else if (b % 36000 < 10800) timer <= num_2;
                    else if (b % 36000 < 14400) timer <= num_3;
                    else if (b % 36000 < 18000) timer <= num_4;
                    else if (b % 36000 < 21600) timer <= num_5;
                    else if (b % 36000 < 25200) timer <= num_6;
                    else if (b % 36000 < 28800) timer <= num_7;
                    else if (b % 36000 < 32400) timer <= num_8;
                    else timer <= num_9;
                end
            7 : begin   
                    an <= 8'b11111110;
                    if (b % 86400 < 36000) timer <= num_0;
                    else if (b % 86400 < 72000) timer <=num_1;
                    else timer <= num_2;
                end
        endcase
    end
    
    always @ (posedge count [19]) begin
        if (b != 86400) begin
            if (switch)
                b <= b + 1;
            else begin
                if (c == 80) begin
                    b <= b + 1;
                    c <= 0;
                end
                else begin
                    c <= c + 1;
                    b <= b;
                end
            end
        end
        else 
            b <= 0;
    end
    
//    always @ (posedge count [26])begin
//        if (~switch)
//            b <= b + 1;
//        else
//            b <= b;
//    end
endmodule
