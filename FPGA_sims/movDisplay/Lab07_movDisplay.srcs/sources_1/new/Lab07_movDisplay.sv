`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/30 11:43:46
// Design Name: 
// Module Name: Lab07_movDisplay
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


module Lab07_movDisplay(
    //input,
    clk,
    switch,
    //output
    an,
    num,
    dp
    );
    input clk;
    input switch;
    output reg [7:0] an;
    output reg [6:0] num;
    output dp;
    
    reg [26:0]count;
    reg [2:0] a;
    reg [2:0] b;
    reg [6:0] num_0 = 7'b1000000,num_6 = 7'b0000010 ,num_1 = 7'b1111001, num_2 = 7'b0100100,num_x = 7'b1111111;
    
    always @ (posedge clk) begin
        count <= count + 1;
    end
    always @ (posedge count [13])begin
        b <= b + 1;
        case (a)
            0 : begin
                    case (b)
                        0 : begin 
                                num <= num_0;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_6;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_1;
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
                                num <= num_2;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_0;
                                an <= 8'b11111101;
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
               
            1 : begin
                    case (b)
                        0 : begin 
                                num <= num_6;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_1;
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
                                num <= num_2;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_0;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_x;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                num <= num_0;
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
                                num <= num_1;
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
                                num <= num_2;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_0;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_x;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_0;
                                an <= 8'b11111101;
                            end
                        7 : begin
                                an <= 8'b11111110;
                                num <= num_6;
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
                                num <= num_2;
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
                                num <= num_0;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_x;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_0;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_6;
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

          4 : begin
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
                                num <= num_0;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_x;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_0;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_6;
                                an <= 8'b11111011;
                            end
                        6 : begin
                                num <= num_1;
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
               
          5 : begin
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
                                num <= num_x;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_0;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_6;
                                an <= 8'b11110111;
                            end
                        5 : begin
                                num <= num_1;
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
               
          6 : begin
                    case (b)
                        0 : begin 
                                num <= num_0;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_x;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_0;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_6;
                                an <= 8'b11101111;
                            end
                        4 : begin
                                num <= num_1;
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
                                num <= num_2;
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
                                num <= num_x;
                                an <= 8'b01111111;
                            end
                        1 : begin
                                num <= num_0;
                                an <= 8'b10111111;
                            end
                        2 : begin
                                num <= num_6;
                                an <= 8'b11011111;
                            end
                        3 : begin
                                num <= num_1;
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
                            
       endcase  
    end
    
    always_ff @ (posedge count [25])begin
        if (switch)
            a <= a + 1;
        else 
            a <= a - 1;
    end                      
    assign dp = 1;     
                     
endmodule
