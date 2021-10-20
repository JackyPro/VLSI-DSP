`timescale 1 ns / 10 ps

module TM_M8x8;

parameter 	IN_WORD_SIZE = 8;
parameter 	OUT_WORD_SIZE = 16;


reg 	[IN_WORD_SIZE-1:0] 		xin, yin;
reg		clk, reset;
//wire	[6:0]DFF1;
wire 	[OUT_WORD_SIZE-1:0] 	pout;
parameter 	period=100;

initial
	begin
		$fsdbDumpfile("Data_8bit.fsdb");
		$fsdbDumpvars;
	end
//initial clk=0;
//always #(period/2) clk=~clk;


//*********************************
// 		control signal
//*********************************


initial begin
		reset=1;
	# 10;	
		reset=0;
		xin = 8'd0;
		yin = 8'd0;
	# 100;
		xin = 8'd50;
		yin = 8'd100;
	# 100;
		xin = 8'd30;
		yin = 8'd40;
	# 100;
		xin = 8'd11;
		yin = 8'd20;
	# 100;
		xin = 8'd19;
		yin = 8'd18;
	# 100;
		xin = 8'd17;
		yin = 8'd77;
	# 100;
		xin = 8'd99;
		yin = 8'd45;
	# 100;
		xin = 8'd35;
		yin = 8'd92;
	# 100;
		xin = 8'd53;
		yin = 8'd27;	
	
   	# 100;	
   		$finish;
end

P8x8	U_TM_M8x8(
					.clk	(clk),
					.reset  (reset),
					.xin	(xin), 
					.yin	(yin),
					.pout	(pout)
				);
                
                            
endmodule                         
