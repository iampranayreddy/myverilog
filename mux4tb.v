`timescale 10ns/1ns
module stimulus;
reg a,b,c,d;
reg [1:0]s;
wire o;
mux4 m(a,b,c,d,s,o);
initial begin
a=1;b=1;c=0;d=0;s=2'd0;#10; $display("%d",o);
a=1;b=0;c=0;d=0;s=2'd1;#10; $display("%d",o);
a=1;b=1;c=0;d=0;s=2'd2;#10; $display("%d",o);
a=1;b=1;c=0;d=1;s=2'd3;#10; $display("%d",o);
end
endmodule
