`timescale 1 ns / 10 ps

module TM;

parameter 	IN_WORD_SIZE = 10;
parameter 	OUT_WORD_SIZE = 24;

reg 							clk, rst;

reg	[IN_WORD_SIZE-1:0]	a0, a1, a2, a3;
reg	[IN_WORD_SIZE-1:0]	a4, a5, a6, a7;
wire	[OUT_WORD_SIZE+1:0]	z0, z2, z4, z6;
wire	[OUT_WORD_SIZE+1:0]	z1, z3, z5, z7;

//===========================================//

initial
	begin
		$fsdbDumpfile("mmp.fsdb");
		$fsdbDumpvars;
	end
	
//---- gate sim -----//
//initial
//        $sdf_annotate("../mmp.sdf", U_MMP);	

//-------------------//

Top_1		U_MMP(
					.clk	(clk), 
					.rst	(rst),
					.a0		(a0),
					.a1		(a1),
					.a2		(a2),
					.a3		(a3),
					.a4		(a4),
					.a5		(a5),
					.a6		(a6),
					.a7		(a7),
					.z0		(z0),
					.z1		(z1),
					.z2		(z2),
					.z3		(z3),
					.z4		(z4),
					.z5		(z5),
					.z6		(z6),
					.z7		(z7)
				);



//*********************************
// 		control signal
//*********************************

// gen clock signal
parameter	t = 100;		
parameter	th = t/2;

always #th clk = ~clk;


initial begin
    clk = 1;
    rst = 1;
//    capture = 0;
//    mem_flag = 0;
    #th rst = 0;
    #(t*2)      rst = 1;     
	#(t*4)	
    a0=1;a1=1;a2=1;a3=1;a4=1;a5=1;a6=1;a7=1;
    #(t*10)
    a0=1;a1=0;a2=0;a3=0;a4=0;a5=0;a6=0;a7=0;
	#(t*4)	
      $finish;
end
            
                            
endmodule                         
