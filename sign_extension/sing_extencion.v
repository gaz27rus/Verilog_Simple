module sign_ext(
    input [11:0]imm,

    output [31:0]ext_imm
);

wire [19:0] ext = 0;
assign ext_imm = {ext, imm};

endmodule

module neg(
    input [31:0]im,

    output [31:0]inv
);

assign inv = ~im + 1'b1;

endmodule

module sing_extencion(
	input [11:0] in,
	
	output [31:0] out
);

wire [31:0] betw;

sign_ext se(.imm(in), .ext_imm(betw));
neg ng(.im(betw), .inv(out));

endmodule