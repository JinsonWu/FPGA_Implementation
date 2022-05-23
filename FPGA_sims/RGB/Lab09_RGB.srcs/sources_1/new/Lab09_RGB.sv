`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/13 14:46:47
// Design Name: 
// Module Name: Lab09_RGB
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

module Lab09_RGB(
	//input
	clk,
	rst_n,
	//output
	red,
	green,
	blue
	);
//------------------------------------------------------------------//
//port declaration
//------------------------------------------------------------------//
input clk,rst_n;
output reg red,green,blue;
//------------------------------------------------------------------//
//logic declaration
//------------------------------------------------------------------//
logic [20:0] cnt;
logic [15:0] k;
logic [25:0] s;
logic [5:0] i,j;
logic cycle_demo;
logic cycle;
//------------------------------------------------------------------//
//RGB Sampling
//------------------------------------------------------------------//
always_ff @ (posedge clk or negedge rst_n)begin
	if (~rst_n)begin
		cnt <= 0;
		k <= 0;
	end
	else begin
		if (cnt == 1000000)begin
			cycle_demo <= ~cycle_demo;
			cnt <= 0;
		end
		else 
			cnt <= cnt + 1;
		if (k == 10000)begin
			cycle <= ~ cycle;
			k <= 0;
		end
		else 
			k <= k + 1;
	end
end

always_ff @ (posedge cycle or negedge rst_n)begin
	if(~rst_n)
		s <= 0;
	else 
		s <= s + 1;
end
always_ff @(posedge cycle_demo or negedge rst_n)begin
	if (~rst_n)begin
		j <= 0;
		i <= 0;
	end
	else begin
		if (i ==49)
			i <= 0;
		else 
			i <= i + 1;
		if (j == 0)
			j <= 49;
		else 
			j <= j - 1;
	end
end

always_comb begin
	if (s % 15000 < 5000)begin
		red = (s % 100 <= j) ? 1 : 0;
		green = (s % 100 <= i) ? 1 : 0;
		blue = 0;
	end
	else if (s % 15000 < 10000)begin
		red = 0;
		green = (s % 100 <= j) ? 1 : 0;
		blue = (s % 100 <= i) ? 1 : 0;
	end
	else begin
		red = (s % 100 <= i) ? 1 : 0;
		green = 0;
		blue = (s % 100 <= j)? 1 : 0;
	end
end

endmodule
