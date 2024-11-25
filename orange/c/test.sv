module job_q_2.3_tb;
reg A,B,C,D;
wire Y,Z;
job_q_2.3 dut(A,B,C,D,Y,Z);
initial 
begin
#20;A=0;B=0;C=0;D=0;
#10;A=0;B=0;C=0;D=1;
#10;A=0;B=0;C=1;D=0;
#10;A=0;B=0;C=1;D=1;
#10;A=0;B=1;C=0;D=0;
#10;A=0;B=1;C=0;D=1;
#10;A=0;B=1;C=1;D=0;
#10;A=0;B=1;C=1;D=1;
#10;A=1;B=0;C=0;D=0;
#10;A=1;B=0;C=0;D=1;
#10;A=1;B=0;C=1;D=0;
#10;A=1;B=0;C=1;D=1;
#10;A=1;B=1;C=0;D=0;
#10;A=1;B=1;C=0;D=1;
#10;A=1;B=1;C=1;D=0;
#10;A=1;B=1;C=1;D=1;
end
endmodule
