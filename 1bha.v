`timescale 10ns/1ns
module halfadder(a,b,s,c);
input a,b;
output s,c;
and (c,a,b);
xor (s,a,b);
endmodule
