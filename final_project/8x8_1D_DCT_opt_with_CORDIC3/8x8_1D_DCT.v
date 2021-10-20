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

module      dct(clk,reset,wr,oe,f0,f1,f2,f3,f4,f5,f6,f7,F0,F1,F2,F3,F4,F5,F6,F7);
	                                 
parameter   w_i      =  8;
parameter   w_coeffi = 13;
parameter   w_o      = w_i + w_coeffi + 2;
input       clk;      		                                   //	input clock
input       reset;		  	                                   //	reset
input       wr;		                                           //	writing data to memory
input       oe;		                                           //	displaying the final output
input      signed [w_i-1:0] f0,f1,f2,f3,f4,f5,f6,f7;  //	8-bit data input
output reg signed [   16:0] F0,F1,F2,F3,F4,F5,F6,F7;  
reg        signed [w_i+1:0] P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11;
wire       signed [w_i+1:0] PP0,PP1,PP2,PP3,PP4,PP5,PP6,PP7,PP8,PP9,PP10,PP11;		
reg        signed [w_i+1:0] rP0,rP1,rP2,rP3,rP4,rP5,rP6,rP7,rP8,rP9,rP10,rP11;	            
wire       signed [w_i+1:0] p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11;	
reg        signed [   16:0] X0,X1,X2,X3,X4,X5,X6,X7;                                                   // output drivers
wire       signed [   16:0] XX0,XX1,XX2,XX3,XX4,XX5,XX6,XX7; 
wire       signed [   15:0] psum0,psum1_1,psum1_2,psum2,psum3_1,psum3_2,
				            psum4,psum5_1,psum5_2,psum6,psum7_1,psum7_2;
wire       signed [   15:0] sum0,sum1_1,sum1_2,sum2,sum3_1,sum3_2,
				            sum4,sum5_1,sum5_2,sum6,sum7_1,sum7_2;
reg        signed [   15:0] Psum0,Psum1_1,Psum1_2,Psum2,Psum3_1,Psum3_2,
				            Psum4,Psum5_1,Psum5_2,Psum6,Psum7_1,Psum7_2;
wire       signed [   15:0] PSum0,PSum1_1,PSum1_2,PSum2,PSum3_1,PSum3_2,
				            PSum4,PSum5_1,PSum5_2,PSum6,PSum7_1,PSum7_2;

reg        signed [    7:0] x[w_i-1:0];	                                    //	8-bit 8 locations data storage after reading
wire       signed [   15:0] angle1,angle2,angle3,angle4,angle5,angle6;
assign angle1  = 16'd45;     
assign angle2  = 16'd68;       
assign angle3  = 16'd79;       
assign angle4  = 16'd34;      
assign angle5  = 16'd34;       
assign angle6  = 16'd11; 
  
/******** WRITING DATA TO MEMORY ********/
/******** 0/1 STAGE pipeline reg ********/
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
          x[0] <= x[0];
		  x[1] <= x[1];
		  x[2] <= x[2];
		  x[3] <= x[3];
		  x[4] <= x[4];
		  x[5] <= x[5];
		  x[6] <= x[6];
		  x[7] <= x[7];
          end
end

/******** 1-STAGE ********/
always@(*)begin
        P0 = x[0]+x[7];
        P1 = x[1]+x[6];
        P2 = x[2]+x[5];
        P3 = x[3]+x[4];

        P4 = x[0]-x[7];
        P5 = x[1]-x[6];
        P6 = x[2]-x[5];
        P7 = x[3]-x[4];


        P8 = P0+P3;
        P9 = P1+P2;
        P10= P0-P3;
        P11= P1-P2;
end

assign PP0  = P0;
assign PP1  = P1;
assign PP2  = P2;
assign PP3  = P3;
assign PP4  = P4;
assign PP5  = P5;
assign PP6  = P6;
assign PP7  = P7;
assign PP8  = P8;
assign PP9  = P9;
assign PP10 = P10; 
assign PP11 = P11;
/******** 1/2-STAGE pipeline reg ********/
always@(posedge clk) begin
    if(reset)begin
        rP0  <= 0;
        rP1  <= 0;
        rP2  <= 0;
        rP3  <= 0;
        rP4  <= 0;
        rP5  <= 0;
        rP6  <= 0;
        rP7  <= 0;
        rP8  <= 0;
        rP9  <= 0;
        rP10 <= 0;
        rP11 <= 0;
        end
    else begin
        rP0  <= PP0;
        rP1  <= PP1;
        rP2  <= PP2;
        rP3  <= PP3;
        rP4  <= PP4;
        rP5  <= PP5;
        rP6  <= PP6;
        rP7  <= PP7;
        rP8  <= PP8;
        rP9  <= PP9;
        rP10 <= PP10;
        rP11 <= PP11;
        end
end
/******** 2-STAGE ********/
assign    p0 = rP0;
assign    p1 = rP1;
assign    p2 = rP2;
assign    p3 = rP3;
assign    p4 = rP4;
assign    p5 = rP5;
assign    p6 = rP6;
assign    p7 = rP7;
assign    p8 = rP8;
assign    p9 = rP9;
assign    p10= rP10;
assign    p11= rP11;

