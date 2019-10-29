`timescale 10ns/1ns
module johnson(clk,q,reset);
input clk,reset;
output [3:0] q;
reg [3:0] d;
initial d=4'b1111;
dff d3(clk,d[3],q[3],reset);
dff d2(clk,d[2],q[2],reset);
dff d1(clk,d[1],q[1],reset);
dff d0(clk,d[0],q[0],reset);
always @(*)
begin
d[3]=~q[0];
d[2]=q[3];
d[1]=q[2];
d[0]=q[1];
end
endmodule
