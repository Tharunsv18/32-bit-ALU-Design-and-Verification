`timescale 1ns / 1ps

module alu_32bit(
    input  [31:0] A,
    input  [31:0] B,
    input  [3:0]  ALU_Sel,
    output reg [31:0] Result
);

always @(*) begin
    case (ALU_Sel)
        4'b0000: Result = A + B;       // Addition
        4'b0001: Result = A - B;       // Subtraction
        4'b0010: Result = A & B;       // AND
        4'b0011: Result = A | B;       // OR
        4'b0100: Result = A ^ B;       // XOR
        4'b0101: Result = ~A;          // NOT
        4'b0110: Result = A << B[4:0]; // Shift Left
        4'b0111: Result = A >> B[4:0]; // Shift Right
        4'b1000: Result = (A < B) ? 32'd1 : 32'd0; // Comparison
        default: Result = 32'd0;
    endcase
end

endmodule
