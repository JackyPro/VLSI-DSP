`timescale 1 ns / 1 ps

module P8x8(

pout,

xin,
yin

);

	parameter WORD_SIZE = 8;
	
	input	[WORD_SIZE-1:0]		yin, xin;
	output	[WORD_SIZE*2-1:0]	pout;


	wire	p00, p01, p02, p03, p04, p05, p06, p07;
	wire	p10, p11, p12, p13, p14, p15, p16, p17;
	wire	p20, p21, p22, p23, p24, p25, p26, p27;
	wire	p30, p31, p32, p33, p34, p35, p36, p37;
	wire	p40, p41, p42, p43, p44, p45, p46, p47;
	wire	p50, p51, p52, p53, p54, p55, p56, p57;
	wire	p60, p61, p62, p63, p64, p65, p66, p67;
	wire	p70, p71, p72, p73, p74, p75, p76, p77;
	
	
	
	//  wire ......
	
	
	// assign partial product
	
	assign p00 = xin[0] & yin[0];
	assign p01 = xin[0] & yin[1];
	assign p02 = xin[0] & yin[2];
	assign p03 = xin[0] & yin[3];
	assign p04 = xin[0] & yin[4];
	assign p05 = xin[0] & yin[5];
	assign p06 = xin[0] & yin[6];
	assign p07 = ~(xin[0] & yin[7]);
	
	assign p10 = xin[1] & yin[0];
	assign p11 = xin[1] & yin[1];
	assign p12 = xin[1] & yin[2];
	assign p13 = xin[1] & yin[3];
	assign p14 = xin[1] & yin[4];
	assign p15 = xin[1] & yin[5];
	assign p16 = xin[1] & yin[6];
	assign p17 = ~(xin[1] & yin[7]);
	
	assign p20 = xin[2] & yin[0];
	assign p21 = xin[2] & yin[1];
	assign p22 = xin[2] & yin[2];
	assign p23 = xin[2] & yin[3];
	assign p24 = xin[2] & yin[4];
	assign p25 = xin[2] & yin[5];
	assign p26 = xin[2] & yin[6];
	assign p27 = ~(xin[2] & yin[7]);
	
	assign p30 = xin[3] & yin[0];
	assign p31 = xin[3] & yin[1];
	assign p32 = xin[3] & yin[2];
	assign p33 = xin[3] & yin[3];
	assign p34 = xin[3] & yin[4];
	assign p35 = xin[3] & yin[5];
	assign p36 = xin[3] & yin[6];
	assign p37 = ~(xin[3] & yin[7]);
	
	assign p40 = xin[4] & yin[0];
	assign p41 = xin[4] & yin[1];
	assign p42 = xin[4] & yin[2];
	assign p43 = xin[4] & yin[3];
	assign p44 = xin[4] & yin[4];
	assign p45 = xin[4] & yin[5];
	assign p46 = xin[4] & yin[6];
	assign p47 = ~(xin[4] & yin[7]);
	
	assign p50 = xin[5] & yin[0];
	assign p51 = xin[5] & yin[1];
	assign p52 = xin[5] & yin[2];
	assign p53 = xin[5] & yin[3];
	assign p54 = xin[5] & yin[4];
	assign p55 = xin[5] & yin[5];
	assign p56 = xin[5] & yin[6];
	assign p57 = ~(xin[5] & yin[7]);
	

	// assign .......
	
	
		
	// HA/FA sub-module
	
	
	

		
endmodule
