`timescale 1 ns / 10 ps

module TM_mem;

parameter 	WORD_SIZE = 16;

reg clka, rst, wea;
wire [WORD_SIZE-1:0] douta;


//*********************************
// 		control signal
//*********************************

// gen clock signal
parameter	t = 10;		
parameter	th = t/2;

always #th clka = ~clka;

initial begin
		clka = 1'b0;		
		rst = 1;
		wea = 0;		
	#t
		rst = 0;
	#t	
		rst = 1;
//----- key in the write cycle -----//	
		wea = 1;		
	#(t*65536)
//----- key in the read cycle -----//
		wea = 0;
	#(t*65536)

   		$finish;
end

lab5	U_mem(
				.clka	(clka), 
				.rst	(rst), 
				.wea	(wea), 
				.douta	(douta));
                
                
                            
endmodule                         
