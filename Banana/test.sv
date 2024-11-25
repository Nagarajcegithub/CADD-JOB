module job_q_1_tb;
    reg [7:0] A, B;   
    reg Carry_in;     
    wire [7:0] Sum;    
    wire Carry_out;    

    job_q_1 dut (
        A, 
        B, 
        Carry_in, 
        Sum,
        Carry_out
    );
    initial begin
        A = 8'b00000010; B = 8'b00000011; Carry_in = 0; #10;
        A = 8'b00001001; B = 8'b00000010; Carry_in = 0; #10;
        A = 8'b01011000; B = 8'b01001001; Carry_in = 0; #10;
        A = 8'b00000101; B = 8'b00000101; Carry_in = 1; #10;
        A = 8'b10011001; B = 8'b10011001; Carry_in = 0; #10;
        A = 8'b00000000; B = 8'b00000000; Carry_in = 0; #10;
        A = 8'b00100110; B = 8'b00010101; Carry_in = 1; #10;
    end
endmodule
