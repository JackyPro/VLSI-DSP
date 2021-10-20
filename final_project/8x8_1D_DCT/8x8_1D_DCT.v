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
input      signed [w_i-1:0] f0,f1,f2,f3,f4,f5,f6,f7;	                                           //	8-bit data input
output reg signed [w_o-1:0] F0,F1,F2,F3,F4,F5,F6,F7;  
reg        signed [w_i  :0] P0,P2,P4,P6,N1,N3,N5,N7;		            

reg signed [w_i+w_coeffi-1:0] P0C0, P0C2, P0C4, P0C6,
							  P2C0, P2C2, P2C4, P2C6,
							  P4C0, P4C2, P4C4, P4C6,
							  P6C0, P6C2, P6C4, P6C6,
							  N1C1, N1C3, N1C5, N1C7,
							  N3C1, N3C3, N3C5, N3C7,
							  N5C1, N5C3, N5C5, N5C7,
							  N7C1, N7C3, N7C5, N7C7;
reg signed [w_i+w_coeffi-1:0] rP0C0, rP0C2, rP0C4, rP0C6,
							  rP2C0, rP2C2, rP2C4, rP2C6,
							  rP4C0, rP4C2, rP4C4, rP4C6,
							  rP6C0, rP6C2, rP6C4, rP6C6,
							  rN1C1, rN1C3, rN1C5, rN1C7,
							  rN3C1, rN3C3, rN3C5, rN3C7,
							  rN5C1, rN5C3, rN5C5, rN5C7,
							  rN7C1, rN7C3, rN7C5, rN7C7;
reg signed [w_o-1:0] X0,X1,X2,X3,X4,X5,X6,X7;                                                   // output drivers

wire signed[w_coeffi-1:0] C0= 13'd2896,//0.55,//70                                                  // 0.55  // ci = cos (i*pi/2*N)
						  C1= 13'd4017,//0.38,//49                                             // 0.38
						  C2= 13'd3784,//0.19,//24                                                  // 0.19
						  C3= 13'd3406,//0.70,//125
						  C4= 13'd2896,//0.83,//106                                                   // 0.83 // si = sin (i*pi/2*N)
						  C5= 13'd2276,//0.92,//118                                                   // 0.92
						  C6= 13'd1567,//0.98;//125                                                   // 0.98 
						  C7= 13'd799;//125
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
        P2 = x[1]+x[6];
        P4 = x[2]+x[5];
        P6 = x[3]+x[4];

        N1 = x[0]-x[7];
        N3 = x[6]-x[1];
        N5 = x[2]-x[5];
        N7 = x[4]-x[3];

/******************************2-STAGE**************************/
        P0C0 = P0*C0;
        P0C2 = P0*C2;
        P0C4 = P0*C4;
        P0C6 = P0*C6;

        P2C0 = P2*C0;
        P2C2 = P2*C2;
        P2C4 = P2*C4;
        P2C6 = P2*C6;

        P4C0 = P4*C0;
        P4C2 = P4*C2;
        P4C4 = P4*C4;
        P4C6 = P4*C6;

        P6C0 = P6*C0;
        P6C2 = P6*C2;
        P6C4 = P6*C4;
        P6C6 = P6*C6;

        N1C1 = N1*C1;
        N1C3 = N1*C3;
        N1C5 = N1*C5;
        N1C7 = N1*C7;

        N3C1 = N3*C1;
        N3C3 = N3*C3;
        N3C5 = N3*C5;
        N3C7 = N3*C7;

        N5C1 = N5*C1;
        N5C3 = N5*C3;
        N5C5 = N5*C5;
        N5C7 = N5*C7;

        N7C1 = N7*C1;
        N7C3 = N7*C3;
        N7C5 = N7*C5;
        N7C7 = N7*C7;
end
always@(posedge clk) begin
    if(reset)begin
		rP0C0<=0;
		rP0C2<=0;
		rP0C4<=0;
		rP0C6<=0;
		rP2C0<=0; 
		rP2C2<=0; 
		rP2C4<=0; 
		rP2C6<=0;
		rP4C0<=0; 
		rP4C2<=0; 
		rP4C4<=0; 
		rP4C6<=0;
		rP6C0<=0; 
		rP6C2<=0; 
		rP6C4<=0; 
		rP6C6<=0;
		rN1C1<=0; 
		rN1C3<=0; 
		rN1C5<=0; 
		rN1C7<=0;
		rN3C1<=0; 
		rN3C3<=0; 
		rN3C5<=0; 
		rN3C7<=0;
		rN5C1<=0; 
		rN5C3<=0; 
		rN5C5<=0; 
		rN5C7<=0;
		rN7C1<=0; 
		rN7C3<=0; 
		rN7C5<=0; 
		rN7C7<=0;
    end
    else begin
		rP0C0<=P0C0;
		rP0C2<=P0C2;
		rP0C4<=P0C4;
		rP0C6<=P0C6;

		rP2C0<=P2C0;
		rP2C2<=P2C2;
		rP2C4<=P2C4;
		rP2C6<=P2C6;

		rP4C0<=P4C0;
		rP4C2<=P4C2;
		rP4C4<=P4C4;
		rP4C6<=P4C6;

		rP6C0<=P6C0;
		rP6C2<=P6C2;
		rP6C4<=P6C4;
		rP6C6<=P6C6;

		rN1C1<=N1C1;
		rN1C3<=N1C3;
		rN1C5<=N1C5;
		rN1C7<=N1C7;

		rN3C1<=N3C1;
		rN3C3<=N3C3;
		rN3C5<=N3C5;
		rN3C7<=N3C7;

		rN5C1<=N5C1;
		rN5C3<=N5C3;
		rN5C5<=N5C5;
		rN5C7<=N5C7;

		rN7C1<=N7C1;
		rN7C3<=N7C3;
		rN7C5<=N7C5;
		rN7C7<=N7C7;
    end

end

always @(posedge clk) begin
    if(oe) begin

        X0 = rP0C0 + rP2C0 + rP4C0 + rP6C0;               
        X2 = rP0C2 + rP2C6 - rP4C6 - rP6C2;
        X4 = rP0C4 - rP2C4 - rP4C4 + rP6C4;
        X6 = rP0C6 - rP2C2 + rP4C2 - rP6C6;
        X1 = rN1C1 - rN3C3 - rN5C5 - rN7C7;
        X3 = rN1C3 + rN3C7 + rN5C1 + rN7C5;
        X5 = rN1C5 + rN3C1 - rN5C7 - rN7C3;
        X7 = rN1C7 + rN3C5 - rN5C3 + rN7C1;

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