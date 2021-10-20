module top(	clk,reset,a0,a1,a2,a3,
					  b0,b1,b2,b3,
					  c1, c2, c3, c4,
                      c5, c6, c7, c8,
                      c9,c10,c11,c12,
                      c13,c14,c15,c16);

 parameter        ds1 =  8;
 parameter        ds2 = 12;
/*
 parameter signed c2  = 12'b0111_0110_0100;
 parameter signed c4  = 12'b0101_1010_1000;
 parameter signed c6  = 12'b0011_0000_1111;
 parameter signed c2_ = -c2;
 parameter signed c4_ = -c4;
 parameter signed c6_ = -c6;
*/
 input  wire  clk,reset;
 input  wire  [  ds1-1:0]  a0, a1, a2, a3;
 input  wire  [  ds2-1:0]  b0, b1, b2, b3;
 output wire  [ds1+ds2:0]  c1, c2, c3, c4,
                           c5, c6, c7, c8,
                           c9,c10,c11,c12,
                          c13,c14,c15,c16;
 //dataflow-down
 wire [ds1-1:0] d10,d11,d12,d13,
                d20,d21,d22,d23,
				d30,d31,d32,d33;
					  
 //dataflow-right
 wire [ds2-1:0] r01,r02,r03,
                r11,r12,r13,
				r21,r22,r23,
				r31,r32,r33;
					   
 
 pe s00 (.clk(clk), .reset(reset), .in_a(a0 ), .in_b(b0 ), .out_a(d10), .out_b(r01), .out_c(c1 ));
 pe s01 (.clk(clk), .reset(reset), .in_a(a1 ), .in_b(r01), .out_a(d11), .out_b(r02), .out_c(c2 ));
 pe s02 (.clk(clk), .reset(reset), .in_a(a2 ), .in_b(r02), .out_a(d12), .out_b(r03), .out_c(c3 ));
 pe s03 (.clk(clk), .reset(reset), .in_a(a3 ), .in_b(r03), .out_a(d13), .out_b( ), .out_c(c4 ));
 
 pe s10 (.clk(clk), .reset(reset), .in_a(d10), .in_b(b1 ), .out_a(d20), .out_b(r11), .out_c(c5 ));
 pe s11 (.clk(clk), .reset(reset), .in_a(d11), .in_b(r11), .out_a(d21), .out_b(r12), .out_c(c6 ));
 pe s12 (.clk(clk), .reset(reset), .in_a(d12), .in_b(r12), .out_a(d22), .out_b(r13), .out_c(c7 ));
 pe s13 (.clk(clk), .reset(reset), .in_a(d13), .in_b(r13), .out_a(d23), .out_b( ), .out_c(c8 ));
 
 pe s20 (.clk(clk), .reset(reset), .in_a(d20), .in_b(b2 ), .out_a(d30), .out_b(r21), .out_c(c9 ));
 pe s21 (.clk(clk), .reset(reset), .in_a(d21), .in_b(r21), .out_a(d31), .out_b(r22), .out_c(c10));
 pe s22 (.clk(clk), .reset(reset), .in_a(d22), .in_b(r22), .out_a(d32), .out_b(r23), .out_c(c11));
 pe s23 (.clk(clk), .reset(reset), .in_a(d23), .in_b(r23), .out_a(d33), .out_b( ), .out_c(c12));
 
 pe s30 (.clk(clk), .reset(reset), .in_a(d30), .in_b(b3 ), .out_a( ), .out_b(r31), .out_c(c13));
 pe s31 (.clk(clk), .reset(reset), .in_a(d31), .in_b(r31), .out_a( ), .out_b(r32), .out_c(c14));
 pe s32 (.clk(clk), .reset(reset), .in_a(d32), .in_b(r32), .out_a( ), .out_b(r33), .out_c(c15));
 pe s33 (.clk(clk), .reset(reset), .in_a(d33), .in_b(r33), .out_a( ), .out_b( ), .out_c(c16));
endmodule

module pe(clk,reset,in_a,in_b,out_a,out_b,out_c);

 parameter   ds1=8;
 parameter   ds2=12;
 input  wire reset,clk;
 input  wire [ds1-1  :0] in_a;
 input  wire [ds2-1  :0] in_b;
 output reg  [ds1+ds2:0] out_c;
 output reg  [ds1-1  :0] out_a;
 output reg  [ds2-1  :0] out_b;

 always @(posedge clk)begin
    if(reset) begin
      out_a=0;
      out_b=0;
      out_c=0;
    end
    else begin  
      out_c=out_c+in_a*in_b;
      out_a=in_a;
      out_b=in_b;
    end
 end
 
endmodule