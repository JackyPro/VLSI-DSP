`timescale 1 ps/ 1 ps

module Cordic_tb1;

// Inputs
reg                         CLK_50M;
reg                         RST_N;
reg             [15:0]      X,Y;
reg             [15:0]      Phase;
wire            [15:0]      Sin;
wire            [15:0]      Cos;
wire            [15:0]      Error;

// Instantiate the Unit Under Test (UUT)
Cordic                 uut 
(
    .CLK_50M                (CLK_50M    ),
    .RST_N                  (RST_N      ),
    .X                      (X          ),
    .Y                      (Y          ),
    .Phase                  (Phase      ),
    .Sin                    (Sin        ),
    .Cos                    (Cos        ),
    .Error                  (Error      )
);

initial
begin
    #0 CLK_50M = 1'b0;
    #10000 RST_N = 1'b0;
    #10000 RST_N = 1'b1;
    Phase=60;X=16'd1;Y=16'd0;
    #20000 
//    Phase=30;
    Phase=45;X=16'd1;Y=16'd0;
    #20000 
//    Phase=90;
    Phase=67.5;X=16'd1;Y=16'd0;
    #20000 
//    Phase=45;
    Phase=33.75;X=16'd1;Y=16'd0;
    #20000
    Phase=78.75;X=16'd1;Y=16'd0;
    #20000
    #10000000 $stop;
end 

always #10000 
begin
    CLK_50M = ~CLK_50M;
end


endmodule