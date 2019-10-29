`timescale 1ns/1ps
module fsm_tb;
reg clk,rst,x;
wire z;
fsm uut(.clk(clk),.rst(rst),.x(x),.z(z));
initial begin
$dumpfile ("fsm_out.vcd"); 
$dumpvars(0,fsm_tb);
clk=0;
end

always #10 clk=~clk;

initial begin
x=0;
#10;
rst=0;
#10
rst=1;
#10;
rst=0;
end
initial begin
#10;
x=1;
#10;
x=1;
#10;
x=1;
#10;
x=0;
#10;
x=1;
#10;
end
initial
#1000 $finish;
endmodule

