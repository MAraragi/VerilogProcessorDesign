module datapath(input  logic        clk, reset,
                input  logic        alusrca, iord, pcen, irwrite, 
                input  logic        regdst, memtoreg, regwrite,
                input  logic [1:0]  alusrcb, pcsrc, 
                input  logic [2:0]  alucontrol,
                input  logic [31:0] readdata,
                output logic        zero,
                output logic [31:0] addr,
                output logic [5:0]  op, funct,
                output logic [31:0] writedata);

     logic [4:0]  writereg;
     logic [31:0] pcnext, pc;
     logic [31:0] instr, extendinstr, data, srca, srcb;
     logic [31:0] a, b;
     logic [31:0] aluresult, aluout;
     logic [31:0] signimm, signimmsh; 

     logic [31:0] wd3, rd1, rd2;

     assign op = instr[31:26];
     assign funct = instr[5:0];
     assign writedata = b;
     flopenr #(32) pcreg(clk, reset, pcen, pcnext, pc);
     mux2    #(32) adrmux(pc, aluout, iord, addr);
     mux2    #(32) srcamux(pc, a, alusrca, srca);
     flopenr #(32) instrreg(clk, reset, irwrite, readdata, instr);
     flopr   #(32) datareg(clk, reset, readdata, data);
     mux2    #(5)  regdstmux(instr[20:16], instr[15:11], regdst, writereg);
     mux2    #(32) wdmux(aluout, data, memtoreg, wd3);
     signext se(instr[15:0], signimm);
     sl2 immsh(signimm, signimmsh);
     regfile rf(clk, regwrite, instr[25:21], instr[20:16], 
                writereg, wd3, rd1, rd2);
     flopr   #(32) areg(clk, reset, rd1, a);
     flopr   #(32) breg(clk, reset, rd2, b);
     mux4    #(32) srcbmux(b, 32'b100, signimm, signimmsh, 
                           alusrcb, srcb);
     alu alunit(srca, srcb, alucontrol, aluresult, zero);
     flopr #(32) alureg(clk, reset, aluresult, aluout);
     sl2 instrextender({6'b000000, instr[25:0]}, extendinstr);
     mux4  #(32) pcmux(aluresult, aluout, 
                       extendinstr,
                       {32'b0},
                       pcsrc, pcnext);
endmodule