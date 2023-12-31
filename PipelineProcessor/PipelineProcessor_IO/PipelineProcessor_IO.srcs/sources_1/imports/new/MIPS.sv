module MIPS(input  logic        clk, reset,
            input  logic [31:0] instrF, readdataM,
            output logic [31:0] pcF,
            output logic        memwriteM,
            output logic [31:0] aluoutM,
            output logic [31:0] writedataM);
    logic [5:0] opD, functD;
    logic       equalD, pcsrcD, branchD, jumpD, immextD;
    logic [2:0] alucontrolE;
    logic       regwriteE, memtoregE, alusrcE, regdstE, flushE;
    logic       regwriteM, memtoregM;
    logic       regwriteW, memtoregW;
    
    controller c(clk, reset,
                 opD, functD, equalD,
                 flushE,
                 pcsrcD, branchD, jumpD, immextD,        // output
                 alucontrolE,                            // output
                 regwriteE, memtoregE, alusrcE, regdstE, // output
                 regwriteM, memtoregM, memwriteM,        // output
                 regwriteW, memtoregW);                  // output
    datapath dp(clk, reset,
                instrF,
                pcsrcD, branchD, jumpD, immextD,
                alucontrolE,
                regwriteE, memtoregE, alusrcE, regdstE,
                readdataM,
                regwriteM, memtoregM,
                regwriteW, memtoregW,
                pcF,                                     // output
                opD, functD, equalD,                     // output
                flushE,                                  // output
                aluoutM, writedataM);                    // output
endmodule
