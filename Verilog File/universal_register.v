module universal_register(clk,reset,sel,P4,P3,P2,P1,D4,D3,D2,D1,result4,result3,result2,result1);
input clk,reset,sel;
input [3:0] P4,P3,P2,P1,D4,D3,D2,D1;
output reg [3:0] result4,result3,result2,result1;

always @(posedge clk,posedge reset)
begin
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
	else begin
		case(sel)
			1'b0: 
			begin 
			result4[0]<=P4[0];
			result4[1]<=P4[1];
			result4[2]<=P4[2];
			result4[3]<=P4[3];

			result3[0]<=P3[0];
			result3[1]<=P3[1];
			result3[2]<=P3[2];
			result3[3]<=P3[3];
		
			result2[0]<=P2[0];
			result2[1]<=P2[1];
			result2[2]<=P2[2];
			result2[3]<=P2[3];
		
			result1[0]<=P1[0];
			result1[1]<=P1[1];
			result1[2]<=P1[2];
			result1[3]<=P1[3];
			end
			
			1'b1:
			begin 
			result4[0]<=D4[0];
			result4[1]<=D4[1];
			result4[2]<=D4[2];
			result4[3]<=D4[3];

			result3[0]<=D3[0];
			result3[1]<=D3[1];
			result3[2]<=D3[2];
			result3[3]<=D3[3];
		
			result2[0]<=D2[0];
			result2[1]<=D2[1];
			result2[2]<=D2[2];
			result2[3]<=D2[3];
		
			result1[0]<=D1[0];
			result1[1]<=D1[1];
			result1[2]<=D1[2];
			result1[3]<=D1[3];
			end
		endcase
	end
end

endmodule
