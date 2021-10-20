`timescale 1 ns / 10 ps

module TM;

parameter 	WORD_SIZE = 8;


reg 							clk, rst;
reg 	[WORD_SIZE-1:0] 	filter_in;                            
wire 	[WORD_SIZE-1:0] 	filter_out;
	

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
	#5  rst = 1'b0;
	#t	filter_in = 8'd0;
	#t	filter_in = 8'd10;
	#t	filter_in = 8'd20;
	#t	filter_in = 8'd30;
	#t	filter_in = 8'd40;
	#t	filter_in = 8'd50;
	#t	filter_in = 8'd60;
	#t	filter_in = 8'd70;
	#t	filter_in = 8'd80;
	#t	filter_in = 8'd90;
	#t	filter_in = 8'd100;
	#t	filter_in = 8'd110;
	#t	filter_in = 8'd120;
	#t	filter_in = 8'd130;
	#t	filter_in = 8'd140;
	#t	filter_in = 8'd150;
	#t	filter_in = 8'd160;
	#t	filter_in = 8'd170;
	#t	filter_in = 8'd180;
	#t	filter_in = 8'd190;
	#t	filter_in = 8'd200;
	#t	filter_in = 8'd210;
	#t	filter_in = 8'd220;
	#t	filter_in = 8'd230;
	#t	filter_in = 8'd240;
	#t	filter_in = 8'd250;
	
   		$finish;
end

fir	U_Cnt(
					.clk	(clk), 
					.rst    (rst),
					.filter_in		(filter_in),
					
					.filter_out		(filter_out)
				);
                
                            
endmodule                         
