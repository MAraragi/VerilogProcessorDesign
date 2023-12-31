module flopenrc #(parameter WIDTH = 8)
                 (input  logic             clk,
                  input  logic             reset,
                  input  logic             en,
                  input  logic             clear,
                  input  logic [WIDTH-1:0] d,
                  output logic [WIDTH-1:0] q);
    always_ff @(posedge clk, posedge reset)
        if      (reset)      q <= 0;
        // Stall(en=0)��Flush(bne����ת)ͬʱ����ʱ, ��ֹ�����
        else if (en & clear) q <= 0;
        else if (en)         q <= d;
endmodule