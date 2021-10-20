//=======================================
// The Top module
// Design : yhchen
// Project: VLSI DSP Course
//=======================================


module Top(clk, rst, a0, a1, a2, a3, z0, z2, z4, z6);

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


wire signed [w_c+w_i-1:0]	p11, p12, p13, p14;
wire signed [w_c+w_i-1:0]	p21, p22, p23, p24;
wire signed [w_c+w_i-1:0]	p31, p32, p33, p34;
wire signed [w_c+w_i-1:0]	p41, p42, p43, p44;

reg signed [w_c+w_i-1:0]	pp11, pp12, pp13, pp14;
reg signed [w_c+w_i-1:0]	pp21, pp22, pp23, pp24;
reg signed [w_c+w_i-1:0]	pp31, pp32, pp33, pp34;
reg signed [w_c+w_i-1:0]	pp41, pp42, pp43, pp44;
//----- Input Reg ------//
always@(posedge clk) begin
	aa0 <= a0;
	aa1 <= a1;
	aa2 <= a2;
	aa3 <= a3;
end

//----- multipliers ------//
assign p11 = c4*aa0;
assign p12 = c2*aa0;
assign p13 = c4*aa0;
assign p14 = c6*aa0;

assign p21 = c4*aa1;
assign p22 = c6*aa1;
assign p23 = c4_*aa1;
assign p24 = c2_*aa1;

assign p31 = c4*aa2;
assign p32 = c6_*aa2;
assign p33 = c4_*aa2;
assign p34 = c2*aa2;

assign p41 = c4*aa3;
assign p42 = c2_*aa3;
assign p43 = c4*aa3;
assign p44 = c6_*aa3;


//----- Pipe -----//
always@(posedge clk) begin
	pp11 <= p11;
	pp12 <= p12;
	pp13 <= p13;
	pp14 <= p14;
	    
	pp21 <= p21;
	pp22 <= p22;
	pp23 <= p23;
	pp24 <= p24;
	    
	pp31 <= p31;
	pp32 <= p32;
	pp33 <= p33;
	pp34 <= p34;
	    
	pp41 <= p41;
	pp42 <= p42;
	pp43 <= p43;
	pp44 <= p44;
end
//----- Add ------//
assign	zz0 = pp11 + pp21 + pp31 + pp41;
assign	zz2 = pp12 + pp22 + pp32 + pp42;
assign	zz4 = pp13 + pp23 + pp33 + pp43;
assign	zz6 = pp14 + pp24 + pp34 + pp44;


//----- Output Reg ------//
always@(posedge clk) begin
	z0 <= zz0;
	z2 <= zz2;
	z4 <= zz4;
	z6 <= zz6;
end

endmodule

