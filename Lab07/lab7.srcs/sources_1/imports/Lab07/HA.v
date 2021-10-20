//=======================================
// The Half Adder  (1 bit)
// Design : yhchen
// Date  : 2013.3.5
// vesion : v1.0
//=======================================
module HA(x, y, cout, sum);

	input x, y;
	output cout, sum;
	
	assign sum = (x^y);
	assign cout = x&y;

endmodule