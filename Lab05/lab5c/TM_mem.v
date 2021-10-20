`timescale 1 ns / 10 ps

module TM_mem;

parameter 	WORD_SIZE = 8;

reg clka, rst, wea;
wire [WORD_SIZE-1:0] douta;
integer h;

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
$fopen(h,"mem.coe",)
		wea = 0;
	#(t*256)

   		$finish;
end

lab5	U_mem(
				.clka	(clka), 
				.rst	(rst), 
				.wea	(wea), 
				.douta	(douta));
                
                
                            
endmodule                         
