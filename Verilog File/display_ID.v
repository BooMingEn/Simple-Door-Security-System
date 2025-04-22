module display_ID(success, sw1, sw2, sw3, sw4, sw5, sw6, sw7, sw8, sw9, sw10, GREEN_LED, RED_LED, disp0, disp1, 
disp2, disp3);
input success, sw1, sw2, sw3, sw4, sw5, sw6, sw7, sw8, sw9, sw10;
output reg GREEN_LED, RED_LED;
output reg [6:0] disp0, disp1, disp2, disp3;

always @(success, sw1, sw2, sw3, sw4, sw5, sw6, sw7, sw8, sw9, sw10)
if (success==1'b1)

begin
GREEN_LED=1'b1;
RED_LED=1'b0;

if (sw1)
begin
disp0=7'b1000001;
disp1=7'b0010010;
disp2=7'b1000000;
disp3=7'b1111001;
end
else if (sw2)
begin
disp0=7'b1000001;
disp1=7'b0010010;
disp2=7'b1000000;
disp3=7'b0100100;
end
else if (sw3)
begin
disp0=7'b1000001;
disp1=7'b0010010;
disp2=7'b1000000;
disp3=7'b0110000;
end
else if (sw4)
begin
disp0=7'b1000001;
disp1=7'b0010010;
disp2=7'b1000000;
disp3=7'b0011001;
end
else if (sw5)
begin
disp0=7'b1000001;
disp1=7'b0010010;
disp2=7'b1000000;
disp3=7'b0010010;
end
else if (sw6)
begin
disp0=7'b1000001;
disp1=7'b0010010;
disp2=7'b1000000;
disp3=7'b0000010;
end
else if (sw7)
begin
disp0=7'b1000001;
disp1=7'b0010010;
disp2=7'b1000000;
disp3=7'b1111000;
end
else if (sw8)
begin
disp0=7'b1000001;
disp1=7'b0010010;
disp2=7'b1000000;
disp3=7'b0000000;
end
else if (sw9)
begin
disp0=7'b1000001;
disp1=7'b0010010;
disp2=7'b1000000;
disp3=7'b0010000;
end
else if (sw10)
begin
disp0=7'b1000001;
disp1=7'b0010010;
disp2=7'b1111001;
disp3=7'b1000000;
end
end

else
begin
GREEN_LED=1'b0;
RED_LED=1'b1;
disp0=7'b1000000;
disp1=7'b1000000;
disp2=7'b1000000;
disp3=7'b1000000;
end

endmodule