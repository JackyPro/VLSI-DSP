`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: UoH 
// Engineer: Piyush Kumar & Raviteja Kammari 
// 
// Create Date: 03/31/2018 10:23:57 AM
// Design Name: 
// Module Name: dct
// Project Name: 8 Point DCT
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

module dct(clk,reset,wr,oe,f0,f1,f2,f3,f4,f5,f6,f7,F0,F1,F2,F3,F4,F5,F6,F7);
	                                 
parameter  w_i      =  8;
parameter  w_coeffi = 13;
parameter  w_o      = w_i + w_coeffi + 2;
input      clk;      		                                   //	input clock
input      reset;		  	                                   //	reset
input      wr;		                                           //	writing data to memory
input      oe;		                                           //	displaying the final output
input      signed [w_i-1         :0] f0,f1,f2,f3,f4,f5,f6,f7;  //	8-bit data input
output reg signed [w_i+w_coeffi+3:0] F0,F1,F2,F3,F4,F5,F6,F7;  
reg        signed [w_i+1         :0] P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11;		            

reg signed [w_i+w_coeffi+1:0] P8C4 ,P8S4 ,P9C4 ,P9S4 ,
							  P10C6,P10S6,P11C6,P11S6,
							  P7C7 ,P7S7 ,P4C7 ,P4S7 ,
							  P5C3 ,P5S3 ,P6C3 ,P6S3 ,
							  P4C3 ,P4S3 ,P7C3 ,P7S3 ,
							  P6C1 ,P6S1 ,P5C1 ,P5S1 ;

reg signed [w_i+w_coeffi+1:0] rP8C4 ,rP8S4 ,rP9C4 ,rP9S4 ,
							  rP10C6,rP10S6,rP11C6,rP11S6,
							  rP7C7 ,rP7S7 ,rP4C7 ,rP4S7 ,
							  rP5C3 ,rP5S3 ,rP6C3 ,rP6S3 ,
							  rP4C3 ,rP4S3 ,rP7C3 ,rP7S3 ,
							  rP6C1 ,rP6S1 ,rP5C1 ,rP5S1 ;

reg signed [w_i+w_coeffi+3:0] X0,X1,X2,X3,X4,X5,X6,X7;                                                   // output drivers

wire signed[w_coeffi-1:0] C0= 13'd2896,//0.55,//70                                                  // 0.55  // ci = cos (i*pi/2*N)
						  C1= 13'd4017,//0.38,//49                                             // 0.38
						  C2= 13'd3784,//0.19,//24                                                  // 0.19
						  C3= 13'd3406,//0.70,//125
						  C4= 13'd2896,//0.83,//106                                                   // 0.83 // si = sin (i*pi/2*N)
						  C5= 13'd2276,//0.92,//118                                                   // 0.92
						  C6= 13'd1567,//0.98;//125                                                   // 0.98 
						  C7= 13'd799;//125
wire signed[w_coeffi-1:0] S1,S3,S4,S6,S7;

assign S1=C7;
assign S3=C5;
assign S4=C4;
assign S6=C2;
assign S7=C1;

reg signed [ 7:0] x[w_i-1:0];	                                    //	8-bit 8 locations data storage after reading
/****************************WRITING DATA TO MEMORY***********************/
always @( posedge clk) begin
    if(reset) begin 
		  x[0] <= 0;
		  x[1] <= 0;
		  x[2] <= 0;
		  x[3] <= 0;
		  x[4] <= 0;
		  x[5] <= 0;
		  x[6] <= 0;
		  x[7] <= 0;
		  end
    else 
        if(wr) begin
          x[0] <= f0;
		  x[1] <= f1;
		  x[2] <= f2;
		  x[3] <= f3;
		  x[4] <= f4;
		  x[5] <= f5;
		  x[6] <= f6;
		  x[7] <= f7;
          end
        else begin
          x[0] <= f0;
		  x[1] <= f1;
		  x[2] <= f2;
		  x[3] <= f3;
		  x[4] <= f4;
		  x[5] <= f5;
		  x[6] <= f6;
		  x[7] <= f7;
          end

end

always@(*)begin
/*****************************1-STAGE****************************/
        P0 = x[0]+x[7];
        P1 = x[1]+x[6];
        P2 = x[2]+x[5];
        P3 = x[3]+x[4];

        P4 = x[0]-x[7];
        P5 = x[1]-x[6];
        P6 = x[2]-x[5];
        P7 = x[3]-x[4];

/******************************2-STAGE**************************/
        P8 = P0+P3;
        P9 = P1+P2;
        P10= P0-P3;
        P11= P1-P2;
/***************************************************************/
        P8C4 = P8*C4;
        P8S4 = P8*S4;

        P9C4 = P9*C4;
        P9S4 = P9*S4;
/***************************************************************/
        P10C6=P10*C6;
        P10S6=P10*S6;

        P11C6=P11*C6;
        P11S6=P11*S6;
/***************************************************************/
        P7C7 = P7*C7;
        P7S7 = P7*S7;

        P4C7 = P4*C7;
        P4S7 = P4*S7;
/***************************************************************/
        P5C3 = P5*C3;
        P5S3 = P5*S3;

        P6C3 = P6*C3;
        P6S3 = P6*S3;
/***************************************************************/
        P4C3 = P4*C3;
        P4S3 = P4*S3;

        P7C3 = P7*C3;
        P7S3 = P7*S3;
/***************************************************************/
        P6C1 = P6*C1;
        P6S1 = P6*S1;

        P5C1 = P5*C1;
        P5S1 = P5*S1;
end
always@(posedge clk) begin
    if(reset)begin
		rP8C4 <=0;
		rP8S4 <=0;
		rP9C4 <=0;
		rP9S4 <=0;
		rP10C6<=0;
		rP10S6<=0;
		rP11C6<=0;
		rP11S6<=0;
		rP7C7 <=0;
		rP7S7 <=0;
		rP4C7 <=0;
		rP4S7 <=0;
		rP5C3 <=0;
		rP5S3 <=0;
		rP6C3 <=0;
		rP6S3 <=0;
		rP4C3 <=0;
		rP4S3 <=0;
		rP7C3 <=0;
		rP7S3 <=0;
		rP6C1 <=0;
		rP6S1 <=0;
		rP5C1 <=0;
		rP5S1 <=0;		
    end
    else begin
		rP8C4 <=P8C4;
		rP8S4 <=P8S4;
		rP9C4 <=P9C4;
		rP9S4 <=P9S4;
		rP10C6<=P10C6;
		rP10S6<=P10S6;
		rP11C6<=P11C6;
		rP11S6<=P11S6;
		rP7C7 <=P7C7;
		rP7S7 <=P7S7;
		rP4C7 <=P4C7;
		rP4S7 <=P4S7;
		rP5C3 <=P5C3;
		rP5S3 <=P5S3;
		rP6C3 <=P6C3;
		rP6S3 <=P6S3;
		rP4C3 <=P4C3;
		rP4S3 <=P4S3;
		rP7C3 <=P7C3;
		rP7S3 <=P7S3;
		rP6C1 <=P6C1;
		rP6S1 <=P6S1;
		rP5C1 <=P5C1;
		rP5S1 <=P5S1;
    end

end

always @(posedge clk) begin
    if(oe) begin

        X4 =  rP8C4  - rP9S4  ;               
        X0 =  rP8S4  + rP9C4  ;

        X6 =  rP10C6 - rP11S6 ;
        X2 =  rP10S6 + rP11C6 ;

        X1 =  rP7C7  + rP4S7  + rP5C3 + rP6S3;
        X7 = -rP7S7  + rP4C7  - rP5S3 + rP6C3;

        X3 =  rP4C3  - rP7S3  - rP6C1 - rP5S1;
        X5 =  rP4S3  + rP7C3  + rP6S1 - rP5C1;

/**************DISPLAY THE FINAL OUTPUT ACC. TO ADDRESS GIVEN*************/  
        F0= X0;
	    F1= X1;
	    F2= X2;
	    F3= X3;
	    F4= X4;
	    F5= X5;
	    F6= X6;
	    F7= X7;
        end
    else begin
        F0= 0;
	    F1= 0;
	    F2= 0;
	    F3= 0;
	    F4= 0;
	    F5= 0;
	    F6= 0;
	    F7= 0;
        end
end
endmodule