module job_q_2.4_tb;
    reg [3:0] A;      
    wire P, D;         
   job_q_2.4 dut (A,P,D);
    initial 
    begin
        A = 4'd0; #10; 
        A = 4'd1; #10; 
        A = 4'd2; #10; 
        A = 4'd3; #10; 
        A = 4'd4; #10; 
        A = 4'd5; #10; 
        A = 4'd6; #10; 
        A = 4'd7; #10; 
        A = 4'd8; #10; 
        A = 4'd9; #10; 
        A = 4'd10; #10; 
        A = 4'd11; #10; 
        A = 4'd12; #10; 
        A = 4'd13; #10; 
        A = 4'd14; #10; 
        A = 4'd15; #10;
    end
endmodule
