module job_q_2.9_tb;
reg clk,reset,A,B;
wire Q;
job_q_2.9 dut(.clk(clk),.reset(reset),.A(A),.B(B),.Q(Q));
always #5 clk=~clk;
initial begin
clk=0;reset=0;A=0;B=0;
#10 reset=1;#10 reset=0;
#10 A=1;B=0;#10 A=0;B=0;
#10 A=0;B=1;#10 A=0;B=0;
#10 A=1;B=0;#10 A=0;B=0;
#10 reset=1;#10 reset=0;
#10 $finish;
end
endmodule
