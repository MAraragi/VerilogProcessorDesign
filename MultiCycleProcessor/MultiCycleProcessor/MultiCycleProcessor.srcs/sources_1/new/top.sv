module top(input  logic CLK100MHZ,
           input  logic BTNC,       
           input  logic BTNL,       
           input  logic BTNR,       
           input  logic [15:0] SW,  //a:SW[15:8], b:SW[7:0]
           output logic [7:0] AN,
           output logic [6:0] A2G);

    logic Write;                    //写信号: 可能是memWrite,也可能是ioWrite
    logic [31:0] dataAdr, writeData, readData;
    
    mips MIPS(.clk(CLK100MHZ),
              .reset(BTNC),
              .addr(dataAdr),         //output
              .memWrite(Write),       //output
              .readData(readData),
              .writeData(writeData)); //output
    
    MemoryDecoder md(.clk(CLK100MHZ),
                     .writeEN(Write),
                     .addr(dataAdr[7:0]),
                     .writedata(writeData),
                     .readdata(readData), //output
                     //下面是IO接口部分
                     .reset(BTNC),
                     .btnL(BTNL),
                     .btnR(BTNR),
                     .switch(SW),
                     .an(AN),     //output  
                     .a2g(A2G));  //output
endmodule
