module job_q_2_1_tb;
    reg InputA, InputB, InputC, InputD;  
    wire OutputY;                        
    
    job_q_2_1 dut (
        InputA, 
        InputB, 
        InputC, 
        InputD, 
        OutputY
    );
    initial begin
        #20; InputA = 0; InputB = 0; InputC = 0; InputD = 0;
        #10; InputA = 0; InputB = 0; InputC = 0; InputD = 1;
        #10; InputA = 0; InputB = 0; InputC = 1; InputD = 0;
        #10; InputA = 0; InputB = 0; InputC = 1; InputD = 1;
        #10; InputA = 0; InputB = 1; InputC = 0; InputD = 0;
        #10; InputA = 0; InputB = 1; InputC = 0; InputD = 1;
        #10; InputA = 0; InputB = 1; InputC = 1; InputD = 0;
        #10; InputA = 0; InputB = 1; InputC = 1; InputD = 1;
        #10; InputA = 1; InputB = 0; InputC = 0; InputD = 0;
        #10; InputA = 1; InputB = 0; InputC = 0; InputD = 1;
        #10; InputA = 1; InputB = 0; InputC = 1; InputD = 0;
        #10; InputA = 1; InputB = 0; InputC = 1; InputD = 1;
        #10; InputA = 1; InputB = 1; InputC = 0; InputD = 0;
        #10; InputA = 1; InputB = 1; InputC = 0; InputD = 1;
        #10; InputA = 1; InputB = 1; InputC = 1; InputD = 0;
        #10; InputA = 1; InputB = 1; InputC = 1; InputD = 1;
    end
endmodule

