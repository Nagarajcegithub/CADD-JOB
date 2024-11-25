module job_q_2.7_tb;

  logic [2:0] a;
  logic [7:0] y;

  job_q_2.7 dut (a, y);

  initial begin
    a = 3'b000; #10;
    a = 3'b001; #10;
    a = 3'b010; #10;
    a = 3'b011; #10;
    a = 3'b100; #10;
    a = 3'b101; #10;
    a = 3'b110; #10;
    a = 3'b111; #10;
  end
endmodule                                                        

