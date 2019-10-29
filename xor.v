module xor1(a,b,c);
input a,b;
output c;
wire nota,notb,anotb,bnota;
not n1(nota,a);
not n2(notb,b);
and a1(anotb,a,notb);
and a2(bnota,b,nota);
or o1(c,anotb,bnota);
endmodule
