module p_wordset_led(p_wordset,green_led2);

input p_wordset;
output reg green_led2;

always @(*)
if (p_wordset==1'b1)
	green_led2=1'b1;
else
	green_led2=1'b0;
	
endmodule