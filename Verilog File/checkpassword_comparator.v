module checkpassword_comparator(digit4,digit3,digit2,digit1,u1_passwordset4,u1_passwordset3,u1_passwordset2,
u1_passwordset1,u2_passwordset4,u2_passwordset3,u2_passwordset2,u2_passwordset1,u3_passwordset4,u3_passwordset3
,u3_passwordset2,u3_passwordset1,u4_passwordset4,u4_passwordset3,u4_passwordset2,u4_passwordset1,u5_passwordset4
,u5_passwordset3,u5_passwordset2,u5_passwordset1, u6_passwordset4, u6_passwordset3, u6_passwordset2, 
u6_passwordset1, u7_passwordset4, u7_passwordset3, u7_passwordset2, u7_passwordset1, u8_passwordset4, 
u8_passwordset3, u8_passwordset2, u8_passwordset1, u9_passwordset4, u9_passwordset3,u9_passwordset2, 
u9_passwordset1, u10_passwordset4, u10_passwordset3, u10_passwordset2, u10_passwordset1,sw10,sw9,sw8,sw7,sw6
,sw5,sw4,sw3,sw2,sw1,success);

input [3:0] digit4, digit3, digit2, digit1;

input [3:0] u1_passwordset4,u1_passwordset3,u1_passwordset2,u1_passwordset1,u2_passwordset4,u2_passwordset3;
input [3:0] u2_passwordset2,u2_passwordset1,u3_passwordset4,u3_passwordset3,u3_passwordset2,u3_passwordset1;
input [3:0] u4_passwordset4,u4_passwordset3,u4_passwordset2,u4_passwordset1,u5_passwordset4,u5_passwordset3;
input [3:0] u5_passwordset2,u5_passwordset1, u6_passwordset4, u6_passwordset3, u6_passwordset2, u6_passwordset1;
input [3:0] u7_passwordset4, u7_passwordset3, u7_passwordset2, u7_passwordset1, u8_passwordset4, u8_passwordset3;
input [3:0] u8_passwordset2, u8_passwordset1, u9_passwordset4, u9_passwordset3,u9_passwordset2, u9_passwordset1;
input [3:0] u10_passwordset4, u10_passwordset3, u10_passwordset2, u10_passwordset1;
 
output reg sw1,sw2,sw3,sw4,sw5,sw6,sw7,sw8,sw9,sw10,success;

always@ (*)
begin

	begin	
	sw1 = (1'b0);
	sw2 = (1'b0);
	sw3 = (1'b0);
	sw4 = (1'b0);
	sw5 = (1'b0);
	sw6 = (1'b0);
	sw7 = (1'b0);
	sw8 = (1'b0);
	sw9 = (1'b0);
	sw10 = (1'b0);
	success = (1'b1);
	end

	if(digit4==u1_passwordset4 && digit3==u1_passwordset3 && digit2==u1_passwordset2&& digit1==u1_passwordset1)
		
			sw1=1;
	
	else if (digit4==u2_passwordset4 && digit3==u2_passwordset3 && digit2==u2_passwordset2&& digit1==u2_passwordset1)
		
			sw2=1;
		
	else if (digit4==u3_passwordset4 && digit3==u3_passwordset3 && digit2==u3_passwordset2&& digit1==u3_passwordset1)
		
			sw3=1;
		
	else if (digit4==u4_passwordset4 && digit3==u4_passwordset3 && digit2==u4_passwordset2&& digit1==u4_passwordset1)
		
			sw4=1;
		
	else if (digit4==u5_passwordset4 && digit3==u5_passwordset3 && digit2==u5_passwordset2&& digit1==u5_passwordset1)
		
			sw5=1;
			
	else if (digit4==u6_passwordset4 && digit3==u6_passwordset3 && digit2==u6_passwordset2&& digit1==u6_passwordset1)
		
			sw6=1;
			
	else if (digit4==u7_passwordset4 && digit3==u7_passwordset3 && digit2==u7_passwordset2&& digit1==u7_passwordset1)
		
			sw7=1;
			
	else if (digit4==u8_passwordset4 && digit3==u8_passwordset3 && digit2==u8_passwordset2&& digit1==u8_passwordset1)
		
			sw8=1;
			
	else if (digit4==u9_passwordset4 && digit3==u9_passwordset3 && digit2==u9_passwordset2&& digit1==u9_passwordset1)
		
			sw9=1;
			
	else if (digit4==u10_passwordset4 && digit3==u10_passwordset3 && digit2==u10_passwordset2&& digit1==u10_passwordset1)
		
			sw10=1;
			
	else
		success=0;
end
endmodule