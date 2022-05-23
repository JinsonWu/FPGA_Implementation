`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/21 02:05:10
// Design Name: 
// Module Name: Lab10_Adder
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

module Lab10_Adder(
	//input
	clk,
	efg,
	reset,
	switch,
	//output
	an,
	abcd,
	display
	);
//----------------------------------------------------------
// port declaration
//----------------------------------------------------------
input clk;
input [2:0] efg;
input switch;
input reset;
output logic [3:0] abcd;
output logic [7:0] an;
output logic [7:0] display;
logic [7:0] num_0 = 8'b11000000,num_1 = 8'b11111001,num_2 = 8'b10100100,num_3 = 8'b10110000,num_4 = 8'b10011001,num_5 = 8'b10010010,num_6 = 8'b10000010,num_7 = 8'b11111000,num_8 = 8'b10000000,num_9 = 8'b10010000;
logic [7:0] num_x = 8'b11111111,num_ = 8'b10111111;
logic [13:0] cnt,c,k,i;
logic [3:0] a,b;
logic cycle_demo;
//----------------------------------------------------------
// design
//----------------------------------------------------------
always_ff @(posedge clk)begin
	cnt <= cnt + 1;
	cycle_demo <= (cnt[13]) ? 1 : 0;
end
always_ff @(posedge cycle_demo)begin
	c <= c + 1;
	k <= k + 1;
	case (c % 4)
	    0 : abcd <= 4'b1000;
	    1 : abcd <= 4'b0100;
	    2 : abcd <= 4'b0010;
	    3 : abcd <= 4'b0001;
       default : abcd <= 4'b0000;
	endcase
end

always_ff @ (posedge cnt[10]) begin
	if (reset) begin
		a <= 0;
		b <= 0;
		i <= 0;
		an <= 8'b11111110;
		display <= num_0;
	end
	else begin
		if(switch)begin
			if (i != 0)begin
				case(k % 2)
					0 : begin
							an <= 8'b11111110;
							case((a + b) % 10)
								0 : display <= num_0;
								1 : display <= num_1;
								2 : display <= num_2;
								3 : display <= num_3;
								4 : display <= num_4;
								5 : display <= num_5;
								6 : display <= num_6;
								7 : display <= num_7;
								8 : display <= num_8;
								9 : display <= num_9;
									default : display <= num_x;
							endcase
						end
					1 : begin
							an <= 8'b11111101;
							if ((a+b)>9)
								display <= num_1;
							else
								display <= num_x;
						end
					default : display <= num_0;
				endcase // (a + b) % 10
			end
			else begin
				an = 8'b11111110;
				if (abcd == 4'b1000 && efg == 3'b100) begin
					display <= num_1;
					a <= 1;
				end
				else if (abcd == 4'b1000 && efg == 3'b010)begin 
					display <= num_2;
					a <= 2;
				end
			    else if (abcd == 4'b1000 && efg == 3'b001)begin
			    	display <= num_3;
			    	a <= 3;
			    end
			    else if (abcd == 4'b0100 && efg == 3'b100) begin
			    	display <= num_4;
			    	a <= 4;
			    end
			    else if (abcd == 4'b0100 && efg == 3'b010)begin
			    	display <= num_5;
			    	a <= 5;
			    end
			    else if (abcd == 4'b0100 && efg == 3'b001) begin
			    	display <= num_6;
			    	a <= 6;
			    end
			    else if (abcd == 4'b0010 && efg == 3'b100) begin
			    	display <= num_7;
			    	a <= 7;
			    end
			    else if (abcd == 4'b0010 && efg == 3'b010) begin
			    	display <= num_8;
			    	a <= 8;
			    end
			    else if (abcd == 4'b0010 && efg == 3'b001) begin
			    	display <= num_9;
			    	a <= 9;
			    end
			    else if (abcd == 4'b0001 && efg == 3'b010) begin
			    	display <= num_0;
			    	a <= 0;
			    end
			    else begin
			    	display <= display;
			    	a <= a;
			    end
			end
		end
		else begin
			i <= 1;
			an = 8'b11111110;
			if (abcd == 4'b1000 && efg == 3'b100) begin
				display <= num_1;
				b <= 1;
			end
			else if (abcd == 4'b1000 && efg == 3'b010)begin 
				display <= num_2;
				b <= 2;
			end
		    else if (abcd == 4'b1000 && efg == 3'b001)begin
			  	display = num_3;
			   	b <= 3;
			end
		    else if (abcd == 4'b0100 && efg == 3'b100) begin
		    	display <= num_4;
		    	b <= 4;
		   	end
		    else if (abcd == 4'b0100 && efg == 3'b010)begin
		    	display <= num_5;
		    	b <= 5;
		    end
		    else if (abcd == 4'b0100 && efg == 3'b001) begin
		    	display <= num_6;
		    	b <= 6;
		    end
		    else if (abcd == 4'b0010 && efg == 3'b100) begin
		    	display <= num_7;
		    	b <= 7;
		    end
		    else if (abcd == 4'b0010 && efg == 3'b010) begin
		    	display <= num_8;
		    	b <= 8;
		    end
		    else if (abcd == 4'b0010 && efg == 3'b001) begin
		    	display <= num_9;
		    	b <= 9;
		    end
		    else if (abcd == 4'b0001 && efg == 3'b010) begin
		    	display <= num_0;
		    	b <= 0;
		    end
		    else begin
		    	display <= display;
		    	b <= b;
		    end
		end
	end
end
endmodule
