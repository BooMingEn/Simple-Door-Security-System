module c_fsm(clk,comfirm,change,success,cin,y);

input clk,comfirm,change,success,cin;
output reg y;
reg [1:0] ps,ns;

parameter s0=2'd0,s1=2'd1,s2=2'd2,s3=2'd3;

always @(negedge clk)
begin 
	if(comfirm==1'b0 &change==1'b1 &success==1'b1)
		ps=ns;
	else ps=s0;
end

always@(ps,cin)
case(ps)
s0:
	if(cin) ns=s1;
	else ns= s0;
s1:
	if(!cin) ns=s2;
	else ns=s1;

s2:
	if(cin) ns=s3;
	else ns= s2;

s3:
	if(!cin) ns=s2;
	else ns=s1;
	
	default:ns=2'bxx;

endcase	

always@(ps)
begin
	y=1'b0;
	if (ps==s3)
	y=1'b1;
end

endmodule
