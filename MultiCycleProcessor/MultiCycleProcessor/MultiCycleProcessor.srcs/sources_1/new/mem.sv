module mem(input  logic        clk, we,
           input  logic [5:0]  a,
           input  logic [31:0] wd,
           output logic [31:0] rd);
    logic [31:0] RAM[63:0];
    initial
       $readmemh("memfile1.dat", RAM);
    assign rd = RAM[a];
    always_ff @(posedge clk)
      if(we)
          RAM[a] <= wd;
endmodule
