`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/13 15:42:49
// Design Name: 
// Module Name: Lab09_Traffic_Light
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


module Lab09_Traffic_Light(
	//input
	clk,
	rst_n,
	//output
	red,
	green,
	display,
	an
	);
//------------------------------------------------------------------//
//port declaration
//------------------------------------------------------------------//
input clk,rst_n;
output logic [6:0] display;
output logic red,green;
output logic [7:0] an;
//------------------------------------------------------------------//
//logic declaration
//------------------------------------------------------------------//
logic [26:0] cnt;
logic cycle_50,cycle_25;
logic [10:0] j;
logic [4:0] i;
logic k;
logic [6:0] num_0 = 7'b1000000,num_1 = 7'b1111001,num_2 = 7'b0100100,num_3 = 7'b0110000,num_4 = 7'b0011001,num_5 = 7'b0010010,num_6 = 7'b0000010,num_7 = 7'b1111000,num_8 = 7'b0000000,num_9 = 7'b0010000;
logic [6:0] num_x = 7'b1111111,num_ = 7'b0111111;
//------------------------------------------------------------------//
//Traffic_Light Sampling
//------------------------------------------------------------------//
always_ff @ (posedge clk or negedge rst_n)begin
	if(rst_n)begin
		cnt <= 0;
		j <= 0;
		cycle_50 <= 0;
		cycle_25 <= 0;
	end
	else begin
		cnt <= cnt + 1;
		j <= j + 1;
		cycle_25 <= (j[10] && j[9]) ? 1 : 0;
		cycle_50 <= (j[10]) ? 1 : 0;
	end
end

always_ff @ (posedge cnt[13] or negedge rst_n)begin
	if (rst_n)
		k <= 0;
	else 
		k <= k + 1;
end

always_ff @ (posedge cnt[25] or negedge rst_n) begin
	if (rst_n)begin
		i <= 0;
	end
	else begin
		if (i <= 23)
			i <= i + 1;
		else
			i <= 0;
	end
end

always_comb begin
	case(k)
		0 : begin
				an = 8'b11111110;
				case (i)
					0 : begin
							display = num_0;
							red = cycle_50;
							green = 0;
						end
					1 : begin
							display = num_9;
							red = cycle_50;
							green = 0;
						end
					2 : begin
							display = num_8;
							red = cycle_50;
							green = 0;
						end
					3 : begin
							red = cycle_50;
							green = 0;
							display = num_7;
						end
					4 : begin
							display = num_6;
							red = cycle_50;
							green = 0;
						end
					5 : begin
							display = num_5;
							red = cycle_50;
							green = 0;
						end
					6 : begin
							display = num_4;
							red = cycle_50;
							green = 0;
						end
					7 : begin
							display = num_3;
							red = cycle_50;
							green = 0;
						end
					8 : begin
							display = num_2;
							red = cycle_50;
							green = 0;
						end
					9 : begin
							display = num_1;
							red = cycle_50;
							green = 0;
						end
					10 : begin
							red = cycle_25;
							green = cycle_25;
							display = num_5;
						end
					11 : begin
							red = cycle_25;
							green = cycle_25;
							display = num_4;
						end
					12 : begin
							red = cycle_25;
							green = cycle_25;
							display = num_3;
						end
					13 : begin
							red = cycle_25;
							green = cycle_25;
							display = num_2;
						end
					14 : begin
							red = cycle_25;
							green = cycle_25;
							display = num_1;
						end
					15 : begin
							display = num_0;
							red = 0;
							green = cycle_50;
						end
					16 : begin
							display = num_9;
							red = 0;
							green = cycle_50;
						end
					17 : begin
							display = num_8;
							red = 0;
							green = cycle_50;
						end
					18 : begin
							display = num_7;
							red = 0;
							green = cycle_50;
						end
					19 : begin
							display = num_6;
							red = 0;
							green = cycle_50;
						end
					20 : begin
							display = num_5;
							red = 0;
							green = cycle_50;
						end
					21 : begin
							display = num_4;
							red = 0;
							green = cycle_50;
						end
					22 : begin
							display = num_3;
							red = 0;
							green = cycle_50;
						end
					23 : begin
							display = num_2;
							red = 0;
							green = cycle_50;
						end
					24 : begin
							display = num_1;
							red = 0;
							green = cycle_50;
						end
						default : begin
									display = num_x;
									red = 0;
									green = 0;
								end
				endcase // i
			end
		1 : begin 
				an = 8'b11111101;
				case (i)
					0 : begin
							display = num_1;
							red = cycle_50;
							green = 0;
						end
					1 : begin
							display = num_0;
							red = cycle_50;
							green = 0;
						end
					2 : begin
							display = num_0;
							red = cycle_50;
							green = 0;
						end
					3 : begin
							red = cycle_50;
							green = 0;
							display = num_0;
						end
					4 : begin
							display = num_0;
							red = cycle_50;
							green = 0;
						end
					5 : begin
							display = num_0;
							red = cycle_50;
							green = 0;
						end
					6 : begin
							display = num_0;
							red = cycle_50;
							green = 0;
						end
					7 : begin
							display = num_0;
							red = cycle_50;
							green = 0;
						end
					8 : begin
							display = num_0;
							red = cycle_50;
							green = 0;
						end
					9 : begin
							display = num_0;
							red = cycle_50;
							green = 0;
						end
					10 : begin
							red = cycle_25;
							green = cycle_25;
							display = num_0;
						end
					11 : begin
							red = cycle_25;
							green = cycle_25;
							display = num_0;
						end
					12 : begin
							red = cycle_25;
							green = cycle_25;
							display = num_0;
						end
					13 : begin
							red = cycle_25;
							green = cycle_25;
							display = num_0;
						end
					14 : begin
							red = cycle_25;
							green = cycle_25;
							display = num_0;
						end
					15 : begin
							display = num_1;
							red = 0;
							green = cycle_50;
						end
					16 : begin
							display = num_0;
							red = 0;
							green = cycle_50;
						end
					17 : begin
							display = num_0;
							red = 0;
							green = cycle_50;
						end
					18 : begin
							display = num_0;
							red = 0;
							green = cycle_50;
						end
					19 : begin
							display = num_0;
							red = 0;
							green = cycle_50;
						end
					20 : begin
							display = num_0;
							red = 0;
							green = cycle_50;
						end
					21 : begin
							display = num_0;
							red = 0;
							green = cycle_50;
						end
					22 : begin
							display = num_0;
							red = 0;
							green = cycle_50;
						end
					23 : begin
							display = num_0;
							red = 0;
							green = cycle_50;
						end
					24 : begin
							display = num_0;
							red = 0;
							green = cycle_50;
						end
						default : begin
									display = num_x;
									red = 0;
									green = 0;
								end
				endcase // i
			end
	endcase // k
end
endmodule
