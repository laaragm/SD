module comparador1bit(A, B, maior, menor, igual, habilita);

input A, B, habilita;
output maior, menor, igual;

assign maior = (A&~B) & habilita;
assign menor = (~A&B) & habilita;
assign igual = ((~A&~B)+(A&B)) & habilita;

endmodule