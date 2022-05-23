`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/04 20:23:07
// Design Name: 
// Module Name: Lab08_Keyboard
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


module Lab08_Keyboard(
	//input
	clk,
	efg,
	//output
	an,
	num,
	abcd
	);

	input clk;
	input [2:0] efg;
	output reg [7:0] an = 8'b11111110;
	output reg [7:0] num;
	output reg [3:0] abcd;

	reg [7:0] num_0 = 8'b11000000,num_1 = 8'b11111001,num_2 = 8'b10100100,num_3 = 8'b10110000,num_4 = 8'b10011001,num_5 = 8'b10010010,num_6 = 8'b10000010,num_7 = 8'b11111000,num_8 = 8'b10000000,num_9 = 8'b10010000;
    reg [7:0] num_x = 8'b11111111,num_ = 8'b10111111;
    reg [26:0] count,c;

	always_ff @ (posedge clk) begin
	    count <= count + 1;
	    if (abcd == 4'b1000 && efg == 3'b100) num <= num_1;
	    else if (abcd == 4'b1000 && efg == 3'b010) num <= num_2;
	    else if (abcd == 4'b1000 && efg == 3'b001) num <= num_3;
	    else if (abcd == 4'b0100 && efg == 3'b100) num <= num_4;
	    else if (abcd == 4'b0100 && efg == 3'b010) num <= num_5;
	    else if (abcd == 4'b0100 && efg == 3'b001) num <= num_6;
	    else if (abcd == 4'b0010 && efg == 3'b100) num <= num_7;
	    else if (abcd == 4'b0010 && efg == 3'b010) num <= num_8;
	    else if (abcd == 4'b0010 && efg == 3'b001) num <= num_9;
	    else if (abcd == 4'b0001 && efg == 3'b100) num <= 8'b01111111;
	    else if (abcd == 4'b0001 && efg == 3'b010) num <= num_0;
	    else if (abcd == 4'b0001 && efg == 3'b001) num <= 8'b11000001;
	    else num <= num_x;
	end
	
	always_ff @ (posedge count[13])begin
	    c <= c + 1;
	    case (c % 4)
	       0 : abcd <= 4'b1000;
	       1 : abcd <= 4'b0100;
	       2 : abcd <= 4'b0010;
	       3 : abcd <= 4'b0001;
	           default : abcd <= 4'b0000;
	    endcase
	 end
endmodule 
