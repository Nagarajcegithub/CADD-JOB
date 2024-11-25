module job_q_2.2 (A,B,C,D,E,Y);
input logic A,B,C,D,E;
output logic Y;
assign Y=( A&B&C | A&B&D | A&B&E | A&C&D | A&C&E | ~(A|B|E) | ~B&~C&D | ~B&~C&E | ~B&~D&~E | ~C&~D&~E );
endmodule


