`timescale 1 ns / 10 ps

module TM;

parameter 	OUT_WORD_SIZE = 4;


reg 							clk, rst;
wire 	[OUT_WORD_SIZE-1:0] 	dout;
	

initial
	begin
		$fsdbDumpfile("Counter.fsdb");
		$fsdbDumpvars;
	end
	

//*********************************
// 		control signal
//*********************************

// gen clock signal
parameter	t = 10;		// 100 MHz
parameter	th = t/2;

always #th clk = ~clk;

initial begin
		clk = 1'b0;
		rst = 1'b1;
	#th	rst = 1'b0;
	#th	rst = 1'b1;	
   	#(40*t)		
   		$finish;
end

counter	U_Cnt(
					.clk	(clk), 
					.rst	(rst),
					
					.dout	(dout)
				);
                
                            
endmodule                         
