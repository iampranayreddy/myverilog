`timescale 10ns/1ns
//`include "1bfaha.v"
module obfahatb;
reg u,v,w;
wire p,q;

obfaha m1(.u(u),
.v(v),
.w(w),
.p(p),
.q(q)
);
initial
begin
$dumpfile("1bfaha.vcd");
$dumpvars(0,obfahatb);

u=0;v=0;w=0;#10
$display("%d,%d",p,q);
u=0;v=0;w=1;#10
$display("%d,%d",p,q);
u=0;v=1;w=0;#10
$display("%d,%d",p,q);
u=0;v=1;w=1;#10
$display("%d,%d",p,q);
u=1;v=0;w=0;#10
$display("%d,%d",p,q);
u=1;v=0;w=1;#10
$display("%d,%d",p,q);
u=1;v=1;w=0;#10
$display("%d,%d",p,q);
u=1;v=1;w=1;#10
$display("%d,%d",p,q);
$finish;
end

endmodule
