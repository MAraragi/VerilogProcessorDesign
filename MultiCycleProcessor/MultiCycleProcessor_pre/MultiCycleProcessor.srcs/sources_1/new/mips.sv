module mips(input  logic        clk, reset,
            input  logic [31:0] readData,
            output logic        memWrite,
            output logic [31:0] addr, writeData);
    logic       zero, pcen, irWrite, regWrite;
    logic       alusrcA, iord, memtoreg, regDst;
    logic [1:0] alusrcB, pcsrc;
    logic [2:0] alucontrol;
    logic [5:0] op, funct;
    
    controller c(clk, reset, op, funct,
                 zero, pcen, memWrite, irWrite,
                 regWrite, alusrcA, iord, memtoreg,
                 regDst, alusrcB, pcsrc, alucontrol);
    datapath dp(clk, reset, pcen, irWrite,
                regWrite, alusrcA, iord, memtoreg,
                regDst, alusrcB, pcsrc, alucontrol,
                readData, op, funct, zero,
                addr, writeData);
endmodule
