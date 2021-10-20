//=======================================
// The Counter  (4-bit)
// Design : yhchen
// Date  : 2013.3.25
// vesion : v1.0
//=======================================

module counter(

clk,
rst,

dout

);

	parameter WORD_SIZE = 4;
	
	input					clk, rst;
	output	[WORD_SIZE-1:0]	dout;
	
	reg		[WORD_SIZE-1:0]	dout;

	always @(posedge clk or negedge rst)
	begin
		if(!rst)
			dout <= 0;
		else
			dout <= dout + 1'b1;
	end
		
endmodule
    
    
    
    