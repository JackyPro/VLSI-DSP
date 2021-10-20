`timescale 1 ns / 10 ps

module TM;

parameter 	WORD_SIZE = 8;


reg 							clk;
reg 	[WORD_SIZE-1:0] 	x;

wire 	[WORD_SIZE-1:0] 	y;
	

//*********************************
// 		control signal
//*********************************

// gen clock signal
parameter	t = 10;		// 100 MHz
parameter	th = t/2;

always #th clk = ~clk;

initial begin
		clk = 1'b0;
	#t	x = 8'd0;
	#t	x = 8'd10;
	#t	x = 8'd20;
	#t	x = 8'd30;
	#t	x = 8'd40;
	#t	x = 8'd50;
	#t	x = 8'd60;
	#t	x = 8'd70;
	#t	x = 8'd80;
	#t	x = 8'd90;
	#t	x = 8'd100;
	#t	x = 8'd110;
	#t	x = 8'd120;
	#t	x = 8'd130;
	#t	x = 8'd140;
	#t	x = 8'd150;
	#t	x = 8'd160;
	#t	x = 8'd170;
	#t	x = 8'd180;
	#t	x = 8'd190;
	#t	x = 8'd200;
	#t	x = 8'd210;
	#t	x = 8'd220;
	#t	x = 8'd230;
	#t	x = 8'd240;
	#t	x = 8'd250;
	
   		$finish;
end

fir	a(
					.clk	(clk), 
					.x		(x),
					
					.y		(y)
				);
                
                            
endmodule                         
