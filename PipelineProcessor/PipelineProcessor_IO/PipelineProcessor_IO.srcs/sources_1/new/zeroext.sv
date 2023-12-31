module zeroext(input  logic [15:0] a,
               output logic [31:0] y);
    assign y[15:0]  = a;
    assign y[31:16] = 16'b0000_0000_0000_0000;
endmodule