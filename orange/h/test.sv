module job_q_2.8_tb;
  reg [3:0] A, B;
  wire [3:0] Sum;

  carry_ job_q_2.8 dut (
    .A(A),
    .B(B),
    .Sum(Sum)
  );

  initial begin
    A = 4'b0000; B = 4'b0000; #10;
    A = 4'b0001; B = 4'b0001; #10;
    A = 4'b0010; B = 4'b0010; #10;
    A = 4'b0100; B = 4'b0100; #10;
    A = 4'b1000; B = 4'b1000; #10;
    A = 4'b1111; B = 4'b1111; #10;
    A = 4'b1101; B = 4'b1011; #10;
    A = 4'b0110; B = 4'b0111; #10;
    $finish;
  end
Endmodule

