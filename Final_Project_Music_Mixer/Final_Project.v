`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/29 23:22:23
// Design Name: 
// Module Name: Final_Project
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


module Final_Project(
	clk, 
	rst_n,
	vauxp2,
	vauxn2,
	PWM_out,
	PWM_out_n
    );
    input wire clk, rst_n;
    input wire vauxp2, vauxn2;
    output wire PWM_out,PWM_out_n;
    wire enable, ready, clk_48k, clk_195k, clk_2;
    wire signed [15:0] data_adc;
    wire signed [32:0] data_fir;
    wire signed [13:0] data_delay;
    assign PWM_out_n = PWM_out;
    clk_wiz_0 clk_8M (
        .clk_in1(clk),
        .clk_out1(clk_2)
    );
    xadc_wiz_0 XADC (
    	.dclk_in(clk_2),
    	.daddr_in(8'h12),
    	.den_in(enable),
    	.di_in(0),
    	.dwe_in(0),
    	.vauxp2(vauxp2),
    	.vauxn2(vauxn2),
    	.vn_in(0),
    	.vp_in(0),
    	.do_out(data_adc),
    	.reset_in(0),
    	.eoc_out(enable),
    	.drdy_out(ready)
    	);
    FIR_Filter FIR (
    	.data_in(data_adc[15:4]),
    	.data_out(data_fir),
    	.clk(clk_48k),
    	.rst_n(rst_n)
    	);
    delay delay_module(
    	.clk_48k(clk_48k),
    	.clk_195k(clk_195k),
    	.rst_n(rst_n),
    	.data_in(data_fir[27:16]),
    	.data_out(data_delay)
    	);
    PWM PWM1(
    	.in(data_delay[13:5]),
    	.clk(clk),
    	.rst_n(rst_n),
    	.out(PWM_out)
    	);
	clk_div c1(.clk(clk), .clk_out(clk_195k));	
	clk_div_1 c2(.clk(clk_195k), .clk_out(clk_48k));
endmodule

module FIR_Filter(
	data_in,
	data_out,
	clk,
	rst_n
	);
input wire signed [11:0] data_in;
output wire signed [32:0] data_out;
input wire clk, rst_n;
reg signed [11:0] data_reg [20:0];
wire signed [15:0] H [20:0];
integer k;

assign H[0] = 16'b1011111111110111;
assign H[1] = 16'b0011111111110110;
assign H[2] = 16'b1011111111110110;
assign H[3] = 16'b1011111111111000;
assign H[4] = 16'b0011111111111001;
assign H[5] = 16'b1011111111111010;
assign H[6] = 16'b0011111111110111;
assign H[7] = 16'b0011111111111010;
assign H[8] = 16'b1011111111111101;
assign H[9] = 16'b0011111111111100;
assign H[10] = 16'b0011111111111110;
assign H[11] = 16'b0011111111111100;
assign H[12] = 16'b1011111111111101;
assign H[13] = 16'b0011111111111010;
assign H[14] = 16'b0011111111110111;
assign H[15] = 16'b1011111111111010;
assign H[16] = 16'b0011111111111001;
assign H[17] = 16'b1011111111111000;
assign H[18] = 16'b1011111111110110;
assign H[19] = 16'b0011111111110110;
assign H[20] = 16'b1011111111110111;


assign data_out = data_reg[0]*H[0]+data_reg[1]*H[1]+data_reg[2]*H[2]+data_reg[3]*H[3]+data_reg[4]*H[4]+
				  data_reg[5]*H[5]+data_reg[6]*H[6]+data_reg[7]*H[7]+data_reg[8]*H[8]+data_reg[9]*H[9]+
				  data_reg[10]*H[10]+data_reg[11]*H[11]+data_reg[12]*H[12]+data_reg[13]*H[13]+data_reg[14]*H[14]+
				  data_reg[15]*H[15]+data_reg[16]*H[16]+data_reg[17]*H[17]+data_reg[18]*H[18]+data_reg[19]*H[19]+data_reg[20]*H[20];
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		for(k = 0; k < 21; k=k+1) data_reg[k] <= 12'd0;
	end else begin
		data_reg[0] <= data_in;
		for(k = 1; k < 21; k=k+1) data_reg[k] <= data_reg[k-1];
	end
end
endmodule

module clk_div(
    clk,
    clk_out
    );
    input wire clk;
    output reg clk_out;
    reg [7:0]counter;
    always @(posedge clk) begin
        if(counter != 8'd255) begin
            clk_out <= clk_out;
            counter <= counter + 1;
        end else begin
            clk_out <= ~clk_out;
            counter <= 0;
        end
    end
endmodule
module clk_div_1(
    clk,
    clk_out
    );
    input wire clk;
    output reg clk_out;
    reg [1:0]counter;
    always @(posedge clk) begin
        if(counter != 2'd2) begin
            clk_out <= clk_out;
            counter <= counter + 1;
        end else begin
            clk_out <= ~clk_out;
            counter <= 0;
        end
    end
endmodule
module PWM(
	in,
	clk,
	rst_n,
	out
    );
	input wire [8:0] in;
	input wire rst_n;
	input wire clk;
	output wire out;
	wire [8:0] count;
	assign count = (in[8])? (~in) : {1'b1,in[7:0]};
	clk_div_pwm c1(.rst_n(rst_n), .clk(clk), .clk_out(out), .count(count));
endmodule
//Pulse width
module clk_div_pwm(
    clk,
    count,
    clk_out,
    rst_n
    );
	input wire rst_n;
    input wire clk;
    input wire [8:0] count;
    output reg clk_out;
    reg [8:0] counter;
    reg cycle;
    reg [8:0] cnt;
    always @(posedge clk or negedge rst_n) begin
    	if (!rst_n) begin
    		clk_out <= 0;
    		counter <= 0;
    		cnt <= 0;
    		cycle <= 0;
    	end else begin  	
    		case(cnt)
    			9'd0 : begin
    				clk_out <= 0;
    				cycle <= 1;
    				cnt <= count;
    			end
    			9'd511 : begin
    				clk_out <= 1;
    				cycle <= 0;
    				cnt <= count;
    			end
    			default : begin
    				cnt <= (cycle)? 9'd511-count : count;  		
			    	if (counter < cnt) begin
			    		counter <= counter + 1;
			    		clk_out <= clk_out;
			    		cycle <= cycle;
			    	end else begin
			    		counter <= 0;
			    		clk_out <= ~clk_out;
			    		cycle <= ~cycle;
			    	end    				
    			end
    		endcase
    	end
    end
endmodule
module delay(
	clk_48k,
	clk_195k,
	rst_n,
	data_in,
	data_out
	);
	input wire clk_48k, clk_195k, rst_n;
	input wire signed [11:0] data_in;
	output reg signed [13:0] data_out;
	reg [1:0] counter;
	reg write_en;
	reg [14:0] address, cnt;
	reg signed [11:0] data;
	reg signed [11:0] data_reg [2:0];
	wire signed [11:0] data_read;
	dist_mem_gen_0 SRAM(.a(address), .d(data), .clk(clk_48k), .we(write_en), .spo(data_read));
	always @(posedge clk_48k or negedge rst_n) begin
		if (!rst_n) begin
			data_out <= 14'b1111_1111_11111;
		end
		else begin
			data_out <= data_in + (data_reg[0]>>>1) + (data_reg[1]>>>2) + (data_reg[2]>>>3);
		end
	end
	always @(negedge clk_195k or negedge rst_n) begin
		if (!rst_n) begin
			counter <= 0;
			address <= 0;
			cnt <= 0;
			data_reg[0] <= 0;
			data_reg[1] <= 0;
			data_reg[2] <= 0;
		end
		else begin
			counter <= counter + 1;
			case(counter)
				2'd0 : begin
					write_en <= 0;
					data <= 0;
					cnt <= cnt;
					address <= cnt-15'd5000;
				end
				2'd1 : begin
					write_en <= 0;
					data <= 0;
					cnt <= cnt;
					address <= cnt-15'd10000;
					data_reg[0] <= data_read;
				end
				2'd2 : begin
					write_en <= 0;
					data <= 0;
					cnt <= cnt;				
					address <= cnt-15'd15000;
					data_reg[1] <= data_read;
				end
				2'd3 : begin
					write_en <= 1;
					cnt <= cnt + 1;
					data <= data_in;
					address <= cnt + 1;
					data_reg[2] <= data_read;
				end
			endcase
		end
	end
endmodule