`timescale 10ns/10ns
module testbench;
wire o;
reg [7:0]a;
reg [2:0]s;
mux8 m(a,s,o);
initial begin
  a=8'b10010110;s=3'b000;#10;$display("%d",o);
  a=8'b10010110;s=3'b001;#10;$display("%d",o);
  a=8'b10010110;s=3'b010;#10;$display("%d",o);
  a=8'b10010110;s=3'b011;#10;$display("%d",o);
  a=8'b10010110;s=3'b100;#10;$display("%d",o);
  a=8'b10010110;s=3'b101;#10;$display("%d",o);
  a=8'b10010110;s=3'b110;#10;$display("%d",o);
  a=8'b10010110;s=3'b111;#10;$display("%d",o);
end
endmodule
