module  job_q_2.6_tb;
  reg [7:0] A;       
  wire [2:0] Y;      
  wire valid;        
    job_q_2.6DUT (A, Y, valid);
  initial begin
    // Apply test cases
    A = 8'b00000000; #10;
    A = 8'b00000001; #10;
    A = 8'b00000010; #10;
    A = 8'b00000100; #10;
    A = 8'b00001000; #10;
    A = 8'b00010000; #10;
    A = 8'b00100000; #10;
    A = 8'b01000000; #10;
    A = 8'b10000000; #10;
    A = 8'b11111111; #10;
    $stop;
  end
endmodule

