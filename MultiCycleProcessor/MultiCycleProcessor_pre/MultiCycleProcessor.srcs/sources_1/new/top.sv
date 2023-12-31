module top(input  logic        clk, reset,
           output logic [31:0] writedata, addr,
           output logic        memwrite);
    logic [31:0] readdata;
    
    mips MIPS(clk, reset, readdata, memwrite, addr, writedata);
    mem mem(clk, memwrite, addr, writedata, readdata);
endmodule
