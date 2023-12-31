module Top(input  logic        CLK100MHZ,
           input  logic        BTNC,
           input  logic        BTNL,
           input  logic        BTNR,
           input  logic [15:0] SW,
           output logic [7:0]  AN,
           output logic [6:0]  A2G);
    logic [31:0] pc, instr, readdata, dataadr, writedata;
    logic Write;
    logic IOclock;
    assign IOclock = ~CLK100MHZ;
    MIPS mips(.clk(CLK100MHZ),
              .reset(BTNC),
              .instrF(instr),
              .readdataM(readdata),
              .pcF(pc),
              .memwriteM(Write),
              .aluoutM(dataadr),
              .writedataM(writedata));
    iMem imem(pc[7:2], instr);
    dMemoryDecoder dmd(.clk(CLK100MHZ),
                       .writeEN(Write),
                       .addr(dataadr),
                       .writedata(writedata),
                       .readdata(readdata), // output
                       //下面是IO接口部分
                       .IOclock(IOclock),
                       .reset(BTNC),
                       .btnL(BTNL),
                       .btnR(BTNR),
                       .switch(SW),
                       .an(AN),             // output  
                       .a2g(A2G));          // output
endmodule
