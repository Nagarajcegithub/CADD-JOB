module job_q_1 (
    input logic  [7:0] A, B,   
    input Cin,       
    output [7:0] S,  
    output Carry      
);
    wire [3:0] lower_sum, upper_sum;  
    wire lower_carry, upper_carry;            
    wire [3:0] lower_corrected, upper_corrected;
    wire lower_overflow, upper_overflow; 
    
    assign {lower_carry, lower_sum} = A[3:0] + B[3:0] + Cin;
    assign lower_overflow = (lower_sum > 4'd9) ? 1'b1 : 1'b0;
    assign lower_corrected = lower_overflow ? lower_sum + 4'd6 : lower_sum;
    assign {upper_carry, upper_sum} = A[7:4] + B[7:4] + lower_overflow;
    assign upper_overflow = (upper_sum > 4'd9) ? 1'b1 : 1'b0;
    assign upper_corrected = upper_overflow ? upper_sum + 4'd6 : upper_sum;
    assign S = {upper_corrected, lower_corrected}; 
    assign Carry = upper_carry | upper_overflow;
endmodule
