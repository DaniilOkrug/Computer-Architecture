module Multiplexor (
	input x1 ,
	input x2 ,
	input s,
	output f
);
	assign f = (s & x2) | ((~ s) & x1);
endmodule