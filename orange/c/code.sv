module job_q_2.3(A,B,C,D,Y,Z);
input logic A,B,C,D;
output logic Y,Z;
assign Y= ( ~A&D | A&~C&D | A&~B&C | A&B&C&D );
assign Z= ( B&D | A&~C&D );
endmodule

