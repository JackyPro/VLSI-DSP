//=======================================
// The fir  
// Design : yhchen
// Date  : 2013.4.16
// vesion : v1.0
//=======================================

module fir(

clk,
rst,
filter_in,
filter_out

);

	parameter WORD_SIZE = 8;
	parameter a         = 8'b0101_0101;
	parameter b         = 8'b0101_0101;
	parameter c         = 8'b0101_0101;
	parameter tap       = 2;
	input     clk, rst;
	input     [WORD_SIZE-1  :0]	filter_in;
	output reg[WORD_SIZE-1  :0]	filter_out;
	
//	reg       [WORD_SIZE-1  :0]	dx, ddx;
	reg       [WORD_SIZE*2-1:0] delay_pipeline0;
    reg       [WORD_SIZE*2  :0] delay_pipeline1;
	wire	  [WORD_SIZE*2-1:0] product[2:0];
	wire	  [WORD_SIZE*2  :0]	ab;
	wire	  [WORD_SIZE*2+1:0]	abc;
	
	assign    product[0] = filter_in*a;
	assign    product[1] = filter_in*b;
	assign    product[2] = filter_in*c;
	assign           ab  = delay_pipeline0 + product[1];
	assign          abc  = delay_pipeline1 + product[2];
	
	always@(posedge clk)begin
	if(rst)begin
	  delay_pipeline0 <= 8'd0;
	  delay_pipeline1 <= 8'd0;
	  end
    else
	  delay_pipeline0 <= product[0];
	  delay_pipeline1 <= ab;
	end
	
	always@(posedge clk)begin
	if(rst)
	  filter_out <= 8'd0;
	else
	  filter_out <= abc[WORD_SIZE*2+1:WORD_SIZE*2-7];
	end
	

	
endmodule
    