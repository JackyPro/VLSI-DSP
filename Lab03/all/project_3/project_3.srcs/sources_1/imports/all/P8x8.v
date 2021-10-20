//=======================================
// The BW Multiplier  (8-bit)
// Design : yhchen
// Date  : 2013.3.5
// vesion : v1.0
//=======================================

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
	wire	s08, s01, s02, s03, s04, s05, s06, s07;
	wire	s18, s11, s12, s13, s14, s15, s16, s17;
	wire	s28, s21, s22, s23, s24, s25, s26, s27;
	wire	s38, s31, s32, s33, s34, s35, s36, s37;
	wire	s48, s41, s42, s43, s44, s45, s46, s47;
	wire	s58, s51, s52, s53, s54, s55, s56, s57;
	wire	s68, s61, s62, s63, s64, s65, s66, s67;
	
	wire	c08, c01, c02, c03, c04, c05, c06, c07;
	wire	c18, c11, c12, c13, c14, c15, c16, c17;
	wire	c28, c21, c22, c23, c24, c25, c26, c27;
	wire	c38, c31, c32, c33, c34, c35, c36, c37;
	wire	c48, c41, c42, c43, c44, c45, c46, c47;
	wire	c58, c51, c52, c53, c54, c55, c56, c57;
	wire	c68, c61, c62, c63, c64, c65, c66, c67;
	
	
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
	
	
	assign p60 = xin[6] & yin[0];
	assign p61 = xin[6] & yin[1];
	assign p62 = xin[6] & yin[2];
	assign p63 = xin[6] & yin[3];
	assign p64 = xin[6] & yin[4];
	assign p65 = xin[6] & yin[5];
	assign p66 = xin[6] & yin[6];
	assign p67 = ~(xin[6] & yin[7]);
	
	
	assign p70 = ~(xin[7] & yin[0]);
	assign p71 = ~(xin[7] & yin[1]);
	assign p72 = ~(xin[7] & yin[2]);
	assign p73 = ~(xin[7] & yin[3]);
	assign p74 = ~(xin[7] & yin[4]);
	assign p75 = ~(xin[7] & yin[5]);
	assign p76 = ~(xin[7] & yin[6]);
	assign p77 = xin[7] & yin[7];
	
	
	FA	U01( .a(p10 ), .b(p01), .c(  1'b0 ), .sum(s01), .cout(c01) );
	FA	U02( .a(p20 ), .b(p11), .c(p02), .sum(s02), .cout(c02) );
	FA	U03( .a(p30 ), .b(p21), .c(p12), .sum(s03), .cout(c03) );
	FA	U04( .a(p40 ), .b(p31), .c(p22), .sum(s04), .cout(c04) );
	FA	U05( .a(p50 ), .b(p41), .c(p32), .sum(s05), .cout(c05) );
	FA	U06( .a(p60 ), .b(p51), .c(p42), .sum(s06), .cout(c06) );
	FA	U07( .a(p70 ), .b(p61), .c(p52), .sum(s07), .cout(c07) );
	FA	U08( .a(1'b1), .b(p71), .c(p62), .sum(s08), .cout(c08) );
		
	FA	U11( .a(c01), .b(s02), .c(  1'b0 ), .sum(s11), .cout(c11) );
	FA	U12( .a(c02), .b(s03), .c(p03), .sum(s12), .cout(c12) );
	FA	U13( .a(c03), .b(s04), .c(p13), .sum(s13), .cout(c13) );
	FA	U14( .a(c04), .b(s05), .c(p23), .sum(s14), .cout(c14) );
	FA	U15( .a(c05), .b(s06), .c(p33), .sum(s15), .cout(c15) );
	FA	U16( .a(c06), .b(s07), .c(p43), .sum(s16), .cout(c16) );
	FA	U17( .a(c07), .b(s08), .c(p53), .sum(s17), .cout(c17) );
	FA	U18( .a(c08), .b(p72), .c(p63), .sum(s18), .cout(c18) );
	
	FA	U21( .a(c11), .b(s12), .c(  1'b0 ), .sum(s21), .cout(c21) );
	FA	U22( .a(c12), .b(s13), .c(p04), .sum(s22), .cout(c22) );
	FA	U23( .a(c13), .b(s14), .c(p14), .sum(s23), .cout(c23) );
	FA	U24( .a(c14), .b(s15), .c(p24), .sum(s24), .cout(c24) );
	FA	U25( .a(c15), .b(s16), .c(p34), .sum(s25), .cout(c25) );
	FA	U26( .a(c16), .b(s17), .c(p44), .sum(s26), .cout(c26) );
	FA	U27( .a(c17), .b(s18), .c(p54), .sum(s27), .cout(c27) );
	FA	U28( .a(c18), .b(p73), .c(p64), .sum(s28), .cout(c28) );
	
	FA	U31( .a(c21), .b(s22), .c(  1'b0 ), .sum(s31), .cout(c31) );
	FA	U32( .a(c22), .b(s23), .c(p05), .sum(s32), .cout(c32) );
	FA	U33( .a(c23), .b(s24), .c(p15), .sum(s33), .cout(c33) );
	FA	U34( .a(c24), .b(s25), .c(p25), .sum(s34), .cout(c34) );
	FA	U35( .a(c25), .b(s26), .c(p35), .sum(s35), .cout(c35) );
	FA	U36( .a(c26), .b(s27), .c(p45), .sum(s36), .cout(c36) );
	FA	U37( .a(c27), .b(s28), .c(p55), .sum(s37), .cout(c37) );
	FA	U38( .a(c28), .b(p74), .c(p65), .sum(s38), .cout(c38) );

	
	FA	U41( .a(c31), .b(s32), .c( 1'b0  ), .sum(s41), .cout(c41) );
	FA	U42( .a(c32), .b(s33), .c(p06), .sum(s42), .cout(c42) );
	FA	U43( .a(c33), .b(s34), .c(p16), .sum(s43), .cout(c43) );
	FA	U44( .a(c34), .b(s35), .c(p26), .sum(s44), .cout(c44) );
	FA	U45( .a(c35), .b(s36), .c(p36), .sum(s45), .cout(c45) );
	FA	U46( .a(c36), .b(s37), .c(p46), .sum(s46), .cout(c46) );
	FA	U47( .a(c37), .b(s38), .c(p56), .sum(s47), .cout(c47) );
	FA	U48( .a(c38), .b(p75), .c(p66), .sum(s48), .cout(c48) );
	
	
	FA	U51( .a(c41), .b(s42), .c(  1'b0 ), .sum(s51), .cout(c51) );
	FA	U52( .a(c42), .b(s43), .c(p07), .sum(s52), .cout(c52) );
	FA	U53( .a(c43), .b(s44), .c(p17), .sum(s53), .cout(c53) );
	FA	U54( .a(c44), .b(s45), .c(p27), .sum(s54), .cout(c54) );
	FA	U55( .a(c45), .b(s46), .c(p37), .sum(s55), .cout(c55) );
	FA	U56( .a(c46), .b(s47), .c(p47), .sum(s56), .cout(c56) );
	FA	U57( .a(c47), .b(s48), .c(p57), .sum(s57), .cout(c57) );
	FA	U58( .a(c48), .b(p76), .c(p67), .sum(s58), .cout(c58) );
	
	
	FA	U61( .a(c51), .b(s52), .c( 1'b0  ), .sum(s61), .cout(c61) );
	FA	U62( .a(c52), .b(s53), .c(c61), .sum(s62), .cout(c62) );
	FA	U63( .a(c53), .b(s54), .c(c62), .sum(s63), .cout(c63) );
	FA	U64( .a(c54), .b(s55), .c(c63), .sum(s64), .cout(c64) );
	FA	U65( .a(c55), .b(s56), .c(c64), .sum(s65), .cout(c65) );
	FA	U66( .a(c56), .b(s57), .c(c65), .sum(s66), .cout(c66) );
	FA	U67( .a(c57), .b(s58), .c(c66), .sum(s67), .cout(c67) );
	FA	U68( .a(c58), .b(p77), .c(c67), .sum(s68), .cout(c68) );
	
	assign	pout[0] = p00;
	assign	pout[1] = s01;
	assign	pout[2] = s11;
	assign	pout[3] = s21;
	assign	pout[4] = s31;
	assign	pout[5] = s41;
	assign	pout[6] = s51;
	assign	pout[7] = s61;
	
	assign	pout[8] = s62;
	assign	pout[9] = s63;
	assign	pout[10] = s64;
	assign	pout[11] = s65;
	assign	pout[12] = s66;
	assign	pout[13] = s67;
	assign	pout[14] = s68;
	assign	pout[15] = ~c68;
	
	
		
endmodule
    
    
    
    