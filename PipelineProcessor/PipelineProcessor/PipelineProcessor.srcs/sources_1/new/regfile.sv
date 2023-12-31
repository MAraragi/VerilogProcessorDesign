module regfile(input  logic        clk,
               input  logic        we3,
               input  logic [4:0]  ra1, ra2, wa3,
               input  logic [31:0] wd3,
               output logic [31:0] rd1, rd2);
    
    logic [31:0] rf[31:0];
    
    // write third port on falling edge of clock
    always_ff @(negedge clk)    //下降沿 写入
        if (we3)    rf[wa3] <= wd3;
    
    // 读取 操作为组合逻辑电路 (two ports)
    // register 0 hardwired to 0
    assign rd1 = (ra1 != 0) ? rf[ra1] : 0;
    assign rd2 = (ra2 != 0) ? rf[ra2] : 0;
endmodule
