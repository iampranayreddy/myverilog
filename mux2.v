module mux2(a,b,s,o);
input a,b,s;
output o;
wire w1,w2,w3;
//behavioural
assign o=((~s&a)|(s&b));
//structural
/*
not (w1,s);
and (w2,w1,a);
and (w3,s,b);
or (o,w2,w3);
*/
endmodule
