// Lara e Fúlvio

module Display7(A,B,C,D,a,b,c,d,e,f,g);

input A,B,C,D; 
output a,b,c,d,e,f,g; //segmentos do display de 7 segmentos

assign a = B & ~C & ~D || ~A & ~B & ~C & D;
assign b = B & ~C & D || B & C & ~D;
assign c = ~B & C & ~D;
assign d = B & ~C & ~D || 	B&C&D || ~A & ~B & ~C & D;
assign e = B & ~C || D;
assign f = C&D || ~B & C || ~A & ~B & D;
assign g = ~A & ~B & ~C || B&C&D;

endmodule 