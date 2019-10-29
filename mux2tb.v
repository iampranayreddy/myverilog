`timescale 10ns/1ns
module test;
reg a,b,s;
wire o;
mux2 m2(.a(a),.b(b),.s(s),.o(o));
initial begin
a=0;b=1;s=1;
#10;
$display("%d",o);
a=0;b=1;s=0;
#10
$display("%d",o);
$finish;
end
endmodule
