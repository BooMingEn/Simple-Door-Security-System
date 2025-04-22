module register_set_password (digit4,digit3,digit2,digit1,u1_passwordset4,u1_passwordset3,u1_passwordset2,
u1_passwordset1,u2_passwordset4,u2_passwordset3,u2_passwordset2,u2_passwordset1,u3_passwordset4,u3_passwordset3
,u3_passwordset2,u3_passwordset1,u4_passwordset4,u4_passwordset3,u4_passwordset2,u4_passwordset1,u5_passwordset4
,u5_passwordset3,u5_passwordset2,u5_passwordset1, u6_passwordset4, u6_passwordset3, u6_passwordset2, 
u6_passwordset1, u7_passwordset4, u7_passwordset3, u7_passwordset2, u7_passwordset1, u8_passwordset4, 
u8_passwordset3, u8_passwordset2, u8_passwordset1, u9_passwordset4, u9_passwordset3,u9_passwordset2, 
u9_passwordset1, u10_passwordset4, u10_passwordset3, u10_passwordset2, u10_passwordset1,sw10,sw9,sw8,sw7,sw6
,sw5,sw4,sw3,sw2,sw1,reset,clk,p_wordset);

input [3:0] digit4, digit3, digit2, digit1;
input sw1,sw2,sw3,sw4,sw5,sw6,sw7,sw8,sw9,sw10,reset,clk;

output reg [3:0] u1_passwordset4,u1_passwordset3,u1_passwordset2,u1_passwordset1,u2_passwordset4,u2_passwordset3;
output reg [3:0] u2_passwordset2,u2_passwordset1,u3_passwordset4,u3_passwordset3,u3_passwordset2,u3_passwordset1;
output reg [3:0] u4_passwordset4,u4_passwordset3,u4_passwordset2,u4_passwordset1,u5_passwordset4,u5_passwordset3;
output reg [3:0] u5_passwordset2,u5_passwordset1, u6_passwordset4, u6_passwordset3, u6_passwordset2, u6_passwordset1;
output reg [3:0] u7_passwordset4, u7_passwordset3, u7_passwordset2, u7_passwordset1, u8_passwordset4;
output reg [3:0] u8_passwordset3,u8_passwordset2, u8_passwordset1, u9_passwordset4, u9_passwordset3,u9_passwordset2;
output reg [3:0] u9_passwordset1,u10_passwordset4, u10_passwordset3, u10_passwordset2, u10_passwordset1;
output reg p_wordset;

