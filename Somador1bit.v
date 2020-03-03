module somador1bit(A, B, TE, HEX0);

input A, B, TE;
wire S, TS;
output reg [0:6]HEX0;

assign S = (~A&~B&TE) | (~A&B&~TE) | (A&~B&~TE) | (A&B&TE); //ou A^B^TE
assign TS = (~A&B&TE) | (A&~B&TE) | (A&B&~TE) | (A&B&TE); //(A0&B0)|(B0&TE)|(A0&TE)

//Chama o decodificador pra exibir o resultado
//decodificadorBCD(S, display);
//ou então faz um case pequeno pra exibir
always@(S, TS)
	begin
		case({S, TS})
			2'b00: HEX0 = 7'b0000001; //0+0 = 0 = 0
			2'b01: HEX0 = 7'b0011111; //0+1 = 1 = 1
			2'b10: HEX0 = 7'b0010010; //1+0 = 1 = 1
			2'b11: HEX0 = 7'b0000111; //1+1 = 10(binário) = 2(decimal)
			default: HEX0 = 7'b1111111;	
		endcase
	end

endmodule