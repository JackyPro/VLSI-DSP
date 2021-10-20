`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/20 10:41:42
// Design Name: 
// Module Name: lab5
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


module lab5(clka, rst, wea, douta);
input clka, wea, rst;
output [15:0] douta;

wire [15:0] addra;
wire [15:0] dina;
reg [15:0]  cnt;

mem your_instance_name (
  .clka(clka),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [15 : 0] addra
  .dina(dina),    // input wire [15 : 0] dina
  .douta(douta)  // output wire [15 : 0] douta
);

always@(posedge clka or negedge rst) begin
if(~rst) begin
	cnt <= 0;
end
else begin
	cnt <= cnt + 1'b1;
end
end

assign addra = cnt;
assign dina = cnt;


endmodule
