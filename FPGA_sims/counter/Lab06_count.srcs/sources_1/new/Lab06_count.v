`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/25 00:27:46
// Design Name: 
// Module Name: Lab06_count
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


module Lab06_count(
    //input
    clk,
    switch,
    en0,
    en1,
    en2,
    en3,
    en4,
    en5,
    en6,
    en7,
    //output
    an0,
    an1,
    an2,
    an3,
    an4,
    an5,
    an6,
    an7,
    dp,
    ca,
    cb,
    cc,
    cd,
    ce,
    cf,
    cg
	);
	input en0,en1,en2,en3,en4,en5,en6,en7;
	input clk,switch;
	output an0,an1,an2,an3,an4,an5,an6,an7;
	output ca,cb,cc,cd,ce,cf,cg,dp; 
	reg [26:0]freq;
	reg [3:0]q;
	reg [2:0]k;
	initial begin
	   freq = 0;
	   q = 0;
	   k = 0;
    end
	
	always @ (posedge clk)
		freq <= freq + 1;
	
	always @ (posedge freq[23])begin
        if((switch == 1) && (k % 8 == 0)) begin              
            q <= q + 1; 
		end else if((switch == 0) && (k % 8 == 7)) begin     
            q <= q - 1;
        end
    end
    always @ (posedge freq[23]) begin     
        if(switch == 1) begin    
            k <= k - 1;           
        end 
        else begin            
            k <= k + 1;
        end
    end
	
	assign ca = (~q[3] & ~q[2] & ~q[1] & q[0]) | (q[2] & ~q[1] & ~q[0]) | (q[3] & q[1]);      
	assign cb = (q[2] & ~q[1] & q[0]) | (q[2] & q[1] & ~q[0]) | (q[3] & q[1]);
	assign cc = (~q[2] & q[1] & ~q[0]) | (q[3] & q[2]);
	assign cd = (~q[3] & ~q[2] & ~q[1] & q[0]) | (q[2] & ~q[1] & ~q[0]) | (q[2] & q[1] & q[0]);
	assign ce = q[0] | (q[2] & ~q[1]);
	assign cf = (~q[3] & ~q[2] & q[0]) | (~q[2] & q[1]) | (q[3] & q[1] &q[0]);
	assign cg = (~q[3] & ~q[2] & ~q[1]) | (q[2] & q[1] & q[0]);	
    
    assign an0 = ~((k % 8 == 7) & en0);
    assign an1 = ~((k % 8 == 6) & en1);
    assign an2 = ~((k % 8 == 5) & en2);
    assign an3 = ~((k % 8 == 4) & en3);
    assign an4 = ~((k % 8 == 3) & en4);
    assign an5 = ~((k % 8 == 2) & en5);
    assign an6 = ~((k % 8 == 1) & en6);
    assign an7 = ~((k % 8 == 0) & en7);
	
	
endmodule
	