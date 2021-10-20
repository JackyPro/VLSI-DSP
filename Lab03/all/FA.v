//=======================================
// The Full Adder  (1 bit)
// Design : yhchen
// Date  : 2013.3.5
// vesion : v1.0
//=======================================

module FA(a, b, c, cout, sum);

	input a, b, c;
	output cout, sum;
	
	assign sum = (a^b)^c;
	assign cout = ((a^b)&c)|(a&b);

endmodule