//Lara e Fúlvio

module Soma4bits(a0, b0, a1, b1, a2, b2, a3, b3, tE, HEX0, HEX1);

input a0, b0, a1, b1, a2, b2, a3, b3,tE;

output [0:6] HEX0, HEX1;

wire b0e, b1e, b2e, b3e, b4e;
wire tS0, tS1, tS2, tS3, tS4;
wire s0, s1, s2, s3, s4;
wire bC = 0;
wire aC = 0;
assign b0e = b0 ^ tE;
assign b1e = b1 ^ tE;
assign b2e = b2 ^ tE;
assign b3e = b3 ^ tE;
assign b4e = bC ^ tE;

somadorcompleto1bit bloco0(a0,b0e,tE,s0,tS0);

somadorcompleto1bit bloco1(a1,b1e,tS0,s1,tS1);

somadorcompleto1bit bloco2(a2,b2e,tS1,s2,tS2);

somadorcompleto1bit bloco3(a3,b3e,tS2,s3,tS3);

somadorcompleto1bit bloco4(aC,b4e,tS3,s4,tS4);


wire[4:0] soma = {s4, s3, s2, s1, s0};
wire[3:0] quociente = soma/10;
wire[3:0] resto = soma%10;

decodificador7s blocouni(resto, HEX0);
decodificador7s blocodez(quociente, HEX1);


endmodule