Cordic u1(  .CLK_50M(clk),
            .RST_N(reset),
            .X({6'd0,p8}),
            .Y({6'd0,p9}),
            .Phase(angle1),
            .Sin(psum0),
            .Cos(psum4),
            .Error()
          );
Cordic u2(  .CLK_50M(clk),
            .RST_N(reset),
            .X({6'd0,p10}),
            .Y({6'd0,p11}),
            .Phase(angle2),
            .Sin(psum2),
            .Cos(psum6),
            .Error()
          );
Cordic2 u3(  .CLK_50M(clk),
            .RST_N(reset),
            .X({6'd0,p7}),
            .Y({6'd0,p4}),
            .Phase(angle3),
            .Sin(psum7_1),
            .Cos(psum1_1),
            .Error()
          );
Cordic2 u4(  .CLK_50M(clk),
            .RST_N(reset),
            .X({6'd0,p5}),
            .Y({6'd0,p6}),
            .Phase(angle4),
            .Sin(psum7_2),
            .Cos(psum1_2),
            .Error()
          );
Cordic2 u5(  .CLK_50M(clk),
            .RST_N(reset),
            .X({6'd0,p4}),
            .Y({6'd0,p7}),
            .Phase(angle5),
            .Sin(psum3_1),
            .Cos(psum5_1),
            .Error()
          );
Cordic2 u6(  .CLK_50M(clk),
            .RST_N(reset),
            .X({6'd0,p4}),
            .Y({6'd0,p7}),
            .Phase(angle6),
            .Sin(psum3_2),
            .Cos(psum5_2),
            .Error()
          );
assign  sum0   = psum0;
assign  sum1_1 = psum1_1;
assign  sum1_2 = psum1_2;
assign  sum2   = psum2;
assign  sum3_1 = psum3_1;
assign  sum3_2 = psum3_2;
assign  sum4   = psum4;
assign  sum5_1 = psum5_1;
assign  sum5_2 = psum5_2;
assign  sum6   = psum6;
assign  sum7_1 = psum7_1;
assign  sum7_2 = psum7_2;
/******** 2/3-STAGE pipeline reg ********/
always@(posedge clk)begin
    if(reset)begin
        Psum0   <= 0;
        Psum1_1 <= 0;
        Psum1_2 <= 0;
        Psum2   <= 0;
        Psum3_1 <= 0;
        Psum3_2 <= 0;
        Psum4   <= 0;
        Psum5_1 <= 0;
        Psum5_2 <= 0;
        Psum6   <= 0;
        Psum7_1 <= 0;
        Psum7_2 <= 0;
        end
    else begin
        Psum0   <= sum0;
        Psum1_1 <= sum1_1;
        Psum1_2 <= sum1_2;
        Psum2   <= sum2;
        Psum3_1 <= sum3_1;
        Psum3_2 <= sum3_2;
        Psum4   <= sum4;
        Psum5_1 <= sum5_1;
        Psum5_2 <= sum5_2;
        Psum6   <= sum6;
        Psum7_1 <= sum7_1;
        Psum7_2 <= sum7_2;
        end        
end
/******** 3-STAGE & 3-STAGE pipeline reg ********/
assign  PSum0   = Psum0;
assign  PSum1_1 = Psum1_1;
assign  PSum1_2 = Psum1_2;
assign  PSum2   = Psum2;
assign  PSum3_1 = Psum3_1;
assign  PSum3_2 = Psum3_2;
assign  PSum4   = Psum4;
assign  PSum5_1 = Psum5_1;
assign  PSum5_2 = Psum5_2;
assign  PSum6   = Psum6;
assign  PSum7_1 = Psum7_1;
assign  PSum7_2 = Psum7_2;

always @(posedge clk) begin
    if(reset)begin
        X0 <= 0;
        X1 <= 0;
        X2 <= 0;
        X3 <= 0;
        X4 <= 0;
        X5 <= 0;
        X6 <= 0;
        X7 <= 0;
        end
    else
		if(oe) begin
			X4 <= PSum4 ;               
			X0 <= PSum0 ;

			X6 <= PSum6 ;
			X2 <= PSum2 ;

			X1 <= PSum1_1 + PSum1_2 ;
			X7 <= PSum7_1 + PSum7_2 ;

			X3 <= PSum3_1 - PSum3_2 ;
			X5 <= PSum5_1 - PSum5_2 ;
			end
end

assign  XX0=X0;
assign  XX1=X1;
assign  XX2=X2;
assign  XX3=X3;
assign  XX4=X4;
assign  XX5=X5;
assign  XX6=X6;
assign  XX7=X7;

always@(posedge clk)begin
   if(reset)begin
		F0 <= 0;
		F1 <= 0;
		F2 <= 0;
		F3 <= 0;
		F4 <= 0;
		F5 <= 0;
		F6 <= 0;
		F7 <= 0;    
        end
    else if(oe)begin
        F0 <= XX0;
		F1 <= XX1;
		F2 <= XX2;
		F3 <= XX3;
		F4 <= XX4;
		F5 <= XX5;
		F6 <= XX6;
		F7 <= XX7; 
        end
end

endmodule