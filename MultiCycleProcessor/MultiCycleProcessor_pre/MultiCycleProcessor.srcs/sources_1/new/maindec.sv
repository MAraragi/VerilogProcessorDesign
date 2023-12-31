module maindec(input  logic       clk,
               input  logic       reset,
               input  logic [5:0] op,
               output logic       pcwrite, memwrite, irwrite, regwrite,
               output logic       alusrca, branch, iord, memtoreg, regdst,
               output logic [1:0] alusrcb, pcsrc, aluop);
    
    localparam   FETCH   = 4'b0000; //State 0
    localparam   DECODE  = 4'b0001; //State 1
    localparam   MEMADR  = 4'b0010; //State 2
    localparam   MEMRD   = 4'b0011; //State 3
    localparam   MEMWB   = 4'b0100; //State 4
    localparam   MEMWR   = 4'b0101; //State 5
    localparam   RTYPEEX = 4'b0110; //State 6
    localparam   RTYPEWB = 4'b0111; //State 7
    localparam   BEQEX   = 4'b1000; //State 8
    localparam   ADDIEX  = 4'b1001; //State 9
    localparam   ADDIWB  = 4'b1010; //State 10
    localparam   JEX     = 4'b1011; //State 11
    
    localparam   LW      = 6'b100011; //Opcode for lw
    localparam   SW      = 6'b101011; //Opcode for sw
    localparam   RTYPE   = 6'b000000; //Opcode for R-type
    localparam   BEQ     = 6'b000100; //Opcode for beq
    localparam   ADDI    = 6'b001000; //Opcode for addi
    localparam   J       = 6'b000010; //Opcode for j
    
    logic [3:0]  state, nextstate;
    logic [14:0] controls;
    
    // state register
    always_ff @(posedge clk or posedge reset)
        if(reset) state <= FETCH;
        else      state <= nextstate;
    
    // next state logic
    always_comb
        case(state)
            FETCH:   nextstate = DECODE;
            DECODE:  case(op)
                   LW:      nextstate = MEMADR;
                   SW:      nextstate = MEMADR;
                   RTYPE:   nextstate = RTYPEEX;
                   BEQ:     nextstate = BEQEX;
                   ADDI:    nextstate = ADDIEX;
                   J:       nextstate = JEX;
                   default: nextstate = 4'bx;
                endcase
            MEMADR: case(op)
                   LW:      nextstate = MEMRD;
                   SW:      nextstate = MEMWR;
                   default: nextstate = 4'bx;
                endcase
            MEMRD:   nextstate = MEMWB;
            MEMWB:   nextstate = FETCH;
            MEMWR:   nextstate = FETCH;
            RTYPEEX: nextstate = RTYPEWB;
            RTYPEWB: nextstate = FETCH;
            BEQEX:   nextstate = FETCH;
            ADDIEX:  nextstate = ADDIWB;
            ADDIWB:  nextstate = FETCH;
            JEX:     nextstate = FETCH;
            default: nextstate = 4'bx;
        endcase
      
     // output logic
     assign {pcwrite, memwrite, irwrite, regwrite,
             alusrca, branch, iord, memtoreg, regdst,
             alusrcb, pcsrc, aluop} = controls;
     
     always_comb
         case(state)
             FETCH:   controls = 15'h5010;
             DECODE:  controls = 15'h0030;
             MEMADR:  controls = 15'h0420;
             MEMRD:   controls = 15'h0100;
             MEMWB:   controls = 15'h0880;
             MEMWR:   controls = 15'h2100;
             RTYPEEX: controls = 15'h0402;
             RTYPEWB: controls = 15'h0840;
             BEQEX:   controls = 15'h0605;
             ADDIEX:  controls = 15'h0420;
             ADDIWB:  controls = 15'h0800;
             JEX:     controls = 15'h4008;
             default: controls = 15'hxxxx;
         endcase
endmodule