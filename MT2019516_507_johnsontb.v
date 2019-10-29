`timescale 10ns/1ns
module testbench;
reg clk,reset;
wire [3:0]q;
johnson j(clk,q,reset);
initial begin
$dumpfile("johnson.vcd");
$dumpvars(0,testbench);
$monitor("q=%h",q);

  clk=1'b0;
  reset = 1;#3
  reset=0;
end
always #3 clk=~clk;
initial #200 $finish;
endmodule
