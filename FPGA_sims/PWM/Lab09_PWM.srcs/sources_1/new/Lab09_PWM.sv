`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/13 01:47:28
// Design Name: 
// Module Name: Lab09_PWM
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


module Lab09_PWM(
	//input
	clk,
	rst_n,
	buttom,
	//output
	cycle
	);
//------------------------------------------------------------------//
//port decalaration
//------------------------------------------------------------------//
input clk,rst_n;
input [6:0] buttom;
output reg cycle;
//------------------------------------------------------------------//
//logic declaration
//------------------------------------------------------------------//
logic [20:0] cnt;
logic [7:0] i,j;
logic cycle_demo;
//------------------------------------------------------------------//
//cycle sampling
//------------------------------------------------------------------//
always_ff @ (posedge clk or negedge rst_n)begin
	if (~rst_n)begin
		cnt <= 0;
		cycle_demo <= 0;
	end
	else begin
		if (cnt == 1000)begin
			cycle_demo <= ~cycle_demo;
			cnt <= 0;
	    end
		else 
			cnt <= cnt + 1;
	end
end

always_ff @ (posedge cycle_demo or negedge rst_n) begin
	if (~rst_n) begin
		cycle <= 0;
		i <= 0;
		j <= 0;
	end 
	else begin
		if (buttom == 7'b1000000)begin
			if (i == 99)begin
				i <= 0;
				cycle <= 0;
			end
			else if (i >= 64)begin
				cycle <= 0;
				i <= i + 1;
			end
			else begin
				cycle <= 1;
				i <= i + 1;
			end
		end
		else if (buttom == 7'b0100000)begin
			if (i == 99)begin
				i <= 0;
				cycle <= 0;
			end
			else if (i >= 32)begin
				cycle <= 0;
				i <= i + 1;
			end
			else begin
				cycle <= 1;
				i <= i + 1;
			end
		end
		else if (buttom == 7'b0010000)begin
			if (i == 99)begin
				i <= 0;
				cycle <= 0;
			end
			else if (i >= 16)begin
				cycle <= 0;
				i <= i + 1;
			end
			else begin
				cycle <= 1;
				i <= i + 1;
			end
		end
		else if (buttom == 7'b0001000)begin
			if (i == 99)begin
				i <= 0;
				cycle <= 0;
			end
			else if (i >= 8)begin
				cycle <= 0;
				i <= i + 1;
			end
			else begin
				cycle <= 1;
				i <= i + 1;
			end
		end
		else if (buttom == 7'b0000100)begin
			if (i == 99)begin
				i <= 0;
				cycle <= 0;
			end
			else if (i >= 4)begin
				cycle <= 0;
				i <= i + 1;
			end
			else begin
				cycle <= 1;
				i <= i + 1;
			end
		end
		else if (buttom == 7'b0000010)begin
			if (i == 99)begin
				i <= 0;
				cycle <= 0;
			end
			else if (i >= 2)begin
				cycle <= 0;
				i <= i + 1;
			end
			else begin
				cycle <= 1;
				i <= i + 1;
			end
		end
		else if (buttom == 7'b0000001)begin
			if (i == 99)begin
				i <= 0;
				cycle <= 0;
			end
			else if (i >= 1)begin
				cycle <= 0;
				i <= i + 1;
			end
			else begin
				cycle <= 1;
				i <= i + 1;
			end
		end
		else begin
			cycle <= 0;
			i <= 0;
		end
	end
end

endmodule