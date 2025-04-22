module clock_divider (reset,clk,Q,clkout);
input reset,clk;
output reg [24:0] Q;
output reg clkout;

always @(posedge reset, posedge clk)
if (reset)
begin
Q <=25'd0;
clkout <=1'b0;
end

else if (Q==25'd24999999) //more easy to show simulation result by counting to 9,actually count to 24,999,999
begin
Q<= 25'd0;
clkout<= ~clkout;
end

else Q<=Q+1'b1;

endmodule