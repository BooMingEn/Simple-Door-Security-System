module overall_compilation_testbench();
  reg clk, reset1, reset2, reset_register1, reset_register2;
  reg reset_password, cin4, cin3, cin2, cin1, change, enter, comfirm;
  wire green_LED, red_LED, green_led2;
  wire [6:0] disp0, disp1, disp2, disp3, disp4, disp5, disp6, disp7;

  overall_compilation u1 (
    .clk(clk),
    .reset1(reset1),
    .reset2(reset2),
    .enter(enter),
    .comfirm(comfirm),
    .reset_register1(reset_register1),
    .reset_register2(reset_register2),
    .reset_password(reset_password),
    .green_LED(green_LED),
    .red_LED(red_LED),
    .disp0(disp0),
    .disp1(disp1),
    .disp2(disp2),
    .disp3(disp3),
    .disp4(disp4),
    .disp5(disp5),
    .disp6(disp6),
    .disp7(disp7),
    .cin4(cin4),
    .cin3(cin3),
    .cin2(cin2),
    .cin1(cin1),
    .change(change),
    .green_led2(green_led2)
  );

  initial begin
    $dumpfile("dump.vcd");  
    $dumpvars(0, clk,reset1,reset2,enter,comfirm,reset_register1,reset_register2,reset_password,
green_LED,red_LED,disp0,disp1,disp2,disp3,disp4,disp5,disp6,disp7,cin4,cin3,cin2,cin1,change,green_led2);  
    clk = 0;
    forever #5 clk = ~clk;
  end


  initial begin
    reset1 = 0;
    reset2 = 0;
    reset_register1 = 0;
    reset_register2 = 0;
    reset_password = 1;
    cin4 = 1;
    cin3 = 1;
    cin2 = 1;
    cin1 = 1;
    change = 0;
    enter = 0;
    comfirm = 0;

    #10 cin1 = 0;
    #30 cin1 = 1;
    #30 cin1 = 0;
    #30 cin1 = 1;

    #35 enter = 1;
    #10 change = 1;
    #30 cin3 = 0;
    #30 cin3 = 1;
    #30 cin3 = 0;
    #30 cin3 = 1;

    #50 reset_password = 0;
    comfirm = 1;
    #70 comfirm = 0;
    change = 0;
    #10 enter = 0;
    #10 reset1 = 1;
    reset2 = 1;
    #10 reset1 = 0;
    reset2 = 0;

    #30 cin3 = 0;
    #30 cin3 = 1;
    #30 cin3 = 0;
    #30 cin3 = 1;
    #40 enter = 1;
    #40 $finish;
  end

  initial begin
    $monitor(
      "time%d: clk=%b, reset1=%b, reset2=%b, reset_register1=%b, reset_register2=%b, reset_password=%b, cin4=%b, cin3=%b, cin2=%b, cin1=%b, change=%b, enter=%b, comfirm=%b, green_LED=%b, red_LED=%b, green_led2=%b, disp0=%b, disp1=%b, disp2=%b, disp3=%b, disp4=%b, disp5=%b, disp6=%b, disp7=%b",
      $time, clk, reset1, reset2, reset_register1, reset_register2, reset_password,
      cin4, cin3, cin2, cin1, change, enter, comfirm,
      green_LED, red_LED, green_led2,
      disp0, disp1, disp2, disp3, disp4, disp5, disp6, disp7
    );
  end
endmodule