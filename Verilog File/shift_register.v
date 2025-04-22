module shift_register (digit4,digit3,digit2,digit1,clk,load,reset,result4,result3,result2,result1);
input [3:0] digit4, digit3, digit2, digit1;
input clk,load,reset;
output reg [3:0] result4,result3,result2,result1;

always@ (posedge clk, posedge reset)
	if (reset)
	begin
		result4[0]<=0;
		result4[1]<=0;
		result4[2]<=0;
		result4[3]<=0;

		result3[0]<=0;
		result3[1]<=0;
		result3[2]<=0;
		result3[3]<=0;
		
		result2[0]<=0;
		result2[1]<=0;
		result2[2]<=0;
		result2[3]<=0;
		
		result1[0]<=0;
		result1[1]<=0;
		result1[2]<=0;
		result1[3]<=0;
	
	end
	
	else if(load)
	begin
		result4[0]<=digit4[0];
		result4[1]<=digit4[1];
		result4[2]<=digit4[2];
		result4[3]<=digit4[3];

		result3[0]<=digit3[0];
		result3[1]<=digit3[1];
		result3[2]<=digit3[2];
		result3[3]<=digit3[3];
		
		result2[0]<=digit2[0];
		result2[1]<=digit2[1];
		result2[2]<=digit2[2];
		result2[3]<=digit2[3];
		
		result1[0]<=digit1[0];
		result1[1]<=digit1[1];
		result1[2]<=digit1[2];
		result1[3]<=digit1[3];
		
	end

endmodule
