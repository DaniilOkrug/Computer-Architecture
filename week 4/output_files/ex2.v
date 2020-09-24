module ex2
(
		input  KEY, 
		output [7:0] HEX0,
		output [7:0] HEX1,
		output [7:0] HEX2,
		output [7:0] HEX3,
		output [7:0] HEX4,
		output [7:0] HEX5
);
//01.03.08
genvar j;
generate
	for (j=0; j<6; j=j+1)
	begin: gen2
	case(j)
		0: assign HEX0[6]=~KEY,
					 HEX0[7]=~KEY;
		1: assign HEX1[3]=~KEY,
					 HEX1[4]=~KEY,
					 HEX1[5]=~KEY,
					 HEX1[6]=~KEY;
		2: assign HEX2[6]=~KEY,
					 HEX2[7]=~KEY;
		3: assign HEX3[4]=~KEY,
					 HEX3[5]=~KEY;
		4: assign HEX4[6]=~KEY,
					 HEX4[7]=~KEY;
		5: assign HEX5[7]=~KEY;
		endcase
	end
endgenerate
endmodule 