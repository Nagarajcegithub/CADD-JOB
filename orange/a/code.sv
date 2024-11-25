module job_q_2_1 (
    input logic InputA, InputB, InputC, InputD,
    output logic OutputY
);
    assign OutputY = ~InputA | 
                     (InputA & InputB & InputD) | 
                     (InputA & InputC & ~InputD) | 
                     (InputA & ~InputB & ~InputC);
Endmodule
