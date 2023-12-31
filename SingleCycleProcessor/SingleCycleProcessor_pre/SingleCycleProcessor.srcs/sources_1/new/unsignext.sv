`timescale 1ns / 1ps
module unsignext(input  logic [15:0] a,
                 output logic [31:0] y);
    assign y[15:0] = a;
    assign y[31:16] = 0;
endmodule
