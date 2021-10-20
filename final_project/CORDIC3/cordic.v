module Cordic_Test
(
    CLK_50M,RST_N,
    X,Y,
    Phase,
    Sin,Cos,Error
);

input                       CLK_50M;
input                       RST_N;
input       [15:0]          X,Y;
input       [15:0]          Phase;
output      [15:0]          Sin;
output      [15:0]          Cos;
output      [15:0]          Error;

`define rot0  16'd11520       //45度*2^8
`define rot1  16'd6801       //26.5651度*2^8
`define rot2  16'd3593        //14.0362度*2^8
`define rot3  16'd1824        //7.1250度*2^8
`define rot4  16'd916        //3.5763度*2^8
`define rot5  16'd458        //1.7899度*2^8
`define rot6  16'd229         //0.8952度*2^8
`define rot7  16'd115         //0.4476度*2^8
`define rot8  16'd57         //0.2238度*2^8
`define rot9  16'd29          //0.1119度*2^8
/*
`define rot10 16'd14          //0.0560度*2^8
`define rot11 16'd7          //0.0280度*2^8
`define rot12 16'd4           //0.0140度*2^8
`define rot13 16'd2          //0.0070度*2^8
`define rot14 16'd1           //0.0035度*2^8
`define rot15 16'd0           //0.0018度*2^8
*/
parameter Pipeline = 10;
parameter K = 16'd155;    //K=0.607253*2^8

reg signed  [15:0]      Sin;
reg signed  [15:0]      Cos;
reg signed  [15:0]      Error;
reg signed  [15:0]      x0=0,y0=0,z0=0;
reg signed  [15:0]      x1=0,y1=0,z1=0;
reg signed  [15:0]      x2=0,y2=0,z2=0;
reg signed  [15:0]      x3=0,y3=0,z3=0;
reg signed  [15:0]      x4=0,y4=0,z4=0;
reg signed  [15:0]      x5=0,y5=0,z5=0;
reg signed  [15:0]      x6=0,y6=0,z6=0;
reg signed  [15:0]      x7=0,y7=0,z7=0;
reg signed  [15:0]      x8=0,y8=0,z8=0;
reg signed  [15:0]      x9=0,y9=0,z9=0;
reg signed  [15:0]      x10=0,y10=0,z10=0;

