`timescale 1 ps/ 1 ps

module Cordic_tb;

// Inputs
reg                         CLK;
reg                         RST_N;
reg             [15:0]      cnt;
reg             [15:0]      cnt_n;
reg             [31:0]      Phase;
reg             [31:0]      Phase_n;
wire            [31:0]      Sin;
wire            [31:0]      Cos;
wire            [31:0]      Error;

// Instantiate the Unit Under Test (UUT)
Cordic                 uut 
(
    .CLK                (CLK    ),
    .RST_N              (RST_N      ),
    .Phase              (Phase      ),
    .Sin                (Sin        ),
    .Cos                (Cos        ),
    .Error              (Error      )
);

initial
begin
    #0 CLK = 1'b0;
    #10000 RST_N = 1'b0;
    #10000 RST_N = 1'b1;
    #10000000 $stop;
end 

always #10000 
begin
    CLK = ~CLK;
end

always @ (posedge CLK or negedge RST_N)
begin
    if(!RST_N)
        cnt <= 1'b0;
    else
        cnt <= cnt_n;
end

always @ (*)
begin
    if(cnt == 16'd359)
        cnt_n = 1'b0;
    else
        cnt_n = cnt + 1'b1;
end

//生成相位0-359度,Phase[17:16]爲相位的象限,Phase[15:10]爲相位的值
always @ (posedge CLK or negedge RST_N)
begin
    if(!RST_N)
        Phase <= 1'b0;
    else
        Phase <= Phase_n;
end

always @ (*)
begin
    if(cnt <= 16'd90)
        Phase_n = cnt;
    else if(cnt > 16'd90 && cnt <= 16'd180)
        Phase_n = {2'd01,cnt - 16'd90};
    else if(cnt > 16'd180 && cnt <= 16'd270)
        Phase_n = {2'd10,cnt - 16'd180};
    else if(cnt > 16'd270)
        Phase_n = {2'd11,cnt - 16'd270};
end

endmodule