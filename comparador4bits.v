module comparador4bits(X, Y, maior, menor, igual);

input [3:0] X, Y;
output maior, menor, igual;
wire [3:0] aux_maior, aux_menor, aux_igual;

comparador1bit bloco3(X[3], Y[3], aux_maior[3], aux_menor[3], aux_igual[3], 1); //habilita começa com 1 
comparador1bit bloco2(X[2], Y[2], aux_maior[2], aux_menor[2], aux_igual[2], aux_igual[3]); //o habilita desse é o resultado do aux_igual do anterior
comparador1bit bloco1(X[1], Y[1], aux_maior[1], aux_menor[1], aux_igual[1], aux_igual[2]);
comparador1bit bloco0(X[0], Y[0], aux_maior[0], aux_menor[0], aux_igual[0], aux_igual[1]);

assign menor = aux_menor[3] | aux_menor[2] | aux_menor[1] | aux_menor[0];
assign maior = aux_maior[3] | aux_maior[2] | aux_maior[1] | aux_maior[0];
assign igual = aux_igual[0];

endmodule