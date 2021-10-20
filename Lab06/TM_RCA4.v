`timescale 1ns/1ns

module TM_RCA4;

reg		[3:0] a, b;
wire	[3:0] s;
wire	cout;

RCA4	U_RCA (.a(a), .b(b), .s(s), .cout(cout));


 // Enter fixture code here
 initial 
 begin
 	  a = 4'd0;
      b = 4'd0;
	#200 	
      a = 4'd10;
      b = 4'd5;
      
	#200
      a = 4'd1;
      b = 4'd3;
      
	#200
      a = 4'd15;
      b = 4'd7;
      
	#200
      a = 4'd13;
      b = 4'd15;
      
	#200
      a = 4'd15;
      b = 4'd15;
      
  	#200
      $finish;
 end
 
 initial 
 	$monitor($time,,a,,b,,s,,cout);

endmodule