reg         [ 1:0]      Quadrant [Pipeline:0];

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        x0 <= 16'b0;                         
        y0 <= 16'b0;
        z0 <= 16'b0;
    end
    else
    begin
        x0 <= K*X;
        y0 <= K*Y;
        z0 <= Phase[ 7:0] << 8;
    end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        x1 <= 16'b0;                         
        y1 <= 16'b0;
        z1 <= 16'b0;
    end
    else if(z0[15])
    begin
      x1 <= x0 + y0;
      y1 <= y0 - x0;
      z1 <= z0 + `rot0;
    end
    else
    begin
      x1 <= x0 - y0;
      y1 <= y0 + x0;
      z1 <= z0 - `rot0;
    end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        x2 <= 16'b0;                         
        y2 <= 16'b0;
        z2 <= 16'b0;
    end
    else if(z1[15])
   begin
        x2 <= x1 + (y1 >>> 1);
        y2 <= y1 - (x1 >>> 1);
        z2 <= z1 + `rot1;
   end
   else
   begin
       x2 <= x1 - (y1 >>> 1);
       y2 <= y1 + (x1 >>> 1);
       z2 <= z1 - `rot1;
   end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        x3 <= 16'b0;                         
        y3 <= 16'b0;
        z3 <= 16'b0;
    end
    else if(z2[15])
   begin
       x3 <= x2 + (y2 >>> 2);
       y3 <= y2 - (x2 >>> 2);
       z3 <= z2 + `rot2;
   end
   else
   begin
       x3 <= x2 - (y2 >>> 2);
       y3 <= y2 + (x2 >>> 2);
       z3 <= z2 - `rot2;
   end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        x4 <= 16'b0;                         
        y4 <= 16'b0;
        z4 <= 16'b0;
    end
    else if(z3[15])
   begin
       x4 <= x3 + (y3 >>> 3);
       y4 <= y3 - (x3 >>> 3);
       z4 <= z3 + `rot3;
   end
   else
   begin
       x4 <= x3 - (y3 >>> 3);
       y4 <= y3 + (x3 >>> 3);
       z4 <= z3 - `rot3;
   end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        x5 <= 16'b0;                         
        y5 <= 16'b0;
        z5 <= 16'b0;
    end
    else if(z4[15])
   begin
       x5 <= x4 + (y4 >>> 4);
       y5 <= y4 - (x4 >>> 4);
       z5 <= z4 + `rot4;
   end
   else
   begin
       x5 <= x4 - (y4 >>> 4);
       y5 <= y4 + (x4 >>> 4);
       z5 <= z4 - `rot4;
   end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        x6 <= 16'b0;                         
        y6 <= 16'b0;
        z6 <= 16'b0;
    end
    else if(z5[15])
   begin
       x6 <= x5 + (y5 >>> 5);
       y6 <= y5 - (x5 >>> 5);
       z6 <= z5 + `rot5;
   end
   else
   begin
       x6 <= x5 - (y5 >>> 5);
       y6 <= y5 + (x5 >>> 5);
       z6 <= z5 - `rot5;
   end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        x7 <= 16'b0;                         
        y7 <= 16'b0;
        z7 <= 16'b0;
    end
    else if(z6[15])
   begin
       x7 <= x6 + (y6 >>> 6);
       y7 <= y6 - (x6 >>> 6);
       z7 <= z6 + `rot6;
   end
   else
   begin
       x7 <= x6 - (y6 >>> 6);
       y7 <= y6 + (x6 >>> 6);
       z7 <= z6 - `rot6;
   end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        x8 <= 16'b0;                         
        y8 <= 16'b0;
        z8 <= 16'b0;
    end
    else if(z7[15])
   begin
       x8 <= x7 + (y7 >>> 7);
       y8 <= y7 - (x7 >>> 7);
       z8 <= z7 + `rot7;
   end
   else
   begin
       x8 <= x7 - (y7 >>> 7);
       y8 <= y7 + (x7 >>> 7);
       z8 <= z7 - `rot7;
   end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        x9 <= 16'b0;                         
        y9 <= 16'b0;
        z9 <= 16'b0;
    end
    else if(z8[15])
   begin
       x9 <= x8 + (y8 >>> 8);
       y9 <= y8 - (x8 >>> 8);
       z9 <= z8 + `rot8;
   end
   else
   begin
       x9 <= x8 - (y8 >>> 8);
       y9 <= y8 + (x8 >>> 8);
       z9 <= z8 - `rot8;
   end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        x10 <= 16'b0;                        
        y10 <= 16'b0;
        z10 <= 16'b0;
    end
    else if(z9[15])
   begin
       x10 <= x9 + (y9 >>> 9);
       y10 <= y9 - (x9 >>> 9);
       z10 <= z9 + `rot9;
   end
   else
   begin
       x10 <= x9 - (y9 >>> 9);
       y10 <= y9 + (x9 >>> 9);
       z10 <= z9 - `rot9;
   end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        Quadrant[ 0] <= 1'b0;
        Quadrant[ 1] <= 1'b0;
        Quadrant[ 2] <= 1'b0;
        Quadrant[ 3] <= 1'b0;
        Quadrant[ 4] <= 1'b0;
        Quadrant[ 5] <= 1'b0;
        Quadrant[ 6] <= 1'b0;
        Quadrant[ 7] <= 1'b0;
        Quadrant[ 8] <= 1'b0;
        Quadrant[ 9] <= 1'b0;
        Quadrant[10] <= 1'b0;
    end
    else
    begin
        Quadrant[ 0] <= Phase[9:8];
        Quadrant[ 1] <= Quadrant[ 0];
        Quadrant[ 2] <= Quadrant[ 1];
        Quadrant[ 3] <= Quadrant[ 2];
        Quadrant[ 4] <= Quadrant[ 3];
        Quadrant[ 5] <= Quadrant[ 4];
        Quadrant[ 6] <= Quadrant[ 5];
        Quadrant[ 7] <= Quadrant[ 6];
        Quadrant[ 8] <= Quadrant[ 7];
        Quadrant[ 9] <= Quadrant[ 8];
        Quadrant[10] <= Quadrant[ 9];
    end
end

always @ (posedge CLK_50M or negedge RST_N)
begin
    if(!RST_N)
    begin
        Cos <= 16'b0;
        Sin <= 16'b0;
        Error <= 16'b0;
    end
    else
    begin
        Error <= z10;
        case(Quadrant[10])
            2'b00: //if the Phase is in first Quadrant,the Sin(X)=Sin(A),Cos(X)=Cos(A)
                begin
                    Cos <= x10;
                    Sin <= y10;
                end
            2'b01: //if the Phase is in second Quadrant,the Sin(X)=Sin(A+90)=CosA,Cos(X)=Cos(A+90)=-SinA
                begin
                    Cos <= ~(y10) + 1'b1;//-Sin
                    Sin <= x10;//Cos
                end
            2'b10: //if the Phase is in third Quadrant,the Sin(X)=Sin(A+180)=-SinA,Cos(X)=Cos(A+180)=-CosA
                begin
                    Cos <= ~(x10) + 1'b1;//-Cos
                    Sin <= ~(y10) + 1'b1;//-Sin
                end
            2'b11: //if the Phase is in forth Quadrant,the Sin(X)=Sin(A+270)=-CosA,Cos(X)=Cos(A+270)=SinA
                begin
                    Cos <= y10;//Sin
                    Sin <= ~(x10) + 1'b1;//-Cos
                end
        endcase
    end
end

endmodule