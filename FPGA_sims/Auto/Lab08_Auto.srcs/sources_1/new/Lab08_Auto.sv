`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 21:31:13
// Design Name: 
// Module Name: Lab08_Auto
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


module Lab08_Auto(
	//input
	clk,
	//output
	sound
	);

	input clk;
	output reg sound;

    reg [26:0] count,c,i1,i2,i3,i4,i5,i6,i7,i8;
    reg c4,d4,e4,f4,g4,a4,b4,c5;
    reg [7:0] i; 

    always_ff @ (posedge clk)begin
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

	always_ff @ (posedge clk) begin
	    count <= count + 1;
	    case (i)
	    	1 : sound <= c4;
	    	3 : sound <= c4;
	    	5 : sound <= g4;
	    	7 : sound <= g4;
	    	9 : sound <= a4;
	    	11 : sound <= a4;
	    	13 : sound <= g4;
	    	17 : sound <= f4;
	    	19 : sound <= f4;
	    	21 : sound <= e4;
	    	23 : sound <= e4;
	    	25 : sound <= d4;
	    	27 : sound <= d4;
	    	29 : sound <= c4;
	    	33 : sound <= g4;
	    	35 : sound <= g4;
	    	37 : sound <= f4;
	    	39 : sound <= f4;
	    	41 : sound <= e4;
	    	43 : sound <= e4;
	    	45 : sound <= d4;
	    	49 : sound <= g4;
	    	51 : sound <= g4;
	    	53 : sound <= f4;
	    	55 : sound <= f4;
	    	57 : sound <= e4;
	    	59 : sound <= e4;
	    	61 : sound <= d4;
	    	65 : sound <= c4;
	    	67 : sound <= c4;
	    	69 : sound <= g4;
	    	71 : sound <= g4;
	    	73 : sound <= a4;
	    	75 : sound <= a4;
	    	77 : sound <= g4;
	    	81 : sound <= f4;
	    	83 : sound <= f4;
	    	85 : sound <= e4;
	    	87 : sound <= e4;
	    	89 : sound <= d4;
	    	91 : sound <= d4;
	    	93 : sound <= c4;
	    		default : sound <= 0;
	    endcase	    
	end
		
	always_ff @ (posedge count [24])begin
		if (i == 100)
			i <= 0;
		else
			i <= i + 1;
	end
	
	
endmodule 
