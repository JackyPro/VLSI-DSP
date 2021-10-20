//=======================================
// The fir  
// Design : yhchen
// Date  : 2013.4.16
// vesion : v1.0
//=======================================

module fir(

clk,
rst,
filter_in,
filter_out

);

	parameter WORD_SIZE  = 10;	
	parameter tap        = 21;
	
	input     clk, rst;
	input         signed[WORD_SIZE-1  :0] filter_in;
	output reg    signed[11:0]            filter_out;
/*
	output reg    signed[11:0]  out_check0,out_check1,out_check2,
								out_check3,out_check4,out_check5,
								out_check6,out_check7,out_check8;
*/
	reg           signed[WORD_SIZE-1  :0] delay_pipeline[tap-1:0];
//	wire          signed[WORD_SIZE*2-1:0] product[tap-1:0];
	wire          signed[15  :0]          product[tap-1:0];
	wire          signed[15+5:0]          sum,sum1,cuttemp_1;
	reg           signed[15+5:0]          cut_1,cutout_1;
	
	parameter     signed[5:0]coeff_0  = -6'd1;
	parameter     signed[5:0]coeff_1  =  6'd1;
	parameter     signed[5:0]coeff_2  =  6'd3;
	parameter     signed[5:0]coeff_3  =  6'd2;
	parameter     signed[5:0]coeff_4  = -6'd1;
	parameter     signed[5:0]coeff_5  = -6'd4;
	parameter     signed[5:0]coeff_6  = -6'd4;
	parameter     signed[5:0]coeff_7  =  6'd1;
	parameter     signed[5:0]coeff_8  =  6'd10;
	parameter     signed[5:0]coeff_9  =  6'd18;
	parameter     signed[5:0]coeff_10 =  6'd21;
	
	parameter     signed[5:0]coeff_11 =  6'd18;
	parameter     signed[5:0]coeff_12 =  6'd10;
	parameter     signed[5:0]coeff_13 =  6'd1;
	parameter     signed[5:0]coeff_14 = -6'd4;
	parameter     signed[5:0]coeff_15 = -6'd4;
	parameter     signed[5:0]coeff_16 = -6'd1;
	parameter     signed[5:0]coeff_17 =  6'd2;
	parameter     signed[5:0]coeff_18 =  6'd3;
	parameter     signed[5:0]coeff_19 =  6'd1;	
    parameter     signed[5:0]coeff_20 = -6'd1;

	assign	  product[ 0] = filter_in          * coeff_0;
	assign	  product[ 1] = delay_pipeline[ 0] * coeff_1;
	assign    product[ 2] = delay_pipeline[ 1] * coeff_2;
	assign	  product[ 3] = delay_pipeline[ 2] * coeff_3;
	assign	  product[ 4] = delay_pipeline[ 3] * coeff_4;
	assign	  product[ 5] = delay_pipeline[ 4] * coeff_5;
	assign	  product[ 6] = delay_pipeline[ 5] * coeff_6;
	assign	  product[ 7] = delay_pipeline[ 6] * coeff_7;
	assign	  product[ 8] = delay_pipeline[ 7] * coeff_8;
	assign	  product[ 9] = delay_pipeline[ 8] * coeff_9;
	assign	  product[10] = delay_pipeline[ 9] * coeff_10;
	assign	  product[11] = delay_pipeline[10] * coeff_11;
	assign	  product[12] = delay_pipeline[11] * coeff_12;
	assign	  product[13] = delay_pipeline[12] * coeff_13;
	assign	  product[14] = delay_pipeline[13] * coeff_14;
	assign	  product[15] = delay_pipeline[14] * coeff_15;
	assign	  product[16] = delay_pipeline[15] * coeff_16;
	assign	  product[17] = delay_pipeline[16] * coeff_17;
	assign	  product[18] = delay_pipeline[17] * coeff_18;
	assign	  product[19] = delay_pipeline[18] * coeff_19;
	assign	  product[20] = delay_pipeline[19] * coeff_20;
