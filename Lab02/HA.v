//=======================================
// The Half Adder  (1 bit)
// Design : yhchen
// Date  : 2013.3.5
// vesion : v1.0
//=======================================

module HA(a, b, cout, sum);

    input a, b;
    output cout, sum;
    
   
    assign sum = a^b;
    assign cout = a&b;


endmodule

