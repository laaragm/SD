module decodificador7s(entrada, saida);

input [3:0] entrada;
output reg [0:6] saida;

always@(entrada)
begin
	case(entrada)
		4'b0000:
			saida = 7'b0000001;
		4'b0001:
			saida = 7'b1001111;
		4'b0010:
			saida = 7'b0010010;
		4'b0011:
			saida = 7'b0000110;
		4'b0100:
			saida = 7'b1001100;
		4'b0101:
			saida = 7'b0100100;
		4'b0110:
			saida = 7'b0100000;
		4'b0111:
			saida = 7'b0001111;
		4'b1000:
			saida = 7'b0000000;
		4'b1001:
			saida = 7'b0001100;
		default:
			saida = 7'b1111111;
	endcase
end


endmodule
