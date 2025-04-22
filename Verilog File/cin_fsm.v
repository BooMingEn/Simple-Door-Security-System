module cin_fsm(clk,enter,cin,z);

input clk,enter,cin;
output reg z;
reg [1:0] ps,ns;

parameter s0=2'd0,s1=2'd1,s2=2'd2,s3=2'd3;

always @(negedge clk)
begin 
	if(enter)
		ps=s0;
	else ps=ns;
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
	z=1'b0;
	if (ps==s3)
	z=1'b1;
end

endmodule