/*	
	assign    sum         = ((((((((((((((((((((
								product[ 0] + product[ 1])+ product[ 2])+ product[ 3])+ product[ 4])+
								product[ 5])+ product[ 6])+ product[ 7])+ product[ 8])+ product[ 9])+
								product[10])+ product[11])+ product[12])+ product[13])+ product[14])+
								product[15])+ product[16])+ product[17])+ product[18])+ product[19])+
								product[20]);
*/
	assign    sum1         = (
								product[ 0] + product[ 1]+ product[ 2]+ product[ 3]+ product[ 4]+
								product[ 5] + product[ 6]+ product[ 7]+ product[ 8] 
								);
    assign    sum          = (
								product[ 9] + product[10]+
								cuttemp_1   + product[11]+ product[12]+ product[13]+ product[14]+
								product[15] + product[16]+ product[17]+ product[18]+ product[19]+
								product[20]
								);
    assign    cuttemp_1    =  cutout_1;								
    always@(posedge clk)begin
	    if(rst)begin
		  cut_1    <= 21'd0;
		  cutout_1 <= 21'd0;
	      end
		else
		  cut_1    <= sum1;
		  cutout_1 <= cut_1;
		  end
    always@(posedge clk)begin
      if(rst)begin
        delay_pipeline[ 0]  <= 10'd0;
        delay_pipeline[ 1]  <= 10'd0;
		delay_pipeline[ 2]  <= 10'd0;
		delay_pipeline[ 3]  <= 10'd0;
		delay_pipeline[ 4]  <= 10'd0;
		delay_pipeline[ 5]  <= 10'd0;
        delay_pipeline[ 6]  <= 10'd0;
		delay_pipeline[ 7]  <= 10'd0;
		delay_pipeline[ 8]  <= 10'd0;
		delay_pipeline[ 9]  <= 10'd0;
		delay_pipeline[10]  <= 10'd0;
		delay_pipeline[11]  <= 10'd0;
		delay_pipeline[12]  <= 10'd0;
		delay_pipeline[13]  <= 10'd0;
		delay_pipeline[14]  <= 10'd0;
		delay_pipeline[15]  <= 10'd0;
		delay_pipeline[16]  <= 10'd0;
		delay_pipeline[17]  <= 10'd0;
		delay_pipeline[18]  <= 10'd0;
		delay_pipeline[19]  <= 10'd0;
	    end
	  else begin
	    delay_pipeline[ 0]  <= filter_in;
		delay_pipeline[ 1]  <= delay_pipeline[ 0];
		delay_pipeline[ 2]  <= delay_pipeline[ 1];
		delay_pipeline[ 3]  <= delay_pipeline[ 2];
		delay_pipeline[ 4]  <= delay_pipeline[ 3];
		delay_pipeline[ 5]  <= delay_pipeline[ 4];
		delay_pipeline[ 6]  <= delay_pipeline[ 5];
		delay_pipeline[ 7]  <= delay_pipeline[ 6];
		delay_pipeline[ 8]  <= delay_pipeline[ 7];
		delay_pipeline[ 9]  <= delay_pipeline[ 8];
		delay_pipeline[10]  <= delay_pipeline[ 9];
		delay_pipeline[11]  <= delay_pipeline[10];
		delay_pipeline[12]  <= delay_pipeline[11];
		delay_pipeline[13]  <= delay_pipeline[12];
		delay_pipeline[14]  <= delay_pipeline[13];
		delay_pipeline[15]  <= delay_pipeline[14];
		delay_pipeline[16]  <= delay_pipeline[15];
        delay_pipeline[17]  <= delay_pipeline[16];
		delay_pipeline[18]  <= delay_pipeline[17];
		delay_pipeline[19]  <= delay_pipeline[18];
	    end
	end

	always@(posedge clk)begin
	  if(rst)begin
/*
	    out_check0  <= 12'd0;
		out_check1  <= 12'd0;
		out_check2  <= 12'd0;
		out_check3  <= 12'd0;
		out_check4  <= 12'd0;
		out_check5  <= 12'd0;
		out_check6  <= 12'd0;
		out_check7  <= 12'd0;
		out_check8  <= 12'd0;
*/
		filter_out  <= 12'd0;
		end
	  else begin
//	    filter_out <= summ;
/*
		out_check0 <= {sum[11:1],1'b0};
		out_check1 <= {sum[11:2],2'b00};
		out_check2 <= {sum[11:3],3'b000};
		out_check3 <= {sum[11:4],4'b0000};
		out_check4 <= {sum[11:5],5'b0_0000};
		out_check5 <= {sum[11:6],6'b00_0000};
		out_check6 <= {sum[11:7],7'b000_0000};
		out_check7 <= {sum[11:8],8'b0000_0000};
		out_check8 <= {sum[11:9],9'b0_0000_0000};
*/
//		filter_out <= $signed(sum[15:0]);
		filter_out <= {sum[11:1],1'b0};
//可以取到12bit
		end
	end
	

	
endmodule
    