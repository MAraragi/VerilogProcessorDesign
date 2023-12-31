module mips(input  logic        clk, reset,
            output logic [31:0] addr,
            output logic        memWrite,
            input  logic [31:0] readData,
            output logic [31:0] writeData);
    logic       zero, pcen, irWrite, regWrite;
    logic       alusrcA, iord, memtoreg, regDst;
    logic [1:0] alusrcB, pcsrc;
    logic [2:0] alucontrol;
    logic [5:0] op, funct;
    
    controller c(clk,
                 reset,
                 op,
                 funct,
                 zero,
                 memWrite,
                 irWrite,
                 regWrite,
                 alusrcA,
                 iord,
                 pcen,
                 memtoreg,
                 regDst,
                 alucontrol,
                 alusrcB,
                 pcsrc);
    datapath dp(clk,
                reset,
                alusrcA,
                iord,
                pcen,
                irWrite,
                regDst,
                memtoreg,
                regWrite,
                alusrcB,
                pcsrc,
                alucontrol,
                readData,
                zero,
                addr,
                op,
                funct,
                writeData);
endmodule
