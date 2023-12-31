module mux7seg(input    logic        clk,
               input    logic        reset,
               input    logic [31:0] x,
               output   logic [7:0]  an,
               output   logic [6:0]  a2g);
    
    logic [2:0] s;
    logic [3:0] digit;
    logic [19:0] clkdiv;
    
    assign s = clkdiv[19:17];
    
    always_comb
    case(s)
      0: digit = x[3:0];
      1: digit = x[7:4];
      2: digit = x[11:8];
      3: digit = x[15:12];
      4: digit = x[19:16];
      5: digit = x[23:20];
      6: digit = x[27:24];
      7: digit = x[31:28];
      default: digit = x[3:0];
   endcase
   
    always_comb
    case(s)
      0: an = 8'b1111_1110;
      1: an = 8'b1111_1101;
      2: an = 8'b1111_1011;
      3: an = 8'b1111_0111;
      4: an = 8'b1110_1111;
      5: an = 8'b1101_1111;
      6: an = 8'b1011_1111;
      7: an = 8'b0111_1111;
      default: an = 8'b1111_1110;
    endcase
     
     always @(posedge clk or posedge reset)
       begin
         if(reset == 1)
           clkdiv <= 0;
         else
           clkdiv <= clkdiv+1;
       end
    
    always_comb
      begin
      if (s == 3 & x[11:0] != 0)
        a2g = 7'b0110111;
      else
        case(digit)
         'h0: a2g = 7'b1000000;
         'h1: a2g = 7'b1111001;
         'h2: a2g = 7'b0100100;
         'h3: a2g = 7'b0110000;
         'h4: a2g = 7'b0011001;
         'h5: a2g = 7'b0010010;
         'h6: a2g = 7'b0000010;
         'h7: a2g = 7'b1111000;
         'h8: a2g = 7'b0000000;
         'h9: a2g = 7'b0010000;
         'hA: a2g = 7'b0001000;
         'hB: a2g = 7'b0000011;
         'hC: a2g = 7'b1000110;
         'hD: a2g = 7'b0100001;
         'hE: a2g = 7'b0000110;
         'hF: a2g = 7'b0001110;
         default: a2g = 7'b1000000;
        endcase
      end
endmodule