module eqcmp(input  logic [31:0] a,
             input  logic [31:0] b,
             output logic        eq);
    assign eq = (a == b);
endmodule
