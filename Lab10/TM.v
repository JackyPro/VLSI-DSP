`timescale 1 ns / 10 ps

module TM;

parameter 	L = 12;


reg 				clk, rst;
reg 	[L-1:0] 	in;
wire	[L-1:0]		out;
	

parameter	t = 10;		
parameter	th = t/2;

always #th clk = ~clk;

initial begin
		clk = 1'b0;
	#t
	#10    in = 1281;
#10    in = 2434;
#10    in = 3343;
#10    in = 3916;
#10    in = 4095;
#10    in = 3862;
#10    in = 3242;
#10    in = 2296;
#10    in = 1119;
#10    in = -170;
#10    in = -1443;
#10    in = -2570;
#10    in = -3439;
#10    in = -3963;
#10    in = -4089;
#10    in = -3803;
#10    in = -3136;
#10    in = -2154;
#10    in = -955;
#10    in = 339;
#10    in = 1600;
#10    in = 2699;
#10    in = 3528;
#10    in = 4002;
#10    in = 4073;
#10    in = 3736;
#10    in = 3023;
#10    in = 2007;
#10    in = 788;
#10    in = -509;
#10    in = -1756;
#10    in = -2826;
#10    in = -3612;
#10    in = -4035;
#10    in = -4053;
#10    in = -3664;
#10    in = -2907;
#10    in = -1858;
#10    in = -622;
#10    in = 676;
	$finish;
end

FIR	U_Fir(
					.clk	(clk), 
					.x		(in),
					
					.y	(out)
				);
                
                            
endmodule                         
