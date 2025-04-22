module counter (clk,cin,reset,digit);
input clk,reset,cin;
output reg [3:0] digit;

always@ (posedge clk,posedge reset)
	if(reset)
		digit = 4'b0000;
	else if (digit==4'b1010)
		digit<=4'b0000;
	else if (cin ==1)
		digit<=digit+1'b1;

endmodule
