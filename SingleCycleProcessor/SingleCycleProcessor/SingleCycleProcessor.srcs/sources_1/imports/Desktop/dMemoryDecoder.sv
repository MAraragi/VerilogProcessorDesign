`timescale 1ns / 1ps
module dMemoryDecoder(input  logic        clk,
                      input  logic        writeEN,
                      input  logic [31:0] addr,
                      input  logic [31:0] writedata,
                      output logic [31:0] readdata,
                      input  logic        IOclock,
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
    
    assign pWrite = (addr[7] == 1'b1) ? writeEN : 0;
    assign mWrite = writeEN & (addr[7] == 1'b0);
    dmem dMemory(.clk(clk),
                 .we(mWrite),
                 .a(addr),
                 .wd(writedata),
                 .rd(readdata1));

    IO io(.clk(IOclock),
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
    
    mux7seg m7seg(.clk(IOclock),
                  .reset(reset),
                  .x(digit),
                  .an(an),
                  .a2g(a2g));
    
    mux2 #(32) rdmux(readdata1, readdata2, addr[7], readdata);
endmodule
