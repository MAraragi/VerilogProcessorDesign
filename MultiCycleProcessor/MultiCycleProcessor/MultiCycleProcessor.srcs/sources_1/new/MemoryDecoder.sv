module MemoryDecoder(input  logic        clk,
                     input  logic        writeEN,
                     input  logic [7:0]  addr,
                     input  logic [31:0] writedata,
                     output logic [31:0] readdata,
                     input  logic        reset,
                     input  logic        btnL,
                     input  logic        btnR,
                     input  logic [15:0] switch,
                     output logic [7:0]  an,
                     output logic [6:0]  a2g);
    logic [11:0] led;
    logic [31:0] readdata1, readdata2;
    logic [31:0] digit;
    logic pWrite, mWrite;
    
    assign pWrite = (addr[7] == 1) ? writeEN : 0;
    assign mWrite = (addr[7] == 0) ? writeEN : 0;
    mem Memory(.clk(clk),
               .we(mWrite),
               .a(addr[7:2]),
               .wd(writedata),
               .rd(readdata1));

    IO io(.clk(clk),
          .reset(reset),
          .pRead(addr[7]),
          .pWrite(pWrite),
          .addr(addr[3:2]),
          .pWriteData(writedata[11:0]),
          .pReadData(readdata2),
          .buttonL(btnL),
          .buttonR(btnR),
          .switch(switch),
          .led(led));
    
    assign digit = {switch, 4'b0000, led};
    
    mux7seg m7seg(.clk(clk),
                  .reset(reset),
                  .x(digit),
                  .an(an),
                  .a2g(a2g));
    
    always_comb
        if(addr[7] == 0)
            readdata = readdata1;
        else
            readdata = readdata2;
endmodule
