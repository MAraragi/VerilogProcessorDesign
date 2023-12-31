module controller(input  logic       clk, reset,
                  input  logic [5:0] opD, functD,
                  input  logic       equalD,
                  input  logic       flushE,
                  output logic       pcsrcD, branchD, jumpD, immextD,
                  output logic [2:0] alucontrolE,
                  output logic       regwriteE, memtoregE, alusrcE, regdstE,
                  output logic       regwriteM, memtoregM, memwriteM,
                  output logic       regwriteW, memtoregW);
    
    logic [2:0] alucontrolD;
    logic       regwriteD, regdstD;
    logic       alusrcD;
    logic       memwriteD, memtoregD;
    logic       memwriteE;
    logic [2:0] aluopD;
    
    maindec md(opD,
               regwriteD, regdstD,   // output
               alusrcD,   branchD,   // output
               memwriteD, memtoregD, // output
               jumpD,     aluopD,    // output
               immextD);             // output
    
    aludec ad(functD, aluopD,
              alucontrolD);          // output
    
    assign pcsrcD = branchD & equalD;
    
    // pipeline registers
    floprc #(8) regE(clk, reset, flushE,
                    {memtoregD, memwriteD, alusrcD, regdstD, regwriteD, alucontrolD},
                    {memtoregE, memwriteE, alusrcE, regdstE, regwriteE, alucontrolE});
    flopr  #(3) regM(clk, reset,
                    {memtoregE, memwriteE, regwriteE},
                    {memtoregM, memwriteM, regwriteM});
    flopr  #(2) regW(clk, reset,
                    {memtoregM, regwriteM},
                    {memtoregW, regwriteW});
endmodule
