module job_q_2.10¬_tb ();
    logic [3:0] B;  
    logic [3:0] G;    
    job_q_2.10 dut (
        .B(B),
        .G(G)
    );
    initial begin
        B = 4'b0000; #10;
        B = 4'b0001; #10;
        B = 4'b0010; #10;
        B = 4'b0011; #10;
        B = 4'b0100; #10;
        B = 4'b0101; #10;
        B = 4'b0110; #10;
        B = 4'b0111; #10;
        B = 4'b1000; #10;
        B = 4'b1001; #10;
        $finish;
    end
endmodule
