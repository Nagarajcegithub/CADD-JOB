module job_q_2.2_tb;
reg A,B,C,D,E;
wire Y;
job_q_2.2  dut(A,B,C,D,E,Y);
initial 
begin
#10;A=0;B=0;C=0;D=0;E=0;
#10;A=0;B=0;C=0;D=0;E=1;
#10;A=0;B=0;C=0;D=1;E=0;
#10;A=0;B=0;C=0;D=1;E=1;
end
endmodule
