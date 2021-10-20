`timescale 1 ns / 10 ps

module TMA;

parameter	WIDTH = 16;
parameter	bit_width = 65536;
parameter	cutline = 15;
parameter	ab = 2;
parameter	full = (bit_width - 1 - cutline)/ab + cutline;

parameter	t1 = 200;
parameter	t2 = 100;
parameter	v1 = (t1-cutline)*ab + cutline;
parameter	v2 = v1 - ((t2-cutline)*ab + cutline);

parameter	t3 = cutline - 5;
parameter	t4 = cutline - 10;
parameter	v3 = v2 + t3;
parameter	v4 = v3 - t4;




reg					clk, rst, en, up;
wire	[WIDTH-1:0] dout;


Top		U_top( 

.dout	(dout),

.clk	(clk),
.rst	(rst),
.en		(en), 
.up		(up)
);



//*********************************
// 		control signal
//*********************************
parameter   t   = 10;
parameter   th  = t*0.5;
reg	[4:0]	cnt;
always #th clk = ~clk;

initial begin
    clk = 1;
    rst = 1;
    cnt = 0;
    en = 0;
    up = 1;
    #th rst = 0;
    #(t*2)      rst = 1;
    #t
    	en = 1;
		
   
	#(t*(full))     
    	if(dout!=(bit_width-1))	
    	begin 
    		$display("\n 1. There is error occured in up counter test 1 !!!! \n");
    		cnt = cnt + 1;
    	end
    #t          
    	up = 0;
    #(t*(full))     
    	if(dout!=0)	
    	begin
    		$display("\n 2. There is error occured in down counter test 2 !!!! \n");
    		cnt = cnt + 1;
    	end
    	
    #t	
    	up = 1;
    	en = 0;
    	
    #(t*100)		
    	if(dout!=0)	
    	begin
    		$display("\n 3. There is error occured in enable control test 3 !!!! \n");
    		cnt = cnt + 1;
    	end
    	
    	up = 0;
    #(t*10)		
    	if(dout!=0)
    	begin
    		$display("\n 4. There is error occured in enable control test 4 !!!! \n");
    		cnt = cnt + 1;
    	end
    	    
    #t
		up = 1;
		en = 1;
		
		
	#(t*(t1))     
    	if(dout!=v1)	
    	begin 
    		$display("\n 5. There is error occured in up counter test 5 !!!! \n");
    		cnt = cnt + 1;
    	end
		
		up = 0;
    #(t*(t2))     
    	if(dout!=v2)	
    	begin
    		$display("\n 6. There is error occured in down counter test 6 !!!! \n");
    		cnt = cnt + 1;
    	end
    	up = 1;
		
	#(t*(t3))     
    	if(dout!=v3)	
    	begin 
    		$display("\n 7. There is error occured in up counter test 7 !!!! \n");
    		cnt = cnt + 1;
    	end
		
		up = 0;
    #(t*(t4))     
    	if(dout!=v4)	
    	begin
    		$display("\n 8. There is error occured in down counter test 8 !!!! \n");
    		cnt = cnt + 1;
    	end
    #t      
    	if(cnt == 0)	
			$display("\nPass......Pass......Pass......Pass......Pass......!! \n");
		else
			$display("\nFail......Fail......Fail......Fail......Fail......!! \n");
    
    $finish;
end

endmodule
