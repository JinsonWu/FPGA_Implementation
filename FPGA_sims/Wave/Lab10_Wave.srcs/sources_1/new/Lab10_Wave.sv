`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 12:52:09
// Design Name: 
// Module Name: Lab10_Wave
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


//----------------------------------------------------------
// Lab10_2
//----------------------------------------------------------
module Lab10_Wave(
	//input
	clk,
	data_in,
	//output
	light
	);
//----------------------------------------------------------
// port declaration
//----------------------------------------------------------
input clk;
input data_in;
output logic [4:0] light = 5'b00000;
logic cycle_demo,cycle;
logic [26:0] k = 0;
logic [2:0] cnt = 0;
//----------------------------------------------------------
// design
//----------------------------------------------------------
always_ff @ (posedge clk)begin
	if (k == 50000000)begin
		cycle_demo <= ~cycle_demo;
		k <= 0;
	end // if (k == 50000000)
	else 
		k <= k + 1;
end // always_ff @ (posedge clk or negedge rst_n)

always_ff @ (posedge cycle_demo)begin
	cycle <= data_in;
	if ({cycle,data_in} == 2'b10 && cnt == 0)
		cnt <= cnt + 1;
	else if (cnt != 0)begin
		light[0] <= data_in;	
		light[1] <= light[0];
		light[2] <= light[1];
		light[3] <= light[2];
		light[4] <= light[3];
		if (cnt == 5)
			cnt <= 0;
		else
			cnt <= cnt + 1;
	end
	else begin
		light <= light;
		cnt <= 0;
	end
end // always_ff @ (posedge cycle_demo or negedge rst_n)
endmodule