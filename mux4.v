module mux4(a,b,c,d,s,o);
input a,b,c,d;
input [1:0]s;
output o;
wire w1,w2;
//behavioural and without using mux2
/*assign o=((~s[1]&~s[0]&a)|(~s[1]&s[0]&b)|(s[1]&~s[0]&c)|(s[1]&s[0]&d));*/
//with using mux2
mux2 m1(a,b,s[0],w1);
mux2 m2(c,d,s[0],w2);
mux2 m3(w1,w2,s[1],o);
//
endmodule
