`timescale 1 ns / 100 ps

module TM;

parameter 	WORD_SIZE = 10;

reg  			    clk, rst;
reg  	signed[WORD_SIZE-1  :0] filter_in;                            
wire 	signed[11:0] filter_out;
/*
wire    signed[11:0]out_check0,out_check1,out_check2,
								out_check3,out_check4,out_check5,
								out_check6,out_check7,out_check8;	
*/

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
	#(t*30)rst = 1'b0;
	
	#5  filter_in = 10'd0;
	#t	filter_in = 10'd1;
	#t	filter_in = 10'd2;
	#t	filter_in = 10'd3;
	#t	filter_in = 10'd4;
	#t	filter_in = 10'd5;
	#t	filter_in = 10'd6;
	#t	filter_in = 10'd7;
	#t	filter_in = 10'd8;
	#t	filter_in = 10'd9;
	#t	filter_in = 10'd10;
	#t	filter_in = 10'd11;
	#t	filter_in = 10'd12;
	#t	filter_in = 10'd13;
	#t	filter_in = 10'd14;
	#t	filter_in = 10'd15;
	#t	filter_in = 10'd16;
	#t	filter_in = 10'd17;
	#t	filter_in = 10'd18;
	#t	filter_in = 10'd19;
	#t	filter_in = 10'd20;
	#t	filter_in = 10'd21;
	#t	filter_in = 10'd22;
	#t	filter_in = 10'd23;
	#t	filter_in = 10'd24;
	#t	filter_in = 10'd25;
	#t	filter_in = 10'd0;
	#(t*25);
   		$finish;
end

fir	U_Cnt(
					.clk	(clk), 
					.rst    (rst),
					.filter_in		(filter_in),
/*
					.out_check0		(out_check0),
					.out_check1		(out_check1),
					.out_check2		(out_check2),
					.out_check3		(out_check3),
					.out_check4		(out_check4),
					.out_check5		(out_check5),
					.out_check6		(out_check6),
					.out_check7		(out_check7),
					.out_check8		(out_check8),
*/
					.filter_out		(filter_out)
				);
                
                            
endmodule                         
