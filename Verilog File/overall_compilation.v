module overall_compilation (clk,reset1,reset2,enter,comfirm,reset_register1,reset_register2,reset_password,
green_LED,red_LED,disp0,disp1,disp2,disp3,disp4,disp5,disp6,disp7,cin4,cin3,cin2,cin1,change,green_led2);

input clk,reset1,reset2,enter,comfirm,cin4,cin3,cin2,cin1,change;
input reset_register1,reset_register2,reset_password;
output green_LED,red_LED,green_led2;
output [6:0] disp0,disp1,disp2,disp3,disp4,disp5,disp6,disp7;

wire [3:0] P4,P3,P2,P1,PZ4,PZ3,PZ2,PZ1,D4,D3,D2,D1,DZ4,DZ3,DZ2,DZ1,result4,result3,result2,result1;
wire [3:0] u1_passwordset4,u1_passwordset3,u1_passwordset2,u1_passwordset1,u2_passwordset4,u2_passwordset3;
wire [3:0] u2_passwordset2,u2_passwordset1,u3_passwordset4,u3_passwordset3,u3_passwordset2,u3_passwordset1;
wire [3:0] u4_passwordset4,u4_passwordset3,u4_passwordset2,u4_passwordset1,u5_passwordset4,u5_passwordset3;
wire [3:0] u5_passwordset2,u5_passwordset1, u6_passwordset4, u6_passwordset3, u6_passwordset2, u6_passwordset1;
wire [3:0] u7_passwordset4, u7_passwordset3, u7_passwordset2, u7_passwordset1, u8_passwordset4, u8_passwordset3;
wire [3:0] u8_passwordset2, u8_passwordset1, u9_passwordset4, u9_passwordset3,u9_passwordset2, u9_passwordset1;
wire [3:0] u10_passwordset4, u10_passwordset3, u10_passwordset2, u10_passwordset1; 
wire sw1,sw2,sw3,sw4,sw5,sw6,sw7,sw8,sw9,sw10,success,Q,clkout,p_wordset,z4,z3,z2,z1,y4,y3,y2,y1;

clock_divider (reset1,clk,Q,clkout);

cin_fsm Cin4(clk,enter,cin4,z4);//all clk used is for simulation,clkout used for FPGA board
cin_fsm Cin3(clk,enter,cin3,z3);
cin_fsm Cin2(clk,enter,cin2,z2);
cin_fsm Cin1(clk,enter,cin1,z1);

counter p4(clk,z4,reset1,P4);
counter p3(clk,z3,reset1,P3);
counter p2(clk,z2,reset1,P2);
counter p1(clk,z1,reset1,P1);

shift_register Enter(P4,P3,P2,P1,clk,enter,reset_register1,PZ4,PZ3,PZ2,PZ1);

checkpassword_comparator(PZ4,PZ3,PZ2,PZ1,u1_passwordset4,u1_passwordset3,u1_passwordset2,u1_passwordset1,
u2_passwordset4,u2_passwordset3,u2_passwordset2,u2_passwordset1,u3_passwordset4,u3_passwordset3,u3_passwordset2,
u3_passwordset1,u4_passwordset4,u4_passwordset3,u4_passwordset2,u4_passwordset1,u5_passwordset4
,u5_passwordset3,u5_passwordset2,u5_passwordset1, u6_passwordset4, u6_passwordset3, u6_passwordset2, 
u6_passwordset1, u7_passwordset4, u7_passwordset3, u7_passwordset2, u7_passwordset1, u8_passwordset4, 
u8_passwordset3, u8_passwordset2, u8_passwordset1, u9_passwordset4, u9_passwordset3,u9_passwordset2, 
u9_passwordset1, u10_passwordset4, u10_passwordset3, u10_passwordset2, u10_passwordset1,sw10,sw9,sw8,sw7,sw6
,sw5,sw4,sw3,sw2,sw1,success);

display_ID(success, sw1, sw2, sw3, sw4, sw5, sw6, sw7, sw8, sw9, sw10, green_LED, red_LED, disp7, disp6, disp5, 
disp4);

c_fsm C4(clk,comfirm,change,success,cin4,y4);
c_fsm C3(clk,comfirm,change,success,cin3,y3);
c_fsm C2(clk,comfirm,change,success,cin2,y2);
c_fsm C1(clk,comfirm,change,success,cin1,y1);

counter d4(clk,y4,reset2,D4);
counter d3(clk,y3,reset2,D3);
counter d2(clk,y2,reset2,D2);
counter d1(clk,y1,reset2,D1);

shift_register Comfirm(D4,D3,D2,D1,clk,comfirm,reset_register2,DZ4,DZ3,DZ2,DZ1);

universal_register(clk,reset1,enter,P4,P3,P2,P1,D4,D3,D2,D1,result4,result3,result2,result1);

display_digit(result4, result3, result2, result1, disp3, disp2, disp1, disp0);

register_set_password (DZ4,DZ3,DZ2,DZ1,u1_passwordset4,u1_passwordset3,u1_passwordset2,
u1_passwordset1,u2_passwordset4,u2_passwordset3,u2_passwordset2,u2_passwordset1,u3_passwordset4,u3_passwordset3
,u3_passwordset2,u3_passwordset1,u4_passwordset4,u4_passwordset3,u4_passwordset2,u4_passwordset1,u5_passwordset4
,u5_passwordset3,u5_passwordset2,u5_passwordset1, u6_passwordset4, u6_passwordset3, u6_passwordset2, 
u6_passwordset1, u7_passwordset4, u7_passwordset3, u7_passwordset2, u7_passwordset1, u8_passwordset4, 
u8_passwordset3, u8_passwordset2, u8_passwordset1, u9_passwordset4, u9_passwordset3,u9_passwordset2, 
u9_passwordset1, u10_passwordset4, u10_passwordset3, u10_passwordset2, u10_passwordset1,sw10,sw9,sw8,sw7,sw6
,sw5,sw4,sw3,sw2,sw1,reset_password,clk,p_wordset);

p_wordset_led(p_wordset,green_led2);

endmodule