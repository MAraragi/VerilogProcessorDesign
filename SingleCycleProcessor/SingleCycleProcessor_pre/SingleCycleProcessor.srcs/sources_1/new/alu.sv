`timescale 1ns / 1ps
module alu(input  logic [31:0] SrcA, SrcB, 
           input  logic [2:0]  ALUControl, 
           output logic [31:0] ALUResult,
           output logic        Zero);
    logic [31:0] S, B;
    assign B = ALUControl[2] ? ~SrcB : SrcB;
    assign S = SrcA + B + ALUControl[2];
    always_comb
        case (ALUControl[1:0])
            2'b00: ALUResult <= SrcA & B;
            2'b01: ALUResult <= SrcA | B;
            2'b10: ALUResult <= S;
            2'b11: ALUResult <= S[31];
        endcase
    assign Zero = (ALUResult == 2'b0);
endmodule
