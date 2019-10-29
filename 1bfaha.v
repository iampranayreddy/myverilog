`timescale 10ns/1ns
//`include "1bha.v"
module obfaha(u,v,w,p,q);
//wire s,c,w1,w2,w3;
//reg a,b,cin;
input u,v,w;
output p,q;
wire w1,w2,w3;

halfadder h1(
  .a(u),
  .b(v),
  .s(w1),
  .c(w2)
  );
halfadder h2(
  .a(w),
  .b(w1),
  .s(p),
  .c(w3)
  );
or o(q,w3,w2);
endmodule
