`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: UoH
// Engineer: Piyush Kumar & Raviteja Kammari 
// 
// Create Date: 03/31/2018 11:53:57 AM
// Design Name: 
// Module Name: dcttest
// Project Name: 8 point DCT
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dcttest();

    parameter   w_i      =  8;
    parameter   w_coeffi = 13;
    parameter   w_o      = w_i + w_coeffi + 2;
    reg         clk;			                                   //	input clock
	reg         reset;		  	                                   //	reset
	reg         wr;		                                           //	writing data to memory
	reg         oe;		                                           //	displaying the final output
	reg  signed[w_i-1:0] f0,f1,f2,f3,f4,f5,f6,f7;	                                           //	8-bit data input
	wire signed[   16:0] F0,F1,F2,F3,F4,F5,F6,F7;

	dct d1(clk,reset,wr,oe,f0,f1,f2,f3,f4,f5,f6,f7,F0,F1,F2,F3,F4,F5,F6,F7);
	
	initial begin
	    clk = 0;
	    reset = 0;
	    oe = 0;
	    wr = 0;
	    forever #5 clk = ~clk;
	end
	
	initial begin
	    
	    #5  reset = 1;

	    #5  wr    = 1; 

	        f0 = 1;f1 = 1;f2 = 1;f3 = 1;f4 = 1;f5 = 1;f6 = 1;f7 = 1;
            //f0 = 1;f1 =-1;f2 =-1;f3 = 1;f4 =-1;f5 = 1;f6 =-1;f7 = 1;
	    #10 oe    = 1;
            //wr    = 0;
        #10 reset =0;
	    #1000 
            f0 = 1;f1 = 0;f2 = 0;f3 = 0;f4 = 0;f5 = 0;f6 = 0;f7 = 0;

        #1000 f0 = 1;f1 =-1;f2 =-1;f3 = 1;f4 =-1;f5 = 1;f6 =-1;f7 = 1;

        #1000 f0 = 5;f1 = 5;f2 = 5;f3 = 5;f4 = 0;f5 = 0;f6 = 0;f7 = 0;	    
        #60000 $stop;
	end        
	
endmodule