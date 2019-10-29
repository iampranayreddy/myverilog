module fsm(clk,rst,x,z);
input clk,rst,x;
output reg z;
reg [1:0]p,n;
localparam a=2'b00,b=2'b01,c=2'b10;
always @(x,p)
case(p)
a: if(x)
begin
n=b;z=0;
end
else begin
n=a;z=1;
end
b: if(x)
begin
n=c;z=0;
end
else begin
n=b;z=0;
end
c: if(x)
begin
n=a;z=1;
end
else begin
n=c;z=0;
end
default:n=2'bxx;
endcase
always@(posedge clk,posedge rst)
begin
if(rst)
p<=a;
else
p<=n;
end
endmodule
