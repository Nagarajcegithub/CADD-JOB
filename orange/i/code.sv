module job_q_2.9(
  input logic clk, 
  input logic reset, 
  input logic A, 
  input logic B, 
  output logic Q
);
  typedef enum logic [1:0] {S0 = 2'b00, S1 = 2'b01, S2 = 2'b10} state_t;
  state_t state, next_state;

  always_ff @(posedge clk or posedge reset) begin
    if (reset) 
      state <= S0; 
    else 
      state <= next_state;
  end
  always_ff @(state or A or B) begin
    case (state)
      S0: 
        if (~A) next_state = S0; 
        else next_state = S1;
      S1: 
        if (~B) next_state = S1; 
        else next_state = S2;
      S2: 
        if (~A) next_state = S2; 
        else next_state = S0;
      default: next_state = S0;
    endcase
  end
  assign Q = (state == S2);
endmodule

