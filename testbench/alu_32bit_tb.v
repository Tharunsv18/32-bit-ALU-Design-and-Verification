`timescale 1ns / 1ps

module alu_32bit_tb;
    reg  [31:0] A;
    reg  [31:0] B;
    reg  [3:0]  ALU_Sel;
    wire [31:0] Result;

    alu_32bit uut (
        .A(A), .B(B), .ALU_Sel(ALU_Sel), .Result(Result)
    );

    initial begin
        // ADD: 10 + 5 = 15
        A = 32'd10; B = 32'd5; ALU_Sel = 4'b0000; #10;
        // SUB: 10 - 5 = 5
        ALU_Sel = 4'b0001; #10;
        // AND
        A = 32'h0000000F; B = 32'h00000003; ALU_Sel = 4'b0010; #10;
        // OR
        ALU_Sel = 4'b0011; #10;
        // XOR
        ALU_Sel = 4'b0100; #10;
        // NOT A
        ALU_Sel = 4'b0101; #10;
        // SHIFT LEFT: 1 << 2 = 4
        A = 32'd1; B = 32'd2; ALU_Sel = 4'b0110; #10;
        // SHIFT RIGHT: 16 >> 2 = 4
        A = 32'd16; B = 32'd2; ALU_Sel = 4'b0111; #10;
        // COMPARISON: 5 < 10 = 1
        A = 32'd5; B = 32'd10; ALU_Sel = 4'b1000; #10;
        $finish;
    end
endmodule
