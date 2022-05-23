`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 17:36:49
// Design Name: 
// Module Name: Lab08_Piano
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


module Lab08_Piano(
	//input
	clk,
	efg,
	//output
	sound,
	abcd,
	test
	);

	input clk;
	input [2:0] efg;
	output reg sound;
	output reg [3:0] abcd;
	output reg test;

    reg [26:0] count,c,i1,i2,i3,i4,i5,i6,i7,i8;
    reg c4,d4,e4,f4,g4,a4,b4,c5;
    reg [17:0] k;

    always_ff @ (posedge clk)begin
        count <= count + 1;
    	if (i1 == 191113)begin
    		c4 <= ~c4;
    		i1 <= 0;
    	end
    	else if (i2 == 170262)begin
    		d4 <= ~d4;
    		i2 <= 0;
    	end
    	else if (i3 ==151686)begin
    		e4 <= ~e4;
    		i3 <= 0;
    	end
    	else if (i4 ==143173)begin
    		f4 <= ~f4;
    		i4 <= 0;
    	end
    	else if (i5 ==125000)begin
    		g4 <= ~g4;
    		i5 <= 0;
    	end
    	else if (i6 ==111500)begin
    		a4 <= ~a4;
    		i6 <= 0;
    	end
    	else if (i7 ==101239)begin
    		b4 <= ~b4;
    		i7 <= 0;
    	end
    	else if (i8 ==95556)begin
    		c5 <= ~c5;
    		i8 <= 0;
    	end
    	else begin
    	   i1 <= i1 + 1;
    	   i2 <= i2 + 1;
    	   i3 <= i3 + 1;
    	   i4 <= i4 + 1;
    	   i5 <= i5 + 1;
    	   i6 <= i6 + 1;
    	   i7 <= i7 + 1;
    	   i8 <= i8 + 1;
    	end
    end

	always_ff @ (posedge count[13]) begin
	    if (abcd == 4'b1000 && efg == 3'b100) sound <= c4; // 1
	    else if (abcd == 4'b1000 && efg == 3'b010) sound <= d4; // 2
	    else if (abcd == 4'b1000 && efg == 3'b001) sound <= e4; // 3
	    else if (abcd == 4'b0100 && efg == 3'b100) sound <= f4; // 4
	    else if (abcd == 4'b0100 && efg == 3'b010) sound <= g4; // 5
	    else if (abcd == 4'b0100 && efg == 3'b001) sound <= a4; // 6
	    else if (abcd == 4'b0010 && efg == 3'b100) sound <= b4; // 7
	    else if (abcd == 4'b0010 && efg == 3'b010) sound <= c5; // 8
	    else begin
	       sound <= 0;
	       c <= c + 1;
            case (c % 4)
               0 : abcd <= 4'b1000;
               1 : abcd <= 4'b0100;
               2 : abcd <= 4'b0010;
               3 : abcd <= 4'b0001;
                   default : abcd <= 4'b0000;
            endcase
        end
	end
	
	always @ (posedge clk)begin
	   k <= k + 1;
	   test <= (k[17]) ? 1 : 0;
	end
endmodule 
