`timescale 1 ns / 10 ps

module TM_M8x8;

parameter 	IN_WORD_SIZE = 8;
parameter 	OUT_WORD_SIZE = 16;


reg 	[IN_WORD_SIZE-1:0] 		xin, yin;
wire 	[OUT_WORD_SIZE-1:0] 	pout;
	
/*
initial
	begin
		$fsdbDumpfile("Data_8bit.fsdb");
		$fsdbDumpvars;
	end
*/	

//*********************************
// 		control signal
//*********************************


initial begin
		xin = 8'd0;
		yin = 8'd0;
	#100
		xin = 8'd50;
		yin = 8'd100;
	#100
		xin = 8'd30;
		yin = 8'd40;
	#100
		xin = 8'd11;
		yin = 8'd20;
	#100
		xin = 8'd19;
		yin = 8'd18;
	#100
		xin = 8'd17;
		yin = 8'd77;
	#100
		xin = 8'd99;
		yin = 8'd45;
	#100
		xin = 8'd35;
		yin = 8'd92;
	#100
		xin = 8'd53;
		yin = 8'd27;	
	#100
		xin = -8'd1;
		yin = 8'd27;	
   	#100		
   		$finish;
end

P8x8	U_TM_M8x8(
					.xin	(xin), 
					.yin	(yin),
					
					.pout	(pout)
				);
                
                            
endmodule                         
