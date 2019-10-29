module fulladder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire w1,w2,w3;
xor (s,a,b,cin);
xor (w1,a,b);
and (w2,cin,w1);
and (w3,a,b);
or (cout,w3,w2);
endmodule
