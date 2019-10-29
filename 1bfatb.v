`timescale 10ns/1ns
//`include "1bfa.v"
module fulladder_tb;
wire sum, carry;
reg p,q,r;
fulladder f1(
  .a(p),
  .b(q),
  .cin(r),
  .s(sum),
  .cout(carry)
  );
initial begin
$dumpfile("1bfa.vcd");
$dumpvars(0,fulladder_tb);
p=0;q=0;r=0;
#5  $display("sum is %d, carry is %d",sum,carry);
p=0;q=0;r=1;
#5  $display("sum is %d, carry is %d",sum,carry);
p=0;q=1;r=0;
#5  $display("sum is %d, carry is %d",sum,carry);
p=0;q=1;r=1;
#5  $display("sum is %d, carry is %d",sum,carry);
p=1;q=0;r=0;
#5  $display("sum is %d, carry is %d",sum,carry);
p=1;q=0;r=1;
#5  $display("sum is %d, carry is %d",sum,carry);
p=1;q=1;r=0;
#5  $display("sum is %d, carry is %d",sum,carry);
p=1;q=1;r=1;
#5  $display("sum is %d, carry is %d",sum,carry);
$finish;
end
endmodule
