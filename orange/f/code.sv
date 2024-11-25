module job_q_2.6(
  input logic [7:0] A, 
  output logic [2:0] Y
);
  always_comb begin
    casez (A)
      8'b00000001, 8'b0000001x, 8'b000001xx, 8'b00001xxx, 8'b0001xxxx, 8'b001xxxxx, 8'b01xxxxxx, 8'b1xxxxxxx: Y = 3'b000;
      8'b00000010, 8'b0000011x, 8'b00001xxx, 8'b0001xxxx, 8'b001xxxxx, 8'b01xxxxxx, 8'b1xxxxxxx: Y = 3'b001;
      8'b00000100, 8'b000011xx, 8'b0001xxxx, 8'b001xxxxx, 8'b01xxxxxx, 8'b1xxxxxxx: Y = 3'b010;
      8'b00001000, 8'b00011xxx, 8'b001xxxxx, 8'b01xxxxxx, 8'b1xxxxxxx: Y = 3'b011;
      8'b00010000, 8'b001xxxxx, 8'b01xxxxxx, 8'b1xxxxxxx: Y = 3'b100;
      8'b00100000, 8'b01xxxxxx, 8'b1xxxxxxx: Y = 3'b101;
      8'b01000000, 8'b1xxxxxxx: Y = 3'b110;
      8'b10000000: Y = 3'b111;
      
      default: Y = 3'b000; // Default case for no valid input
    endcase
  end
endmodule
