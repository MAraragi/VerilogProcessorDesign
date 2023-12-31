`timescale 1ns / 1ps
module Top(input  logic CLK100MHZ,
           input  logic BTNC,       //reset
           input  logic BTNL,       //SW input data
           input  logic BTNR,       //�߶��������ʾ
           input  logic [15:0] SW,  //a:SW[15:8], b:SW[7:0]
           output logic [7:0] AN,
           output logic [6:0] A2G);
    
    logic [31:0] pc, instr;
    imem iMemory(.a(pc[7:2]),
                 .rd(instr));       //output
    
    logic Write;                    //д�ź�: ������memWrite,Ҳ������ioWrite
    logic [31:0] dataAdr, writeData, readData;
    
    mips MIPS(.clk(CLK100MHZ),
              .reset(BTNC),
              .pc(pc),              //output
              .instr(instr),
              .memwrite(Write),     //output
              .aluout(dataAdr),     //output
              .writedata(writeData),//output
              .readdata(readData));
    
    logic IOclock;
    assign IOclock = ~CLK100MHZ;
    
    dMemoryDecoder dmd(.clk(CLK100MHZ),
                       .writeEN(Write),
                       .addr(dataAdr),
                       .writedata(writeData),
                       .readdata(readData), //output
                       //������IO�ӿڲ���
                       .IOclock(IOclock),
                       .reset(BTNC),
                       .btnL(BTNL),
                       .btnR(BTNR),
                       .switch(SW),
                       .an(AN),     //output  
                       .a2g(A2G));  //output
endmodule