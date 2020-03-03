module mux41(A, B, I0, I1, I2, I3, S);

input A, B, I0, I1, I2, I3;
output S;

assign S = (~A&~B&I0) | (~A&B&I1) | (A&~B&I2) | (A&B&I3);

endmodule