//=======================================
// The fir  
// Design : yhchen
// Date  : 2013.4.16
// vesion : v1.0
//=======================================

module fir(

clk
x,
y

);

	parameter WORD_SIZE = 8;
	parameter a = 8'b0101_0101;
	parameter b = 8'b0101_0101;
	parameter c = 8'b0101_0101;
	
	input					clk;
	input	[WORD_SIZE-1:0]	x;
	output	[WORD_SIZE-1:0]	y;
	
	reg		[WORD_SIZE-1:0]	dx, ddx;
	wire	[WORD_SIZE*2-1:0] xa, xb, xc;
	wire	[WORD_SIZE*2:0]	ab;
	wire	[WORD_SIZE*2+1:0]	abc;
	
	assign	xa = x*a;
	assign	xb = dx*b;
	assign	xc = ddx*c;
	
	assign	ab = xa+xb;
	assign 	abc = ab + xc;
	
	assign	y = abc[WORD_SIZE*2+1:WORD_SIZE*2+1-8];
	
	always@(posedge clk) begin
		dx 	<= x;
		ddx <= dx;
	end
	
endmodule
    