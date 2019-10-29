`timescale 1ns/100ps
module xor1_tb;
reg p,q;
wire r;
xor1 x1(
  .a(p),
  .b(q),
  .c(r)
  );
  initial begin
$dumpfile("xor1.vcd");
$dumpvars(0,xor1_tb);
p=0;q=0;$display("%d",r); #5;
p=0;q=1;$display("%d",r); #5;
p=1;q=0;$display("%d",r); #5;
p=1;q=1;$display("%d",r); #5;
//$finish;
end
endmodule
