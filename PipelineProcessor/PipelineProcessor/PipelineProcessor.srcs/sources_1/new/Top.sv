module Top(input  logic        clk,
           input  logic        reset,
           output logic [31:0] writedata,
           output logic [31:0] dataadr,
           output logic        memwrite);
    logic [31:0] pc, instr, readdata;
    
    MIPS mips(clk, reset,
              instr, readdata,
              pc, memwrite, dataadr, writedata);
    iMem imem(pc[7:2], instr);
    dMem dmem(clk, memwrite, dataadr, writedata, readdata);
endmodule