always@ (posedge clk, posedge reset)
begin
	if(reset)
	begin
		u1_passwordset4[0]<=0;
		u1_passwordset4[1]<=0;
		u1_passwordset4[2]<=0;
		u1_passwordset4[3]<=0;

		u1_passwordset3[0]<=0;
		u1_passwordset3[1]<=0;
		u1_passwordset3[2]<=0;
		u1_passwordset3[3]<=0;
		
		u1_passwordset2[0]<=0;
		u1_passwordset2[1]<=0;
		u1_passwordset2[2]<=0;
		u1_passwordset2[3]<=0;
		
		u1_passwordset1[0]<=1;
		u1_passwordset1[1]<=0;
		u1_passwordset1[2]<=0;
		u1_passwordset1[3]<=0;

		u2_passwordset4[0]<=0;
		u2_passwordset4[1]<=0;
		u2_passwordset4[2]<=0;
		u2_passwordset4[3]<=0;

		u2_passwordset3[0]<=0;
		u2_passwordset3[1]<=0;
		u2_passwordset3[2]<=0;
		u2_passwordset3[3]<=0;
		
		u2_passwordset2[0]<=0;
		u2_passwordset2[1]<=0;
		u2_passwordset2[2]<=0;
		u2_passwordset2[3]<=0;
		
		u2_passwordset1[0]<=0;
		u2_passwordset1[1]<=1;
		u2_passwordset1[2]<=0;
		u2_passwordset1[3]<=0;

		u3_passwordset4[0]<=0;
		u3_passwordset4[1]<=0;
		u3_passwordset4[2]<=0;
		u3_passwordset4[3]<=0;

		u3_passwordset3[0]<=0;
		u3_passwordset3[1]<=0;
		u3_passwordset3[2]<=0;
		u3_passwordset3[3]<=0;
		
		u3_passwordset2[0]<=0;
		u3_passwordset2[1]<=0;
		u3_passwordset2[2]<=0;
		u3_passwordset2[3]<=0;
		
		u3_passwordset1[0]<=1;
		u3_passwordset1[1]<=1;
		u3_passwordset1[2]<=0;
		u3_passwordset1[3]<=0;

		u4_passwordset4[0]<=0;
		u4_passwordset4[1]<=0;
		u4_passwordset4[2]<=0;
		u4_passwordset4[3]<=0;

		u4_passwordset3[0]<=0;
		u4_passwordset3[1]<=0;
		u4_passwordset3[2]<=0;
		u4_passwordset3[3]<=0;
		
		u4_passwordset2[0]<=0;
		u4_passwordset2[1]<=0;
		u4_passwordset2[2]<=0;
		u4_passwordset2[3]<=0;
		
		u4_passwordset1[0]<=0;
		u4_passwordset1[1]<=0;
		u4_passwordset1[2]<=1;
		u4_passwordset1[3]<=0;

		u5_passwordset4[0]<=0;
		u5_passwordset4[1]<=0;
		u5_passwordset4[2]<=0;
		u5_passwordset4[3]<=0;

		u5_passwordset3[0]<=0;
		u5_passwordset3[1]<=0;
		u5_passwordset3[2]<=0;
		u5_passwordset3[3]<=0;
		
		u5_passwordset2[0]<=0;
		u5_passwordset2[1]<=0;
		u5_passwordset2[2]<=0;
		u5_passwordset2[3]<=0;
		
		u5_passwordset1[0]<=1;
		u5_passwordset1[1]<=0;
		u5_passwordset1[2]<=1;
		u5_passwordset1[3]<=0;

		u6_passwordset4[0]<=0;
		u6_passwordset4[1]<=0;
		u6_passwordset4[2]<=0;
		u6_passwordset4[3]<=0;

		u6_passwordset3[0]<=0;
		u6_passwordset3[1]<=0;
		u6_passwordset3[2]<=0;
		u6_passwordset3[3]<=0;
		
		u6_passwordset2[0]<=0;
		u6_passwordset2[1]<=0;
		u6_passwordset2[2]<=0;
		u6_passwordset2[3]<=0;
		
		u6_passwordset1[0]<=0;
		u6_passwordset1[1]<=1;
		u6_passwordset1[2]<=1;
		u6_passwordset1[3]<=0;

		u7_passwordset4[0]<=0;
		u7_passwordset4[1]<=0;
		u7_passwordset4[2]<=0;
		u7_passwordset4[3]<=0;

		u7_passwordset3[0]<=0;
		u7_passwordset3[1]<=0;
		u7_passwordset3[2]<=0;
		u7_passwordset3[3]<=0;
		
		u7_passwordset2[0]<=0;
		u7_passwordset2[1]<=0;
		u7_passwordset2[2]<=0;
		u7_passwordset2[3]<=0;
		
		u7_passwordset1[0]<=1;
		u7_passwordset1[1]<=1;
		u7_passwordset1[2]<=1;
		u7_passwordset1[3]<=0;

		u8_passwordset4[0]<=0;
		u8_passwordset4[1]<=0;
		u8_passwordset4[2]<=0;
		u8_passwordset4[3]<=0;

		u8_passwordset3[0]<=0;
		u8_passwordset3[1]<=0;
		u8_passwordset3[2]<=0;
		u8_passwordset3[3]<=0;
		
		u8_passwordset2[0]<=0;
		u8_passwordset2[1]<=0;
		u8_passwordset2[2]<=0;
		u8_passwordset2[3]<=0;
		
		u8_passwordset1[0]<=0;
		u8_passwordset1[1]<=0;
		u8_passwordset1[2]<=0;
		u8_passwordset1[3]<=1;

		u9_passwordset4[0]<=0;
		u9_passwordset4[1]<=0;
		u9_passwordset4[2]<=0;
		u9_passwordset4[3]<=0;

		u9_passwordset3[0]<=0;
		u9_passwordset3[1]<=0;
		u9_passwordset3[2]<=0;
		u9_passwordset3[3]<=0;
		
		u9_passwordset2[0]<=0;
		u9_passwordset2[1]<=0;
		u9_passwordset2[2]<=0;
		u9_passwordset2[3]<=0;
		
		u9_passwordset1[0]<=1;
		u9_passwordset1[1]<=0;
		u9_passwordset1[2]<=0;
		u9_passwordset1[3]<=1;

		u10_passwordset4[0]<=0;
		u10_passwordset4[1]<=0;
		u10_passwordset4[2]<=0;
		u10_passwordset4[3]<=0;

		u10_passwordset3[0]<=0;
		u10_passwordset3[1]<=0;
		u10_passwordset3[2]<=0;
		u10_passwordset3[3]<=0;
		
		u10_passwordset2[0]<=1;
		u10_passwordset2[1]<=0;
		u10_passwordset2[2]<=0;
		u10_passwordset2[3]<=0;
		
		u10_passwordset1[0]<=0;
		u10_passwordset1[1]<=0;
		u10_passwordset1[2]<=0;
		u10_passwordset1[3]<=0;
		
		p_wordset<=0;
	end
	
	else if(sw1)
	begin
		u1_passwordset4[0]<=digit4[0];
		u1_passwordset4[1]<=digit4[1];
		u1_passwordset4[2]<=digit4[2];
		u1_passwordset4[3]<=digit4[3];

		u1_passwordset3[0]<=digit3[0];
		u1_passwordset3[1]<=digit3[1];
		u1_passwordset3[2]<=digit3[2];
		u1_passwordset3[3]<=digit3[3];
		
		u1_passwordset2[0]<=digit2[0];
		u1_passwordset2[1]<=digit2[1];
		u1_passwordset2[2]<=digit2[2];
		u1_passwordset2[3]<=digit2[3];
		
		u1_passwordset1[0]<=digit1[0];
		u1_passwordset1[1]<=digit1[1];
		u1_passwordset1[2]<=digit1[2];
		u1_passwordset1[3]<=digit1[3];
		p_wordset<=1;
	end
	
	else if(sw2)
	begin
		u2_passwordset4[0]<=digit4[0];
		u2_passwordset4[1]<=digit4[1];
		u2_passwordset4[2]<=digit4[2];
		u2_passwordset4[3]<=digit4[3];

		u2_passwordset3[0]<=digit3[0];
		u2_passwordset3[1]<=digit3[1];
		u2_passwordset3[2]<=digit3[2];
		u2_passwordset3[3]<=digit3[3];
		
		u2_passwordset2[0]<=digit2[0];
		u2_passwordset2[1]<=digit2[1];
		u2_passwordset2[2]<=digit2[2];
		u2_passwordset2[3]<=digit2[3];
		
		u2_passwordset1[0]<=digit1[0];
		u2_passwordset1[1]<=digit1[1];
		u2_passwordset1[2]<=digit1[2];
		u2_passwordset1[3]<=digit1[3];
		p_wordset<=1;
	end
	
	else if(sw3)
	begin
		u3_passwordset4[0]<=digit4[0];
		u3_passwordset4[1]<=digit4[1];
		u3_passwordset4[2]<=digit4[2];
		u3_passwordset4[3]<=digit4[3];

		u3_passwordset3[0]<=digit3[0];
		u3_passwordset3[1]<=digit3[1];
		u3_passwordset3[2]<=digit3[2];
		u3_passwordset3[3]<=digit3[3];
		
		u3_passwordset2[0]<=digit2[0];
		u3_passwordset2[1]<=digit2[1];
		u3_passwordset2[2]<=digit2[2];
		u3_passwordset2[3]<=digit2[3];
		
		u3_passwordset1[0]<=digit1[0];
		u3_passwordset1[1]<=digit1[1];
		u3_passwordset1[2]<=digit1[2];
		u3_passwordset1[3]<=digit1[3];
		p_wordset<=1;
	end
	
	else if(sw4)
	begin
		u4_passwordset4[0]<=digit4[0];
		u4_passwordset4[1]<=digit4[1];
		u4_passwordset4[2]<=digit4[2];
		u4_passwordset4[3]<=digit4[3];

		u4_passwordset3[0]<=digit3[0];
		u4_passwordset3[1]<=digit3[1];
		u4_passwordset3[2]<=digit3[2];
		u4_passwordset3[3]<=digit3[3];
		
		u4_passwordset2[0]<=digit2[0];
		u4_passwordset2[1]<=digit2[1];
		u4_passwordset2[2]<=digit2[2];
		u4_passwordset2[3]<=digit2[3];
		
		u4_passwordset1[0]<=digit1[0];
		u4_passwordset1[1]<=digit1[1];
		u4_passwordset1[2]<=digit1[2];
		u4_passwordset1[3]<=digit1[3];
		p_wordset<=1;
	end
	
	else if(sw5)
	begin
		u5_passwordset4[0]<=digit4[0];
		u5_passwordset4[1]<=digit4[1];
		u5_passwordset4[2]<=digit4[2];
		u5_passwordset4[3]<=digit4[3];

		u5_passwordset3[0]<=digit3[0];
		u5_passwordset3[1]<=digit3[1];
		u5_passwordset3[2]<=digit3[2];
		u5_passwordset3[3]<=digit3[3];
		
		u5_passwordset2[0]<=digit2[0];
		u5_passwordset2[1]<=digit2[1];
		u5_passwordset2[2]<=digit2[2];
		u5_passwordset2[3]<=digit2[3];
		
		u5_passwordset1[0]<=digit1[0];
		u5_passwordset1[1]<=digit1[1];
		u5_passwordset1[2]<=digit1[2];
		u5_passwordset1[3]<=digit1[3];
		p_wordset<=1;
	end
	
	else if(sw6)
	begin
		u6_passwordset4[0]<=digit4[0];
		u6_passwordset4[1]<=digit4[1];
		u6_passwordset4[2]<=digit4[2];
		u6_passwordset4[3]<=digit4[3];

		u6_passwordset3[0]<=digit3[0];
		u6_passwordset3[1]<=digit3[1];
		u6_passwordset3[2]<=digit3[2];
		u6_passwordset3[3]<=digit3[3];
		
		u6_passwordset2[0]<=digit2[0];
		u6_passwordset2[1]<=digit2[1];
		u6_passwordset2[2]<=digit2[2];
		u6_passwordset2[3]<=digit2[3];
		
		u6_passwordset1[0]<=digit1[0];
		u6_passwordset1[1]<=digit1[1];
		u6_passwordset1[2]<=digit1[2];
		u6_passwordset1[3]<=digit1[3];
		p_wordset<=1;
	end
	
	else if(sw7)
	begin
		u7_passwordset4[0]<=digit4[0];
		u7_passwordset4[1]<=digit4[1];
		u7_passwordset4[2]<=digit4[2];
		u7_passwordset4[3]<=digit4[3];

		u7_passwordset3[0]<=digit3[0];
		u7_passwordset3[1]<=digit3[1];
		u7_passwordset3[2]<=digit3[2];
		u7_passwordset3[3]<=digit3[3];
		
		u7_passwordset2[0]<=digit2[0];
		u7_passwordset2[1]<=digit2[1];
		u7_passwordset2[2]<=digit2[2];
		u7_passwordset2[3]<=digit2[3];
		
		u7_passwordset1[0]<=digit1[0];
		u7_passwordset1[1]<=digit1[1];
		u7_passwordset1[2]<=digit1[2];
		u7_passwordset1[3]<=digit1[3];
		p_wordset<=1;
	end
	
	else if(sw8)
	begin
		u8_passwordset4[0]<=digit4[0];
		u8_passwordset4[1]<=digit4[1];
		u8_passwordset4[2]<=digit4[2];
		u8_passwordset4[3]<=digit4[3];

		u8_passwordset3[0]<=digit3[0];
		u8_passwordset3[1]<=digit3[1];
		u8_passwordset3[2]<=digit3[2];
		u8_passwordset3[3]<=digit3[3];
		
		u8_passwordset2[0]<=digit2[0];
		u8_passwordset2[1]<=digit2[1];
		u8_passwordset2[2]<=digit2[2];
		u8_passwordset2[3]<=digit2[3];
		
		u8_passwordset1[0]<=digit1[0];
		u8_passwordset1[1]<=digit1[1];
		u8_passwordset1[2]<=digit1[2];
		u8_passwordset1[3]<=digit1[3];
		p_wordset<=1;
	end
	
	else if(sw9)
	begin
		u9_passwordset4[0]<=digit4[0];
		u9_passwordset4[1]<=digit4[1];
		u9_passwordset4[2]<=digit4[2];
		u9_passwordset4[3]<=digit4[3];

		u9_passwordset3[0]<=digit3[0];
		u9_passwordset3[1]<=digit3[1];
		u9_passwordset3[2]<=digit3[2];
		u9_passwordset3[3]<=digit3[3];
		
		u9_passwordset2[0]<=digit2[0];
		u9_passwordset2[1]<=digit2[1];
		u9_passwordset2[2]<=digit2[2];
		u9_passwordset2[3]<=digit2[3];
		
		u9_passwordset1[0]<=digit1[0];
		u9_passwordset1[1]<=digit1[1];
		u9_passwordset1[2]<=digit1[2];
		u9_passwordset1[3]<=digit1[3];
		p_wordset<=1;
	end
	
	else if(sw10)
	begin
		u10_passwordset4[0]<=digit4[0];
		u10_passwordset4[1]<=digit4[1];
		u10_passwordset4[2]<=digit4[2];
		u10_passwordset4[3]<=digit4[3];

		u10_passwordset3[0]<=digit3[0];
		u10_passwordset3[1]<=digit3[1];
		u10_passwordset3[2]<=digit3[2];
		u10_passwordset3[3]<=digit3[3];
		
		u10_passwordset2[0]<=digit2[0];
		u10_passwordset2[1]<=digit2[1];
		u10_passwordset2[2]<=digit2[2];
		u10_passwordset2[3]<=digit2[3];
		
		u10_passwordset1[0]<=digit1[0];
		u10_passwordset1[1]<=digit1[1];
		u10_passwordset1[2]<=digit1[2];
		u10_passwordset1[3]<=digit1[3];
		p_wordset<=1;
	end
end
endmodule