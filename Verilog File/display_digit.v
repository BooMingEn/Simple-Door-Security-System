module display_digit(cin1, cin2, cin3, cin4, disp4, disp5, disp6, disp7);  
  input [3:0] cin1, cin2, cin3, cin4;
  output reg [6:0] disp4, disp5, disp6, disp7;

  always @(cin1, cin2, cin3, cin4) 
  begin
    if (cin1 == 4'b0000)
      disp4 = 7'b1000000;
    else if (cin1 == 4'b0001)
      disp4 = 7'b1111001;
    else if (cin1 == 4'b0010)
      disp4 = 7'b0100100;
    else if (cin1 == 4'b0011)
      disp4 = 7'b0110000;
    else if (cin1 == 4'b0100)
      disp4 = 7'b0011001;
    else if (cin1 == 4'b0101)
      disp4 = 7'b0010010;
	 else if (cin1 == 4'b0110)
	   disp4 = 7'b0000010;
	 else if (cin1 == 4'b0111)
	   disp4 = 7'b1111000;
	 else if (cin1 == 4'b1000)
	   disp4 = 7'b0000000;
	 else if (cin1 == 4'b1001)
	   disp4 = 7'b0010000;
		
	if (cin2 == 4'b0000)
      disp5 = 7'b1000000;
    else if (cin2 == 4'b0001)
      disp5 = 7'b1111001;
    else if (cin2 == 4'b0010)
      disp5 = 7'b0100100;
    else if (cin2 == 4'b0011)
      disp5 = 7'b0110000;
    else if (cin2 == 4'b0100)
      disp5 = 7'b0011001;
    else if (cin2 == 4'b0101)
      disp5 = 7'b0010010;
	 else if (cin2 == 4'b0110)
	   disp5 = 7'b0000010;
	 else if (cin2 == 4'b0111)
	   disp5 = 7'b1111000;
	 else if (cin2 == 4'b1000)
	   disp5 = 7'b0000000;
	 else if (cin2 == 4'b1001)
	   disp5 = 7'b0010000;
		
	if (cin3 == 4'b0000)
      disp6 = 7'b1000000;
    else if (cin3 == 4'b0001)
      disp6 = 7'b1111001;
    else if (cin3 == 4'b0010)
      disp6 = 7'b0100100;
    else if (cin3 == 4'b0011)
      disp6 = 7'b0110000;
    else if (cin3 == 4'b0100)
      disp6 = 7'b0011001;
    else if (cin3 == 4'b0101)
      disp6 = 7'b0010010;
	 else if (cin3 == 4'b0110)
	   disp6 = 7'b0000010;
	 else if (cin3 == 4'b0111)
	   disp6 = 7'b1111000;
	 else if (cin3 == 4'b1000)
	   disp6 = 7'b0000000;
	 else if (cin3 == 4'b1001)
	   disp6 = 7'b0010000;
		
	if (cin4 == 4'b0000)
      disp7 = 7'b1000000;
    else if (cin4 == 4'b0001)
      disp7 = 7'b1111001;
    else if (cin4 == 4'b0010)
      disp7 = 7'b0100100;
    else if (cin4 == 4'b0011)
      disp7 = 7'b0110000;
    else if (cin4 == 4'b0100)
      disp7 = 7'b0011001;
    else if (cin4 == 4'b0101)
      disp7 = 7'b0010010;
	 else if (cin4 == 4'b0110)
	   disp7 = 7'b0000010;
	 else if (cin4 == 4'b0111)
	   disp7 = 7'b1111000;
	 else if (cin4 == 4'b1000)
	   disp7 = 7'b0000000;
	 else if (cin4 == 4'b1001)
	   disp7 = 7'b0010000;
		end		
  
endmodule