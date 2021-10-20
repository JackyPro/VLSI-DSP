module Top(en, up, clk, rst, dout);

input en, up;
input clk, rst;
output [15:0] dout;

wire [15:0] dout;
reg [15:0] dout_reg;

reg [3:0] counter1, counter2;

assign dout = dout_reg;

always@(posedge clk or negedge rst) begin
	if(!rst) begin
		dout_reg <= 16'b0;
		counter1 <= 4'b0;
		counter2 <= 4'b0;
	end
	else begin
		if(!en) begin
			dout_reg <= dout_reg;
			counter1 <= 4'b0;
			counter2 <= 4'b0;
		end
		else begin
			if(up) begin
				counter2 <= 4'b0;
				if(counter1 < 4'b1111) begin
					if(dout_reg == 16'hffff) begin
						dout_reg <= dout_reg;
					end
					else begin
						dout_reg <= dout_reg + 1'b1;
						counter1 <= counter1 + 1'b1;
					end					
				end
				else
				begin
					if(dout_reg >= 16'hfffd) begin
						dout_reg <= 16'hffff;
					end 
					else begin
						dout_reg <= dout_reg + 2'b10;
					end
				end			
			end
			else begin
				counter1 <= 4'b0;
				if(counter2 < 4'b1111) begin
					if(dout_reg == 16'b0) begin
						dout_reg <= dout_reg;
					end
					else begin
						dout_reg <= dout_reg - 1'b1;
						counter2 <= counter2 + 1'b1;
					end					
				end
				else
				begin
					if(dout_reg <= 2'b10) begin
						dout_reg <= 16'b0;
					end
					else begin
						dout_reg <= dout_reg - 2'b10;
					end					
				end			
			end
		end
	end
end
/*
always@(up or en) begin  //can't be synthesize : solution: counter1 , counter2!
	
		counter <= 4'b0;
	
end
*/
endmodule