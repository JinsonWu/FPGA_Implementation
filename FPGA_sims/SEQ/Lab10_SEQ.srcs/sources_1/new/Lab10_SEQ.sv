`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/23 12:21:22
// Design Name: 
// Module Name: Lab10_SEQ
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
// Lab10_1
//----------------------------------------------------------
module Lab10_SEQ(
	//input
	clk,
	data_in,
	//output
	correction,
	light
	);
//----------------------------------------------------------
// port declaration
//----------------------------------------------------------
input clk;
input data_in;
output logic correction;
output logic [3:0] light;
//----------------------------------------------------------
// design
//----------------------------------------------------------
always_ff @ (posedge clk)begin
	light[0] <= data_in;
	light[1] <= light[0];
	light[2] <= light[1];
	light[3] <= light[2];
	if ({light[2:0],data_in} == 4'b1011)
		correction <= 1'b1;
	else
		correction <= 1'b0;
end // always_ff @ (posedge clk or negedge rst_n)
endmodule