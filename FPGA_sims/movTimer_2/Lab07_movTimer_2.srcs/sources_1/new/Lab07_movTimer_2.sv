`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/02 14:28:03
// Design Name: 
// Module Name: Lab07_movTimer
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


module Lab07_movTimer_2(
    //input,
    clk,
    switch,
    switch_1,
    switch_2,
    sta,
    //output
    an,
    num,
    dp
    );
    input clk;
    input switch;
    input switch_1;
    input switch_2;
    input sta;
    output reg [7:0] an;
    output reg [6:0] num;
    output dp;
    
    reg [26:0]count;
    reg signed [5:0] a;
    reg [6:0] c;
    reg [8:0] e;
    reg [2:0] b;
    reg [6:0] num_0 = 7'b1000000,num_1 = 7'b1111001,num_2 = 7'b0100100,num_3 = 7'b0110000,num_4 = 7'b0011001,num_5 = 7'b0010010,num_6 = 7'b0000010,num_7 = 7'b1111000,num_8 = 7'b0000000,num_9 = 7'b0010000;
    reg [6:0] num_x = 7'b1111111,num_ = 7'b0111111;
    reg [26:0] d;
    
    always @ (posedge clk) begin
        count <= count + 1;
    end
    always @ (posedge count [13])begin
        b <= b + 1;
        case (a)
            0 : begin
                    case (b)
                        0 : begin 
                                num <= num_2;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_0;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_1;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_9;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_0;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_5;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                      endcase
                end
               
            1 : begin
                    case (b)
                        0 : begin 
                                num <= num_x;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_2;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_0;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_1;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_9;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_0;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                num <= num_5;
                                an <= 8'b11111110;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                      endcase
                end
               
            2 : begin
                    case (b)
                        0 : begin 
                                an <= 8'b01111111;
                                case (d%10)
                                    0 : num <= num_0;
                                    1 : num <= num_1;
                                    2 : num <= num_2;
                                    3 : num <= num_3;
                                    4 : num <= num_4;
                                    5 : num <= num_5;
                                    6 : num <= num_6;
                                    7 : num <= num_7;
                                    8 : num <= num_8;
                                    9 : num <= num_9;
                                        default : num <= num_x;
                                endcase
                            end
                        1 : begin
                                num <= num_x;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_2;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_0;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_1;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_9;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_0;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
               
            3 : begin
                    case (b)
                        0 : begin 
                                an <= 8'b01111111;
                                if (d % 60 < 10) num <= num_0;
                                else if (d % 60 < 20) num <= num_1;
                                else if (d % 60 < 30) num <= num_2;
                                else if (d % 60 < 40) num <= num_3;
                                else if (d % 60 < 50) num <= num_4;
                                else num <= num_5;
                            end
                        1 : begin
                                an <= 8'b10111111;
                                case (d%10)
                                    0 : num <= num_0;
                                    1 : num <= num_1;
                                    2 : num <= num_2;
                                    3 : num <= num_3;
                                    4 : num <= num_4;
                                    5 : num <= num_5;
                                    6 : num <= num_6;
                                    7 : num <= num_7;
                                    8 : num <= num_8;
                                    9 : num <= num_9;
                                        default : num <= num_x;
                                endcase
                            end
                        2 : begin
                                num <= num_x;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_2;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_0;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_1;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_9;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end

            4 : begin
                    case (b)
                        0 : begin 
                                an <= 8'b01111111;
                                num <= num_;
                            end
                        1 : begin
                                an <= 8'b10111111;
                                if (d % 60 < 10) num <= num_0;
                                else if (d % 60 < 20) num <= num_1;
                                else if (d % 60 < 30) num <= num_2;
                                else if (d % 60 < 40) num <= num_3;
                                else if (d % 60 < 50) num <= num_4;
                                else num <= num_5;
                            end
                        2 : begin
                                an <= 8'b11011111;
                                case (d%10)
                                    0 : num <= num_0;
                                    1 : num <= num_1;
                                    2 : num <= num_2;
                                    3 : num <= num_3;
                                    4 : num <= num_4;
                                    5 : num <= num_5;
                                    6 : num <= num_6;
                                    7 : num <= num_7;
                                    8 : num <= num_8;
                                    9 : num <= num_9;
                                        default : num <= num_x;
                                endcase
                            end
                        3 : begin
                                num <= num_x;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_2;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_0;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_1;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_9;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
               
            5 : begin
                    case (b)
                        0 : begin 
                                an <= 8'b01111111;
                                if (d % 600 < 60) num <= num_0;
                                else if (d % 600 < 120) num <= num_1;
                                else if (d % 600 < 180) num <= num_2;
                                else if (d % 600 < 240) num <= num_3;
                                else if (d % 600 < 300) num <= num_4;
                                else if (d % 600 < 360) num <= num_5;
                                else if (d % 600 < 420) num <= num_6;
                                else if (d % 600 < 480) num <= num_7;
                                else if (d % 600 < 540) num <= num_8;
                                else num <= num_9;
                            end
                        1 : begin
                                an <= 8'b10111111;
                                num <= num_;
                            end
                        2 : begin
                                an <= 8'b11011111;
                                if (d % 60 < 10) num <= num_0;
                                else if (d % 60 < 20) num <= num_1;
                                else if (d % 60 < 30) num <= num_2;
                                else if (d % 60 < 40) num <= num_3;
                                else if (d % 60 < 50) num <= num_4;
                                else num <= num_5;
                            end
                        3 : begin
                                an <= 8'b11101111;
                                case (d%10)
                                    0 : num <= num_0;
                                    1 : num <= num_1;
                                    2 : num <= num_2;
                                    3 : num <= num_3;
                                    4 : num <= num_4;
                                    5 : num <= num_5;
                                    6 : num <= num_6;
                                    7 : num <= num_7;
                                    8 : num <= num_8;
                                    9 : num <= num_9;
                                        default : num <= num_x;
                                endcase
                            end
                        4 : begin
                                num <= num_x;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_2;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_0;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_1;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
               
            6 : begin
                    case (b)
                        0 : begin
                                an <= 8'b01111111;
                                if (d % 3600 < 600) num <= num_0;
                                else if (d % 3600 < 1200) num <= num_1;
                                else if (d % 3600 < 1800) num <= num_2;
                                else if (d % 3600 < 2400) num <= num_3;
                                else if (d % 3600 < 3000) num <= num_4;
                                else num <= num_5;
                            end
                        1 : begin
                                an <= 8'b10111111;
                                if (d % 600 < 60) num <= num_0;
                                else if (d % 600 < 120) num <= num_1;
                                else if (d % 600 < 180) num <= num_2;
                                else if (d % 600 < 240) num <= num_3;
                                else if (d % 600 < 300) num <= num_4;
                                else if (d % 600 < 360) num <= num_5;
                                else if (d % 600 < 420) num <= num_6;
                                else if (d % 600 < 480) num <= num_7;
                                else if (d % 600 < 540) num <= num_8;
                                else num <= num_9;
                            end
                        2 : begin
                                an <= 8'b11011111;
                                num <= num_;
                            end
                        3 : begin
                                an <= 8'b11101111;
                                if (d % 60 < 10) num <= num_0;
                                else if (d % 60 < 20) num <= num_1;
                                else if (d % 60 < 30) num <= num_2;
                                else if (d % 60 < 40) num <= num_3;
                                else if (d % 60 < 50) num <= num_4;
                                else num <= num_5;
                            end
                        4 : begin
                                an <= 8'b11110111;
                                case (d%10)
                                    0 : num <= num_0;
                                    1 : num <= num_1;
                                    2 : num <= num_2;
                                    3 : num <= num_3;
                                    4 : num <= num_4;
                                    5 : num <= num_5;
                                    6 : num <= num_6;
                                    7 : num <= num_7;
                                    8 : num <= num_8;
                                    9 : num <= num_9;
                                        default : num <= num_x;
                                endcase
                            end
                        5 : begin
                                num <= num_x;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_2;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_0;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
               
            7 : begin
                    case (b)
                        0 : begin 
                                num <= num_;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                an <= 8'b10111111;
                                if (d % 3600 < 600) num <= num_0;
                                else if (d % 3600 < 1200) num <= num_1;
                                else if (d % 3600 < 1800) num <= num_2;
                                else if (d % 3600 < 2400) num <= num_3;
                                else if (d % 3600 < 3000) num <= num_4;
                                else num <= num_5;
                            end
                        2 : begin
                                an <= 8'b11011111;
                                if (d % 600 < 60) num <= num_0;
                                else if (d % 600 < 120) num <= num_1;
                                else if (d % 600 < 180) num <= num_2;
                                else if (d % 600 < 240) num <= num_3;
                                else if (d % 600 < 300) num <= num_4;
                                else if (d % 600 < 360) num <= num_5;
                                else if (d % 600 < 420) num <= num_6;
                                else if (d % 600 < 480) num <= num_7;
                                else if (d % 600 < 540) num <= num_8;
                                else num <= num_9;
                            end
                        3 : begin
                                an <= 8'b11101111;
                                num <= num_;
                            end
                        4 : begin
                                an <= 8'b11110111;
                                if (d % 60 < 10) num <= num_0;
                                else if (d % 60 < 20) num <= num_1;
                                else if (d % 60 < 30) num <= num_2;
                                else if (d % 60 < 40) num <= num_3;
                                else if (d % 60 < 50) num <= num_4;
                                else num <= num_5;
                            end
                        5 : begin
                                an <= 8'b11111011;
                                case (d%10)
                                    0 : num <= num_0;
                                    1 : num <= num_1;
                                    2 : num <= num_2;
                                    3 : num <= num_3;
                                    4 : num <= num_4;
                                    5 : num <= num_5;
                                    6 : num <= num_6;
                                    7 : num <= num_7;
                                    8 : num <= num_8;
                                    9 : num <= num_9;
                                        default : num <= num_x;
                                endcase
                            end
                        6 : begin
                                num <= num_x;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_2;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
               
            8 : begin
                    case (b)
                        0 : begin 
                                an <= 8'b01111111;
                                if (d % 36000 < 3600) num <= num_0;
                                else if (d % 36000 < 7200) num <= num_1;
                                else if (d % 36000 < 10800) num <= num_2;
                                else if (d % 36000 < 14400) num <= num_3;
                                else if (d % 36000 < 18000) num <= num_4;
                                else if (d % 36000 < 21600) num <= num_5;
                                else if (d % 36000 < 25200) num <= num_6;
                                else if (d % 36000 < 28800) num <= num_7;
                                else if (d % 36000 < 32400) num <= num_8;
                                else num <= num_9;
                            end
                        1 : begin
                                num <= num_;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                an <= 8'b11011111;
                                if (d % 3600 < 600) num <= num_0;
                                else if (d % 3600 < 1200) num <= num_1;
                                else if (d % 3600 < 1800) num <= num_2;
                                else if (d % 3600 < 2400) num <= num_3;
                                else if (d % 3600 < 3000) num <= num_4;
                                else num <= num_5;
                            end
                        3 : begin
                                an <= 8'b11101111;
                                if (d % 600 < 60) num <= num_0;
                                else if (d % 600 < 120) num <= num_1;
                                else if (d % 600 < 180) num <= num_2;
                                else if (d % 600 < 240) num <= num_3;
                                else if (d % 600 < 300) num <= num_4;
                                else if (d % 600 < 360) num <= num_5;
                                else if (d % 600 < 420) num <= num_6;
                                else if (d % 600 < 480) num <= num_7;
                                else if (d % 600 < 540) num <= num_8;
                                else num <= num_9;
                            end
                        4 : begin
                                an <= 8'b11110111;
                                num <= num_;
                            end
                        5 : begin
                                an <= 8'b11111011;
                                if (d % 60 < 10) num <= num_0;
                                else if (d % 60 < 20) num <= num_1;
                                else if (d % 60 < 30) num <= num_2;
                                else if (d % 60 < 40) num <= num_3;
                                else if (d % 60 < 50) num <= num_4;
                                else num <= num_5;
                            end
                        6 : begin
                                an <= 8'b11111101;
                                case (d%10)
                                    0 : num <= num_0;
                                    1 : num <= num_1;
                                    2 : num <= num_2;
                                    3 : num <= num_3;
                                    4 : num <= num_4;
                                    5 : num <= num_5;
                                    6 : num <= num_6;
                                    7 : num <= num_7;
                                    8 : num <= num_8;
                                    9 : num <= num_9;
                                        default : num <= num_x;
                                endcase
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_x;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end

            9 : begin
                    case (b)
                        0 : begin 
                                an <= 8'b01111111;
                                if (d % 86400 < 36000) num <= num_0;
                                else if (d % 86400 < 72000) num <=num_1;
                                else num <= num_2;
                            end
                        1 : begin
                                an <= 8'b10111111;
                                if (d % 36000 < 3600) num <= num_0;
                                else if (d % 36000 < 7200) num <= num_1;
                                else if (d % 36000 < 10800) num <= num_2;
                                else if (d % 36000 < 14400) num <= num_3;
                                else if (d % 36000 < 18000) num <= num_4;
                                else if (d % 36000 < 21600) num <= num_5;
                                else if (d % 36000 < 25200) num <= num_6;
                                else if (d % 36000 < 28800) num <= num_7;
                                else if (d % 36000 < 32400) num <= num_8;
                                else num <= num_9;
                            end
                        2 : begin
                                num <= num_;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                an <= 8'b11101111;
                                if (d % 3600 < 600) num <= num_0;
                                else if (d % 3600 < 1200) num <= num_1;
                                else if (d % 3600 < 1800) num <= num_2;
                                else if (d % 3600 < 2400) num <= num_3;
                                else if (d % 3600 < 3000) num <= num_4;
                                else num <= num_5;
                            end
                        4 : begin
                                an <= 8'b11110111;
                                if (d % 600 < 60) num <= num_0;
                                else if (d % 600 < 120) num <= num_1;
                                else if (d % 600 < 180) num <= num_2;
                                else if (d % 600 < 240) num <= num_3;
                                else if (d % 600 < 300) num <= num_4;
                                else if (d % 600 < 360) num <= num_5;
                                else if (d % 600 < 420) num <= num_6;
                                else if (d % 600 < 480) num <= num_7;
                                else if (d % 600 < 540) num <= num_8;
                                else num <= num_9;
                            end
                        5 : begin
                                an <= 8'b11111011;
                                num <= num_;
                            end
                        6 : begin
                                an <= 8'b11111101;
                                if (d % 60 < 10) num <= num_0;
                                else if (d % 60 < 20) num <= num_1;
                                else if (d % 60 < 30) num <= num_2;
                                else if (d % 60 < 40) num <= num_3;
                                else if (d % 60 < 50) num <= num_4;
                                else num <= num_5;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                case (d%10)
                                    0 : num <= num_0;
                                    1 : num <= num_1;
                                    2 : num <= num_2;
                                    3 : num <= num_3;
                                    4 : num <= num_4;
                                    5 : num <= num_5;
                                    6 : num <= num_6;
                                    7 : num <= num_7;
                                    8 : num <= num_8;
                                    9 : num <= num_9;
                                        default : num <= num_x;
                                endcase
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
              
            10 : begin
                    case (b)
                        0 : begin 
                                num <= num_;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                an <= 8'b10111111;
                                if (d % 86400 < 36000) num <= num_0;
                                else if (d % 86400 < 72000) num <=num_1;
                                else num <= num_2;
                            end
                        2 : begin
                                an <= 8'b11011111;
                                if (d % 36000 < 3600) num <= num_0;
                                else if (d % 36000 < 7200) num <= num_1;
                                else if (d % 36000 < 10800) num <= num_2;
                                else if (d % 36000 < 14400) num <= num_3;
                                else if (d % 36000 < 18000) num <= num_4;
                                else if (d % 36000 < 21600) num <= num_5;
                                else if (d % 36000 < 25200) num <= num_6;
                                else if (d % 36000 < 28800) num <= num_7;
                                else if (d % 36000 < 32400) num <= num_8;
                                else num <= num_9;
                            end
                        3 : begin
                                num <= num_;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                an <= 8'b11110111;
                                if (d % 3600 < 600) num <= num_0;
                                else if (d % 3600 < 1200) num <= num_1;
                                else if (d % 3600 < 1800) num <= num_2;
                                else if (d % 3600 < 2400) num <= num_3;
                                else if (d % 3600 < 3000) num <= num_4;
                                else num <= num_5;
                            end
                        5 : begin
                                an <= 8'b11111011;
                                if (d % 600 < 60) num <= num_0;
                                else if (d % 600 < 120) num <= num_1;
                                else if (d % 600 < 180) num <= num_2;
                                else if (d % 600 < 240) num <= num_3;
                                else if (d % 600 < 300) num <= num_4;
                                else if (d % 600 < 360) num <= num_5;
                                else if (d % 600 < 420) num <= num_6;
                                else if (d % 600 < 480) num <= num_7;
                                else if (d % 600 < 540) num <= num_8;
                                else num <= num_9;
                            end
                        6 : begin
                                an <= 8'b11111101;
                                num <= num_;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                if (d % 60 < 10) num <= num_0;
                                else if (d % 60 < 20) num <= num_1;
                                else if (d % 60 < 30) num <= num_2;
                                else if (d % 60 < 40) num <= num_3;
                                else if (d % 60 < 50) num <= num_4;
                                else num <= num_5;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end

            11 : begin
                    case (b)
                        0 : begin 
                                num <= num_2;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                an <= 8'b11011111;
                                if (d % 86400 < 36000) num <= num_0;
                                else if (d % 86400 < 72000) num <=num_1;
                                else num <= num_2;
                            end
                        3 : begin
                                an <= 8'b11101111;
                                if (d % 36000 < 3600) num <= num_0;
                                else if (d % 36000 < 7200) num <= num_1;
                                else if (d % 36000 < 10800) num <= num_2;
                                else if (d % 36000 < 14400) num <= num_3;
                                else if (d % 36000 < 18000) num <= num_4;
                                else if (d % 36000 < 21600) num <= num_5;
                                else if (d % 36000 < 25200) num <= num_6;
                                else if (d % 36000 < 28800) num <= num_7;
                                else if (d % 36000 < 32400) num <= num_8;
                                else num <= num_9;
                            end
                        4 : begin
                                num <= num_;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                an <= 8'b11111011;
                                if (d % 3600 < 600) num <= num_0;
                                else if (d % 3600 < 1200) num <= num_1;
                                else if (d % 3600 < 1800) num <= num_2;
                                else if (d % 3600 < 2400) num <= num_3;
                                else if (d % 3600 < 3000) num <= num_4;
                                else num <= num_5;
                            end
                        6 : begin
                                an <= 8'b11111101;
                                if (d % 600 < 60) num <= num_0;
                                else if (d % 600 < 120) num <= num_1;
                                else if (d % 600 < 180) num <= num_2;
                                else if (d % 600 < 240) num <= num_3;
                                else if (d % 600 < 300) num <= num_4;
                                else if (d % 600 < 360) num <= num_5;
                                else if (d % 600 < 420) num <= num_6;
                                else if (d % 600 < 480) num <= num_7;
                                else if (d % 600 < 540) num <= num_8;
                                else num <= num_9;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
            12 : begin
                    case (b)
                        0 : begin 
                                num <= num_0;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_2;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                an <= 8'b11101111;
                                if (d % 86400 < 36000) num <= num_0;
                                else if (d % 86400 < 72000) num <=num_1;
                                else num <= num_2;
                            end
                        4 : begin
                                an <= 8'b11110111;
                                if (d % 36000 < 3600) num <= num_0;
                                else if (d % 36000 < 7200) num <= num_1;
                                else if (d % 36000 < 10800) num <= num_2;
                                else if (d % 36000 < 14400) num <= num_3;
                                else if (d % 36000 < 18000) num <= num_4;
                                else if (d % 36000 < 21600) num <= num_5;
                                else if (d % 36000 < 25200) num <= num_6;
                                else if (d % 36000 < 28800) num <= num_7;
                                else if (d % 36000 < 32400) num <= num_8;
                                else num <= num_9;
                            end
                        5 : begin
                                num <= num_;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                an <= 8'b11111101;
                                if (d % 3600 < 600) num <= num_0;
                                else if (d % 3600 < 1200) num <= num_1;
                                else if (d % 3600 < 1800) num <= num_2;
                                else if (d % 3600 < 2400) num <= num_3;
                                else if (d % 3600 < 3000) num <= num_4;
                                else num <= num_5;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                if (d % 600 < 60) num <= num_0;
                                else if (d % 600 < 120) num <= num_1;
                                else if (d % 600 < 180) num <= num_2;
                                else if (d % 600 < 240) num <= num_3;
                                else if (d % 600 < 300) num <= num_4;
                                else if (d % 600 < 360) num <= num_5;
                                else if (d % 600 < 420) num <= num_6;
                                else if (d % 600 < 480) num <= num_7;
                                else if (d % 600 < 540) num <= num_8;
                                else num <= num_9;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
            13 : begin
                    case (b)
                        0 : begin 
                                num <= num_;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_0;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_2;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                an <= 8'b11110111;
                                if (d % 86400 < 36000) num <= num_0;
                                else if (d % 86400 < 72000) num <=num_1;
                                else num <= num_2;
                            end
                        5 : begin
                                an <= 8'b11111011;
                                if (d % 36000 < 3600) num <= num_0;
                                else if (d % 36000 < 7200) num <= num_1;
                                else if (d % 36000 < 10800) num <= num_2;
                                else if (d % 36000 < 14400) num <= num_3;
                                else if (d % 36000 < 18000) num <= num_4;
                                else if (d % 36000 < 21600) num <= num_5;
                                else if (d % 36000 < 25200) num <= num_6;
                                else if (d % 36000 < 28800) num <= num_7;
                                else if (d % 36000 < 32400) num <= num_8;
                                else num <= num_9;
                            end
                        6 : begin
                                num <= num_;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                if (d % 3600 < 600) num <= num_0;
                                else if (d % 3600 < 1200) num <= num_1;
                                else if (d % 3600 < 1800) num <= num_2;
                                else if (d % 3600 < 2400) num <= num_3;
                                else if (d % 3600 < 3000) num <= num_4;
                                else num <= num_5;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
            14 : begin
                    case (b)
                        0 : begin 
                                num <= num_5;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_0;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_2;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                an <= 8'b11111011;
                                if (d % 86400 < 36000) num <= num_0;
                                else if (d % 86400 < 72000) num <=num_1;
                                else num <= num_2;
                            end
                        6 : begin
                                an <= 8'b11111101;
                                if (d % 36000 < 3600) num <= num_0;
                                else if (d % 36000 < 7200) num <= num_1;
                                else if (d % 36000 < 10800) num <= num_2;
                                else if (d % 36000 < 14400) num <= num_3;
                                else if (d % 36000 < 18000) num <= num_4;
                                else if (d % 36000 < 21600) num <= num_5;
                                else if (d % 36000 < 25200) num <= num_6;
                                else if (d % 36000 < 28800) num <= num_7;
                                else if (d % 36000 < 32400) num <= num_8;
                                else num <= num_9;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
            15 : begin
                    case (b)
                        0 : begin 
                                num <= num_0;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_5;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_0;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_2;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                an <= 8'b11111101;
                                if (d % 86400 < 36000) num <= num_0;
                                else if (d % 86400 < 72000) num <=num_1;
                                else num <= num_2;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                if (d % 36000 < 3600) num <= num_0;
                                else if (d % 36000 < 7200) num <= num_1;
                                else if (d % 36000 < 10800) num <= num_2;
                                else if (d % 36000 < 14400) num <= num_3;
                                else if (d % 36000 < 18000) num <= num_4;
                                else if (d % 36000 < 21600) num <= num_5;
                                else if (d % 36000 < 25200) num <= num_6;
                                else if (d % 36000 < 28800) num <= num_7;
                                else if (d % 36000 < 32400) num <= num_8;
                                else num <= num_9;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
            16 : begin
                    case (b)
                        0 : begin 
                                num <= num_;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_0;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_5;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_0;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_2;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                if (d % 86400 < 36000) num <= num_0;
                                else if (d % 86400 < 72000) num <=num_1;
                                else num <= num_2;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
            17 : begin
                    case (b)
                        0 : begin 
                                num <= num_9;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_0;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_5;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_0;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_2;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
            18 : begin
                    case (b)
                        0 : begin 
                                num <= num_1;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_9;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_0;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_5;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_0;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_2;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
            19 : begin
                    case (b)
                        0 : begin 
                                num <= num_0;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_1;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_9;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_0;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_5;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_0;
                            end
                            default : begin
                                        num <= num_x;
                                        an <= 8'b11111111;
                                      end
                    endcase
                end
                            
       endcase  
    end
    
    always_ff @ (posedge count [25])begin
        if (~sta)begin
            if (switch) begin
                if (a == 19)
                    a <= 0;
                else 
                    a <= a + 1;
            end 
            else begin
                if (a == 0)
                    a <= 19;
                else 
                    a <= a - 1 ;
            end
        end
        else
            a <= a;
    end  

    always @ (posedge count [15]) begin
        if (d != 86400) begin
            if (switch_1)
                d <= d + 1;
            else if (switch_2) begin
                if (c == 40) begin
                    d <= d + 1;
                    c <= 0;
                end
                else begin
                    c <= c + 1;
                    d <= d;
                end
            end
            else begin
                if (e == 500) begin
                    e <= 0;
                    d <= d + 1;
                end
                else begin
                    d <= d;
                    e <= e + 1;
                end
            end
        end
        else 
            d <= 0;
    end

    assign dp = 1;     
                     
endmodule

