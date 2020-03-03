module decodificadorBCD(caso, HEX0);

input caso;
output reg [0:6]HEX0; //pois são 7 posições no vetor, uma pra cada letra
//0 é aceso e 1 apagado
always@(caso)
	begin
	case (caso)
			4'b0000: HEX0 = 7'b0000001; //0 acende  todas as letras menos a g(que é presentada pelo número 7
			4'b0001: HEX0 = 7'b0011111; //1
			4'b0010: HEX0 = 7'b0010010; //2
			4'b0011: HEX0 = 7'b0000111; //3
			4'b0100: HEX0 = 7'b1001100; //4
			4'b0101: HEX0 = 7'b0100100; //5
			4'b0110: HEX0 = 7'b0100000; //6
			4'b0111: HEX0 = 7'b0001111; //7
			4'b1000: HEX0 = 7'b0000000; //8
			4'b1001: HEX0 = 7'b0001100; //9
			default: HEX0 = 7'b1111111; //todos os segmentos apagados
	endcase	
end

	

endmodule