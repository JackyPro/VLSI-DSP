module test;
 parameter signed c2  = 12'b0111_0110_0100;
 parameter signed c4  = 12'b0101_1010_1000;
 parameter signed c6  = 12'b0011_0000_1111;
 parameter signed c2_ = -c2;
 parameter signed c4_ = -c4;
 parameter signed c6_ = -c6;
 // Inputs
 reg clk;
 reg reset;
 reg [ 7:0] a0,a1,a2,a3;
 reg [11:0] b0,b1,b2,b3;

 // Outputs
 wire [16:0]  cc1, cc2, cc3, cc4,
              cc5, cc6, cc7, cc8,
              cc9,cc10,cc11,cc12,
             cc13,cc14,cc15,cc16;

 // Instantiate the Unit Under Test (UUT)
 top uut (
  .clk(clk), 
  .reset(reset), 
  . a0(a0 ), . a1(a1 ), . a2(a2 ), . a3(a3 ), 
  . b0(b0 ), . b1(b1 ), . b2(b2 ), . b3(b3 ), 
  . c1(cc1 ), . c2(cc2 ), . c3(cc3 ), . c4(cc4 ), 
  . c5(cc5 ), . c6(cc6 ), . c7(cc7 ), . c8(cc8 ), 
  . c9(cc9 ), .c10(cc10), .c11(cc11), .c12(cc12),
  .c13(cc13), .c14(cc14), .c15(cc15), .c16(cc16));

initial
	begin
		$fsdbDumpfile("mmp.fsdb");
		$fsdbDumpvars;
	end
	
 initial begin
  // Initialize Inputs
  clk = 0;
  reset = 0;
  a1 = 0;
  a2 = 0;
  a3 = 0;
  b1 = 0;
  b2 = 0;
  b3 = 0;

  // Wait 100 ns for global reset to finish
  #5 reset = 1;
  #5 reset = 0;
  #5;   a0 = 1;
		a1 = 0; 
		a2 = 0; 
		a3 = 0; 
		b0 = c4;
		b1 = 0; 
        b2 = 0; 
        b3 = 0;
  #10;  a0 = 0;
		a1 = 1; 
		a2 = 0; 
		a3 = 0; 
		b0 = c4;
		b1 = c2; 
        b2 = 0; 
        b3 = 0;
  #10;  a0 = 0;
		a1 = 0; 
		a2 = 1; 
		a3 = 0; 
		b0 = c4;
		b1 = c6; 
        b2 = c4; 
        b3 = 0;
  #10;  a0 = 0;
		a1 = 0; 
		a2 = 0; 
		a3 = 1; 
		b0 = c4;
		b1 = -c6; 
        b2 = -c4; 
        b3 = c6;
  #10;  a0 = 0;
		a1 = 0; 
		a2 = 0; 
		a3 = 0; 
		b0 = 0;
		b1 = -c2; 
        b2 = -c4; 
        b3 = -c2;
  #10;  a0 = 0;
		a1 = 0; 
		a2 = 0; 
		a3 = 0; 
		b0 = 0;
		b1 = 0; 
        b2 = c4; 
        b3 = c2;
  #10;  a0 = 0;
		a1 = 0; 
		a2 = 0; 
		a3 = 0; 
		b0 = 0;
		b1 = 0; 
        b2 = 0; 
        b3 = -c6;
  #100;
  $stop;

 end
 
 initial begin
  forever #5 clk = ~clk;
 end
      
endmodule