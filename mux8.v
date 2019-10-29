//mux 8:1 using mux 2:1
module mux8(a,s,o);
input [7:0]a;
input [2:0]s;
output o;
//wire w1,w2,w3,w4,w5,w6;
wire [5:0]w;
mux2 m0(w[4],w[5],s[2],o);
mux2 m1(w[0],w[1],s[1],w[4]);
mux2 m2(w[2],w[3],s[1],w[5]);
mux2 m3(a[0],a[1],s[0],w[0]);
mux2 m4(a[2],a[3],s[0],w[1]);
mux2 m5(a[4],a[5],s[0],w[2]);
mux2 m6(a[6],a[7],s[0],w[3]);
endmodule
