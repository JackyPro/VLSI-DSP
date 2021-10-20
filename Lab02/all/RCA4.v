`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/29 15:40:57
// Design Name: 
// Module Name: RCA4
// Project Name: 
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


module RCA4(a, b, cout, s);

    input 	[3:0]	a;
    input   [1:0]   b;
    output	[3:0] 	s;
    output			cout;
        
    wire    [3:0]	c, bb;
    assign bb[3] = ~b[1];
    assign bb[2] = ~b[0];
    assign bb[1] = b[1];
    assign bb[0] = b[0];
    
    HA		U1_HA(.a(a[0]), .b(bb[0]), .cout(c[0]), .sum(s[0]));
    FA		U2_FA(.a(a[1]), .b(bb[1]), .c(c[0]), .cout(c[1]), .sum(s[1]));
    FA		U3_FA(.a(a[2]), .b(bb[2]), .c(c[1]), .cout(c[2]), .sum(s[2]));
    FA		U4_FA(.a(a[3]), .b(bb[3]), .c(c[2]), .cout(c[3]), .sum(s[3]));
	
	assign	cout = c[3];

endmodule

