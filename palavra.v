module palavra(HEX0, HEX1, HEX2, HEX3, HEX4);

//escrever a palavra cefet no display

output [0:6]HEX0, HEX1, HEX2, HEX3, HEX4;

assign HEX0 = 7'b0110001; //c
assign HEX1 = 7'b0110000; //e
assign HEX2 = 7'b0111000; //f
assign HEX3 = 7'b0110000; //e
assign HEX4 = 7'b1110000; //t

endmodule