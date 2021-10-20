//=======================================
// The Top module
// Design : yhchen
// Project: VLSI DSP Course
//=======================================


module Top_1(clk, rst, a0, a1, a2, a3, z0, z2, z4, z6);

parameter w_i = 10;
parameter w_c = 12;
parameter w_o = w_i + w_c + 2;
parameter signed c2 = 12'b0111_0110_0100;
parameter signed c4 = 12'b0101_1010_1000;
parameter signed c6 = 12'b0011_0000_1111;
parameter signed c2_ = -c2;
parameter signed c4_ = -c4;
parameter signed c6_ = -c6;

input	signed [w_i-1:0]	a0, a1, a2, a3;
input				clk, rst;
output	signed [w_o-1:0]	z0, z2, z4, z6;

reg		signed [w_i-1:0]	aa0, aa1, aa2, aa3;
wire	signed [w_o-1:0]	zz0, zz2, zz4, zz6;
reg		signed [w_o-1:0]	z0, z2, z4, z6;


wire signed [w_i+1:0]	s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15;
wire signed [w_c+w_i-1:0]	p21, p22, p23, p24;
wire signed [w_c+w_i-1:0]	p31, p32, p33, p34;
wire signed [w_c+w_i-1:0]	p41, p42, p43, p44;

//----- Input Reg ------//
always@(posedge clk) begin
	aa0 <= a0;
	aa1 <= a1;
	aa2 <= a2;
	aa3 <= a3;
end

//----- DA ------//
assign s0 = 0;
assign s1 = aa3;
assign s2 = aa2;
assign s3 = aa2 + aa3;

assign s4 = aa1;
assign s5 = aa1 + aa3;
assign s6 = aa1 + aa2;
assign s7 = aa1 + s3;

assign s8 = aa0;
assign s9 = aa0 + aa3;
assign s10 = aa0 + aa2;
assign s11 = aa0 + s3;

assign s12 = aa0 + aa1;
assign s13 = aa0 + s5;
assign s14 = aa0 + s6;
assign s15 = s12 + s3;

//----- Pipe -----//

//----- Add ------//
assign	zz0 = (s15<<10) + (s15<<8) + (s15<<7) + (s15<<5) + (s15<<3);
assign	zz2 = (-s3<<11) + (s10<<10) + (s12<<9) + (s12<<8) + (s3<<7) + (s10<<6) + (s10<<5) + (s3<<4) + (s5<<3) + (s13<<2) + (s4<<1) + s6;
assign	zz4 = (-s6<<11) + (s9<<10) + (s6<<9) + (s9<<8) + (s9<<7) + (s6<<6) + (s9<<5) + (s6<<4) + (s15<<3);
assign	zz6 = (-s5<<11) + (s3<<10) + (s10<<9) + (s10<<8) + (s5<<7) + (s3<<6) + (s3<<5) + (s5<<4) + (s12<<3) + (s14<<2) + (s8<<1) + s9;


//----- Output Reg ------//
always@(posedge clk) begin
	z0 <= zz0;
	z2 <= zz2;
	z4 <= zz4;
	z6 <= zz6;
end

endmodule

