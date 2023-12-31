// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Mar 30 00:09:07 2022
// Host        : LAPTOP-5JLFSJ68 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Sources/repos/SingleCycleProcessor/SingleCycleProcessor.sim/sim_1/synth/func/xsim/testbench_func_synth.v
// Design      : mips
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adder
   (d0,
    D,
    Q,
    S,
    instr_IBUF,
    y);
  output [30:0]d0;
  output [3:0]D;
  input [30:0]Q;
  input [0:0]S;
  input [1:0]instr_IBUF;
  input [3:0]y;

  wire [3:0]D;
  wire [30:0]Q;
  wire [0:0]S;
  wire [30:0]d0;
  wire [1:0]instr_IBUF;
  wire [3:0]y;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:2]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_y_carry__6_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFB08)) 
    \q[28]_i_1 
       (.I0(d0[27]),
        .I1(instr_IBUF[0]),
        .I2(instr_IBUF[1]),
        .I3(y[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[29]_i_1 
       (.I0(d0[28]),
        .I1(instr_IBUF[0]),
        .I2(instr_IBUF[1]),
        .I3(y[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[30]_i_1 
       (.I0(d0[29]),
        .I1(instr_IBUF[0]),
        .I2(instr_IBUF[1]),
        .I3(y[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[31]_i_1 
       (.I0(d0[30]),
        .I1(instr_IBUF[0]),
        .I2(instr_IBUF[1]),
        .I3(y[3]),
        .O(D[3]));
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[1],1'b0}),
        .O(d0[3:0]),
        .S({Q[3:2],S,Q[0]}));
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[7:4]),
        .S(Q[7:4]));
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[11:8]),
        .S(Q[11:8]));
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[15:12]),
        .S(Q[15:12]));
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[19:16]),
        .S(Q[19:16]));
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[23:20]),
        .S(Q[23:20]));
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d0[27:24]),
        .S(Q[27:24]));
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3:2],y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3],d0[30:28]}),
        .S({1'b0,Q[30:28]}));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module adder_0
   (\q_reg[31] ,
    \instr[28] ,
    D,
    d0,
    S,
    \q_reg[8] ,
    \q_reg[12] ,
    \q_reg[16] ,
    \q_reg[20] ,
    \q_reg[24] ,
    \q_reg[28] ,
    \q_reg[31]_0 ,
    instr_IBUF);
  output [3:0]\q_reg[31] ;
  output \instr[28] ;
  output [26:0]D;
  input [29:0]d0;
  input [2:0]S;
  input [3:0]\q_reg[8] ;
  input [3:0]\q_reg[12] ;
  input [3:0]\q_reg[16] ;
  input [3:0]\q_reg[20] ;
  input [3:0]\q_reg[24] ;
  input [3:0]\q_reg[28] ;
  input [2:0]\q_reg[31]_0 ;
  input [30:0]instr_IBUF;

  wire [26:0]D;
  wire [2:0]S;
  wire [29:0]d0;
  wire \instr[28] ;
  wire [30:0]instr_IBUF;
  wire [27:1]\pcbrmux/y ;
  wire [3:0]\q_reg[12] ;
  wire [3:0]\q_reg[16] ;
  wire [3:0]\q_reg[20] ;
  wire [3:0]\q_reg[24] ;
  wire [3:0]\q_reg[28] ;
  wire [3:0]\q_reg[31] ;
  wire [2:0]\q_reg[31]_0 ;
  wire [3:0]\q_reg[8] ;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:2]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_y_carry__6_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFB08)) 
    \q[10]_i_1 
       (.I0(instr_IBUF[8]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [10]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[11]_i_1 
       (.I0(instr_IBUF[9]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [11]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[12]_i_1 
       (.I0(instr_IBUF[10]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [12]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[13]_i_1 
       (.I0(instr_IBUF[11]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [13]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[14]_i_1 
       (.I0(instr_IBUF[12]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [14]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[15]_i_1 
       (.I0(instr_IBUF[13]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [15]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[16]_i_1 
       (.I0(instr_IBUF[14]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [16]),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[17]_i_1 
       (.I0(instr_IBUF[15]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [17]),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[18]_i_1 
       (.I0(instr_IBUF[16]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [18]),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[19]_i_1 
       (.I0(instr_IBUF[17]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [19]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \q[1]_i_1 
       (.I0(\pcbrmux/y [1]),
        .I1(instr_IBUF[30]),
        .I2(instr_IBUF[27]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[20]_i_1 
       (.I0(instr_IBUF[18]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [20]),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[21]_i_1 
       (.I0(instr_IBUF[19]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [21]),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[22]_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [22]),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[23]_i_1 
       (.I0(instr_IBUF[21]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [23]),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[24]_i_1 
       (.I0(instr_IBUF[22]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [24]),
        .O(D[23]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[25]_i_1 
       (.I0(instr_IBUF[23]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [25]),
        .O(D[24]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[26]_i_1 
       (.I0(instr_IBUF[24]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [26]),
        .O(D[25]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[27]_i_1 
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [27]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[2]_i_1 
       (.I0(instr_IBUF[0]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [2]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[3]_i_1 
       (.I0(instr_IBUF[1]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [3]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[4]_i_1 
       (.I0(instr_IBUF[2]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [4]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[5]_i_1 
       (.I0(instr_IBUF[3]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [5]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[6]_i_1 
       (.I0(instr_IBUF[4]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [6]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[7]_i_1 
       (.I0(instr_IBUF[5]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [7]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[8]_i_1 
       (.I0(instr_IBUF[6]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [8]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \q[9]_i_1 
       (.I0(instr_IBUF[7]),
        .I1(instr_IBUF[27]),
        .I2(instr_IBUF[30]),
        .I3(\pcbrmux/y [9]),
        .O(D[8]));
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI({d0[3:1],1'b0}),
        .O(\pcbrmux/y [4:1]),
        .S({S,d0[0]}));
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(d0[7:4]),
        .O(\pcbrmux/y [8:5]),
        .S(\q_reg[8] ));
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(d0[11:8]),
        .O(\pcbrmux/y [12:9]),
        .S(\q_reg[12] ));
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(d0[15:12]),
        .O(\pcbrmux/y [16:13]),
        .S(\q_reg[16] ));
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(d0[19:16]),
        .O(\pcbrmux/y [20:17]),
        .S(\q_reg[20] ));
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(d0[23:20]),
        .O(\pcbrmux/y [24:21]),
        .S(\q_reg[24] ));
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(d0[27:24]),
        .O({\q_reg[31] [0],\pcbrmux/y [27:25]}),
        .S(\q_reg[28] ));
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3:2],y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,d0[29:28]}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3],\q_reg[31] [3:1]}),
        .S({1'b0,\q_reg[31]_0 }));
  LUT4 #(
    .INIT(16'h0322)) 
    y_carry_i_4
       (.I0(instr_IBUF[28]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(instr_IBUF[26]),
        .O(\instr[28] ));
endmodule

module alu
   (S_carry__6_i_7,
    wd3,
    aluout_OBUF,
    \aluout_OBUF[2]_inst_i_1 ,
    \instr[28] ,
    \instr[29] ,
    rd21,
    \instr[15] ,
    \aluout[0] ,
    DI,
    S,
    \aluout_OBUF[4]_inst_i_1 ,
    \aluout_OBUF[4]_inst_i_1_0 ,
    \aluout_OBUF[8]_inst_i_1 ,
    \aluout_OBUF[8]_inst_i_1_0 ,
    \aluout_OBUF[12]_inst_i_1 ,
    \aluout_OBUF[12]_inst_i_1_0 ,
    \aluout_OBUF[16]_inst_i_1 ,
    \aluout_OBUF[16]_inst_i_1_0 ,
    \aluout_OBUF[20]_inst_i_1 ,
    \aluout_OBUF[20]_inst_i_1_0 ,
    \aluout_OBUF[24]_inst_i_1 ,
    \aluout_OBUF[24]_inst_i_1_0 ,
    \aluout_OBUF[28]_inst_i_1 ,
    \aluout_OBUF[28]_inst_i_1_0 ,
    instr_IBUF,
    readdata_IBUF,
    y_carry_i_5,
    \aluout[0]_0 ,
    \aluout[0]_1 ,
    rd10,
    rd11,
    \aluout[1] ,
    \aluout[7] ,
    \aluout[13] ,
    \aluout[19] ,
    \aluout[25] ,
    \aluout[31] );
  output [24:0]S_carry__6_i_7;
  output [6:0]wd3;
  output [6:0]aluout_OBUF;
  output \aluout_OBUF[2]_inst_i_1 ;
  output \instr[28] ;
  output \instr[29] ;
  output rd21;
  output \instr[15] ;
  input \aluout[0] ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\aluout_OBUF[4]_inst_i_1 ;
  input [3:0]\aluout_OBUF[4]_inst_i_1_0 ;
  input [3:0]\aluout_OBUF[8]_inst_i_1 ;
  input [3:0]\aluout_OBUF[8]_inst_i_1_0 ;
  input [3:0]\aluout_OBUF[12]_inst_i_1 ;
  input [3:0]\aluout_OBUF[12]_inst_i_1_0 ;
  input [3:0]\aluout_OBUF[16]_inst_i_1 ;
  input [3:0]\aluout_OBUF[16]_inst_i_1_0 ;
  input [3:0]\aluout_OBUF[20]_inst_i_1 ;
  input [3:0]\aluout_OBUF[20]_inst_i_1_0 ;
  input [3:0]\aluout_OBUF[24]_inst_i_1 ;
  input [3:0]\aluout_OBUF[24]_inst_i_1_0 ;
  input [2:0]\aluout_OBUF[28]_inst_i_1 ;
  input [3:0]\aluout_OBUF[28]_inst_i_1_0 ;
  input [11:0]instr_IBUF;
  input [6:0]readdata_IBUF;
  input [1:0]y_carry_i_5;
  input \aluout[0]_0 ;
  input \aluout[0]_1 ;
  input [5:0]rd10;
  input rd11;
  input \aluout[1] ;
  input \aluout[7] ;
  input \aluout[13] ;
  input \aluout[19] ;
  input \aluout[25] ;
  input \aluout[31] ;

  wire [3:0]DI;
  wire [3:0]S;
  wire [31:0]S_0;
  wire S_carry__0_n_0;
  wire S_carry__0_n_1;
  wire S_carry__0_n_2;
  wire S_carry__0_n_3;
  wire S_carry__1_n_0;
  wire S_carry__1_n_1;
  wire S_carry__1_n_2;
  wire S_carry__1_n_3;
  wire S_carry__2_n_0;
  wire S_carry__2_n_1;
  wire S_carry__2_n_2;
  wire S_carry__2_n_3;
  wire S_carry__3_n_0;
  wire S_carry__3_n_1;
  wire S_carry__3_n_2;
  wire S_carry__3_n_3;
  wire S_carry__4_n_0;
  wire S_carry__4_n_1;
  wire S_carry__4_n_2;
  wire S_carry__4_n_3;
  wire S_carry__5_n_0;
  wire S_carry__5_n_1;
  wire S_carry__5_n_2;
  wire S_carry__5_n_3;
  wire [24:0]S_carry__6_i_7;
  wire S_carry__6_n_1;
  wire S_carry__6_n_2;
  wire S_carry__6_n_3;
  wire S_carry_n_0;
  wire S_carry_n_1;
  wire S_carry_n_2;
  wire S_carry_n_3;
  wire \aluout[0] ;
  wire \aluout[0]_0 ;
  wire \aluout[0]_1 ;
  wire \aluout[13] ;
  wire \aluout[19] ;
  wire \aluout[1] ;
  wire \aluout[25] ;
  wire \aluout[31] ;
  wire \aluout[7] ;
  wire [6:0]aluout_OBUF;
  wire [3:0]\aluout_OBUF[12]_inst_i_1 ;
  wire [3:0]\aluout_OBUF[12]_inst_i_1_0 ;
  wire [3:0]\aluout_OBUF[16]_inst_i_1 ;
  wire [3:0]\aluout_OBUF[16]_inst_i_1_0 ;
  wire [3:0]\aluout_OBUF[20]_inst_i_1 ;
  wire [3:0]\aluout_OBUF[20]_inst_i_1_0 ;
  wire [3:0]\aluout_OBUF[24]_inst_i_1 ;
  wire [3:0]\aluout_OBUF[24]_inst_i_1_0 ;
  wire [2:0]\aluout_OBUF[28]_inst_i_1 ;
  wire [3:0]\aluout_OBUF[28]_inst_i_1_0 ;
  wire \aluout_OBUF[2]_inst_i_1 ;
  wire [3:0]\aluout_OBUF[4]_inst_i_1 ;
  wire [3:0]\aluout_OBUF[4]_inst_i_1_0 ;
  wire [3:0]\aluout_OBUF[8]_inst_i_1 ;
  wire [3:0]\aluout_OBUF[8]_inst_i_1_0 ;
  wire \instr[15] ;
  wire \instr[28] ;
  wire \instr[29] ;
  wire [11:0]instr_IBUF;
  wire [5:0]rd10;
  wire rd11;
  wire rd21;
  wire [6:0]readdata_IBUF;
  wire [6:0]wd3;
  wire [1:0]y_carry_i_5;
  wire [3:3]NLW_S_carry__6_CO_UNCONNECTED;

  CARRY4 S_carry
       (.CI(1'b0),
        .CO({S_carry_n_0,S_carry_n_1,S_carry_n_2,S_carry_n_3}),
        .CYINIT(\aluout[0] ),
        .DI(DI),
        .O({S_carry__6_i_7[1:0],S_0[1:0]}),
        .S(S));
  CARRY4 S_carry__0
       (.CI(S_carry_n_0),
        .CO({S_carry__0_n_0,S_carry__0_n_1,S_carry__0_n_2,S_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\aluout_OBUF[4]_inst_i_1 ),
        .O({S_0[7],S_carry__6_i_7[4:2]}),
        .S(\aluout_OBUF[4]_inst_i_1_0 ));
  CARRY4 S_carry__1
       (.CI(S_carry__0_n_0),
        .CO({S_carry__1_n_0,S_carry__1_n_1,S_carry__1_n_2,S_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\aluout_OBUF[8]_inst_i_1 ),
        .O(S_carry__6_i_7[8:5]),
        .S(\aluout_OBUF[8]_inst_i_1_0 ));
  CARRY4 S_carry__2
       (.CI(S_carry__1_n_0),
        .CO({S_carry__2_n_0,S_carry__2_n_1,S_carry__2_n_2,S_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\aluout_OBUF[12]_inst_i_1 ),
        .O({S_carry__6_i_7[11:10],S_0[13],S_carry__6_i_7[9]}),
        .S(\aluout_OBUF[12]_inst_i_1_0 ));
  CARRY4 S_carry__3
       (.CI(S_carry__2_n_0),
        .CO({S_carry__3_n_0,S_carry__3_n_1,S_carry__3_n_2,S_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\aluout_OBUF[16]_inst_i_1 ),
        .O({S_0[19],S_carry__6_i_7[14:12]}),
        .S(\aluout_OBUF[16]_inst_i_1_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    S_carry__3_i_9
       (.I0(instr_IBUF[1]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[9]),
        .O(\instr[15] ));
  CARRY4 S_carry__4
       (.CI(S_carry__3_n_0),
        .CO({S_carry__4_n_0,S_carry__4_n_1,S_carry__4_n_2,S_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(\aluout_OBUF[20]_inst_i_1 ),
        .O(S_carry__6_i_7[18:15]),
        .S(\aluout_OBUF[20]_inst_i_1_0 ));
  CARRY4 S_carry__5
       (.CI(S_carry__4_n_0),
        .CO({S_carry__5_n_0,S_carry__5_n_1,S_carry__5_n_2,S_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(\aluout_OBUF[24]_inst_i_1 ),
        .O({S_carry__6_i_7[21:20],S_0[25],S_carry__6_i_7[19]}),
        .S(\aluout_OBUF[24]_inst_i_1_0 ));
  CARRY4 S_carry__6
       (.CI(S_carry__5_n_0),
        .CO({NLW_S_carry__6_CO_UNCONNECTED[3],S_carry__6_n_1,S_carry__6_n_2,S_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\aluout_OBUF[28]_inst_i_1 }),
        .O({S_0[31],S_carry__6_i_7[24:22]}),
        .S(\aluout_OBUF[28]_inst_i_1_0 ));
  LUT5 #(
    .INIT(32'hA2A23322)) 
    S_carry_i_10
       (.I0(instr_IBUF[9]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[7]),
        .I3(instr_IBUF[0]),
        .I4(instr_IBUF[8]),
        .O(\instr[28] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    S_carry_i_11
       (.I0(instr_IBUF[4]),
        .I1(instr_IBUF[2]),
        .I2(instr_IBUF[3]),
        .I3(instr_IBUF[5]),
        .I4(instr_IBUF[6]),
        .O(rd21));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    S_carry_i_12
       (.I0(instr_IBUF[10]),
        .I1(instr_IBUF[11]),
        .O(\instr[29] ));
  LUT6 #(
    .INIT(64'hB8FFB8CCB8CCB800)) 
    \aluout_OBUF[0]_inst_i_1 
       (.I0(S_0[31]),
        .I1(\aluout[0]_0 ),
        .I2(S_0[0]),
        .I3(\aluout[0]_1 ),
        .I4(DI[0]),
        .I5(\aluout[0] ),
        .O(aluout_OBUF[0]));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[13]_inst_i_1 
       (.I0(\aluout[0]_0 ),
        .I1(S_0[13]),
        .I2(\aluout[0]_1 ),
        .I3(rd10[2]),
        .I4(rd11),
        .I5(\aluout[13] ),
        .O(aluout_OBUF[3]));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[19]_inst_i_1 
       (.I0(\aluout[0]_0 ),
        .I1(S_0[19]),
        .I2(\aluout[0]_1 ),
        .I3(rd10[3]),
        .I4(rd11),
        .I5(\aluout[19] ),
        .O(aluout_OBUF[4]));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[1]_inst_i_1 
       (.I0(\aluout[0]_0 ),
        .I1(S_0[1]),
        .I2(\aluout[0]_1 ),
        .I3(rd10[0]),
        .I4(rd11),
        .I5(\aluout[1] ),
        .O(aluout_OBUF[1]));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[25]_inst_i_1 
       (.I0(\aluout[0]_0 ),
        .I1(S_0[25]),
        .I2(\aluout[0]_1 ),
        .I3(rd10[4]),
        .I4(rd11),
        .I5(\aluout[25] ),
        .O(aluout_OBUF[5]));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[31]_inst_i_1 
       (.I0(\aluout[0]_0 ),
        .I1(S_0[31]),
        .I2(\aluout[0]_1 ),
        .I3(rd10[5]),
        .I4(rd11),
        .I5(\aluout[31] ),
        .O(aluout_OBUF[6]));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[7]_inst_i_1 
       (.I0(\aluout[0]_0 ),
        .I1(S_0[7]),
        .I2(\aluout[0]_1 ),
        .I3(rd10[1]),
        .I4(rd11),
        .I5(\aluout[7] ),
        .O(aluout_OBUF[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(aluout_OBUF[1]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[11]),
        .I3(readdata_IBUF[1]),
        .O(wd3[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(aluout_OBUF[0]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[11]),
        .I3(readdata_IBUF[0]),
        .O(wd3[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(aluout_OBUF[3]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[11]),
        .I3(readdata_IBUF[3]),
        .O(wd3[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(aluout_OBUF[4]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[11]),
        .I3(readdata_IBUF[4]),
        .O(wd3[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(aluout_OBUF[5]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[11]),
        .I3(readdata_IBUF[5]),
        .O(wd3[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(aluout_OBUF[6]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[11]),
        .I3(readdata_IBUF[6]),
        .O(wd3[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(aluout_OBUF[2]),
        .I1(instr_IBUF[10]),
        .I2(instr_IBUF[11]),
        .I3(readdata_IBUF[2]),
        .O(wd3[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    y_carry_i_8
       (.I0(aluout_OBUF[1]),
        .I1(aluout_OBUF[0]),
        .I2(y_carry_i_5[1]),
        .I3(y_carry_i_5[0]),
        .O(\aluout_OBUF[2]_inst_i_1 ));
endmodule

module datapath
   (Q,
    aluout_OBUF,
    writedata_OBUF,
    instr_IBUF,
    readdata_IBUF,
    CLK,
    AR);
  output [30:0]Q;
  output [31:0]aluout_OBUF;
  output [31:0]writedata_OBUF;
  input [30:0]instr_IBUF;
  input [31:0]readdata_IBUF;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [30:0]Q;
  wire [30:2]S;
  wire alu_n_39;
  wire alu_n_40;
  wire alu_n_41;
  wire alu_n_43;
  wire [31:0]aluout_OBUF;
  wire [31:1]d0;
  wire [30:0]instr_IBUF;
  wire pcadd2_n_4;
  wire [31:28]\pcbrmux/y ;
  wire pcreg_n_0;
  wire [31:1]rd10;
  wire rd11;
  wire rd21;
  wire [31:0]readdata_IBUF;
  wire rf_n_0;
  wire rf_n_1;
  wire rf_n_100;
  wire rf_n_101;
  wire rf_n_102;
  wire rf_n_103;
  wire rf_n_104;
  wire rf_n_105;
  wire rf_n_106;
  wire rf_n_107;
  wire rf_n_108;
  wire rf_n_109;
  wire rf_n_110;
  wire rf_n_111;
  wire rf_n_112;
  wire rf_n_113;
  wire rf_n_114;
  wire rf_n_115;
  wire rf_n_116;
  wire rf_n_117;
  wire rf_n_118;
  wire rf_n_119;
  wire rf_n_120;
  wire rf_n_121;
  wire rf_n_122;
  wire rf_n_123;
  wire rf_n_124;
  wire rf_n_125;
  wire rf_n_126;
  wire rf_n_127;
  wire rf_n_128;
  wire rf_n_129;
  wire rf_n_130;
  wire rf_n_131;
  wire rf_n_132;
  wire rf_n_133;
  wire rf_n_14;
  wire rf_n_2;
  wire rf_n_3;
  wire rf_n_4;
  wire rf_n_40;
  wire rf_n_41;
  wire rf_n_42;
  wire rf_n_43;
  wire rf_n_44;
  wire rf_n_45;
  wire rf_n_46;
  wire rf_n_47;
  wire rf_n_48;
  wire rf_n_49;
  wire rf_n_5;
  wire rf_n_50;
  wire rf_n_51;
  wire rf_n_52;
  wire rf_n_53;
  wire rf_n_54;
  wire rf_n_55;
  wire rf_n_56;
  wire rf_n_57;
  wire rf_n_58;
  wire rf_n_59;
  wire rf_n_6;
  wire rf_n_60;
  wire rf_n_61;
  wire rf_n_62;
  wire rf_n_63;
  wire rf_n_64;
  wire rf_n_65;
  wire rf_n_66;
  wire rf_n_67;
  wire rf_n_68;
  wire rf_n_69;
  wire rf_n_70;
  wire rf_n_71;
  wire rf_n_72;
  wire rf_n_73;
  wire rf_n_74;
  wire rf_n_75;
  wire rf_n_76;
  wire rf_n_77;
  wire rf_n_78;
  wire rf_n_79;
  wire rf_n_80;
  wire rf_n_81;
  wire rf_n_82;
  wire rf_n_83;
  wire rf_n_84;
  wire rf_n_85;
  wire rf_n_86;
  wire rf_n_87;
  wire rf_n_88;
  wire rf_n_89;
  wire rf_n_90;
  wire rf_n_91;
  wire rf_n_92;
  wire rf_n_93;
  wire rf_n_94;
  wire rf_n_95;
  wire rf_n_96;
  wire rf_n_97;
  wire rf_n_98;
  wire rf_n_99;
  wire [31:0]wd3;
  wire [31:0]writedata_OBUF;
  wire [31:1]y;

  alu alu
       (.DI({rf_n_73,rf_n_74,rf_n_75,rf_n_76}),
        .S({rf_n_69,rf_n_70,rf_n_71,rf_n_72}),
        .S_carry__6_i_7({S[30:26],S[24:20],S[18:14],S[12:8],S[6:2]}),
        .\aluout[0] (rf_n_128),
        .\aluout[0]_0 (rf_n_40),
        .\aluout[0]_1 (rf_n_41),
        .\aluout[13] (rf_n_131),
        .\aluout[19] (rf_n_132),
        .\aluout[1] (rf_n_129),
        .\aluout[25] (rf_n_133),
        .\aluout[31] (rf_n_14),
        .\aluout[7] (rf_n_130),
        .aluout_OBUF({aluout_OBUF[31],aluout_OBUF[25],aluout_OBUF[19],aluout_OBUF[13],aluout_OBUF[7],aluout_OBUF[1:0]}),
        .\aluout_OBUF[12]_inst_i_1 ({rf_n_97,rf_n_98,rf_n_99,rf_n_100}),
        .\aluout_OBUF[12]_inst_i_1_0 ({rf_n_93,rf_n_94,rf_n_95,rf_n_96}),
        .\aluout_OBUF[16]_inst_i_1 ({rf_n_105,rf_n_106,rf_n_107,rf_n_108}),
        .\aluout_OBUF[16]_inst_i_1_0 ({rf_n_101,rf_n_102,rf_n_103,rf_n_104}),
        .\aluout_OBUF[20]_inst_i_1 ({rf_n_113,rf_n_114,rf_n_115,rf_n_116}),
        .\aluout_OBUF[20]_inst_i_1_0 ({rf_n_109,rf_n_110,rf_n_111,rf_n_112}),
        .\aluout_OBUF[24]_inst_i_1 ({rf_n_121,rf_n_122,rf_n_123,rf_n_124}),
        .\aluout_OBUF[24]_inst_i_1_0 ({rf_n_117,rf_n_118,rf_n_119,rf_n_120}),
        .\aluout_OBUF[28]_inst_i_1 ({rf_n_125,rf_n_126,rf_n_127}),
        .\aluout_OBUF[28]_inst_i_1_0 ({rf_n_3,rf_n_4,rf_n_5,rf_n_6}),
        .\aluout_OBUF[2]_inst_i_1 (alu_n_39),
        .\aluout_OBUF[4]_inst_i_1 ({rf_n_81,rf_n_82,rf_n_83,rf_n_84}),
        .\aluout_OBUF[4]_inst_i_1_0 ({rf_n_77,rf_n_78,rf_n_79,rf_n_80}),
        .\aluout_OBUF[8]_inst_i_1 ({rf_n_89,rf_n_90,rf_n_91,rf_n_92}),
        .\aluout_OBUF[8]_inst_i_1_0 ({rf_n_85,rf_n_86,rf_n_87,rf_n_88}),
        .\instr[15] (alu_n_43),
        .\instr[28] (alu_n_40),
        .\instr[29] (alu_n_41),
        .instr_IBUF({instr_IBUF[30:26],instr_IBUF[20:15],instr_IBUF[1]}),
        .rd10({rd10[31],rd10[25],rd10[19],rd10[13],rd10[7],rd10[1]}),
        .rd11(rd11),
        .rd21(rd21),
        .readdata_IBUF({readdata_IBUF[31],readdata_IBUF[25],readdata_IBUF[19],readdata_IBUF[13],readdata_IBUF[7],readdata_IBUF[1:0]}),
        .wd3({wd3[31],wd3[25],wd3[19],wd3[13],wd3[7],wd3[1:0]}),
        .y_carry_i_5(aluout_OBUF[3:2]));
  adder pcadd1
       (.D(y[31:28]),
        .Q(Q),
        .S(pcreg_n_0),
        .d0(d0),
        .instr_IBUF({instr_IBUF[30],instr_IBUF[27]}),
        .y(\pcbrmux/y ));
  adder_0 pcadd2
       (.D(y[27:1]),
        .S({rf_n_42,rf_n_43,rf_n_44}),
        .d0(d0[30:1]),
        .\instr[28] (pcadd2_n_4),
        .instr_IBUF(instr_IBUF),
        .\q_reg[12] ({rf_n_49,rf_n_50,rf_n_51,rf_n_52}),
        .\q_reg[16] ({rf_n_53,rf_n_54,rf_n_55,rf_n_56}),
        .\q_reg[20] ({rf_n_57,rf_n_58,rf_n_59,rf_n_60}),
        .\q_reg[24] ({rf_n_61,rf_n_62,rf_n_63,rf_n_64}),
        .\q_reg[28] ({rf_n_65,rf_n_66,rf_n_67,rf_n_68}),
        .\q_reg[31] (\pcbrmux/y ),
        .\q_reg[31]_0 ({rf_n_0,rf_n_1,rf_n_2}),
        .\q_reg[8] ({rf_n_45,rf_n_46,rf_n_47,rf_n_48}));
  flopr pcreg
       (.AR(AR),
        .CLK(CLK),
        .D(y),
        .Q(Q),
        .S(pcreg_n_0));
  regfile rf
       (.CLK(CLK),
        .DI({rf_n_73,rf_n_74,rf_n_75,rf_n_76}),
        .S({rf_n_42,rf_n_43,rf_n_44}),
        .S_carry__6(alu_n_41),
        .S_carry_i_10({rf_n_101,rf_n_102,rf_n_103,rf_n_104}),
        .S_carry_i_10_0({rf_n_109,rf_n_110,rf_n_111,rf_n_112}),
        .S_carry_i_10_1({rf_n_117,rf_n_118,rf_n_119,rf_n_120}),
        .\aluout[30] ({S[30:26],S[24:20],S[18:14],S[12:8],S[6:2]}),
        .aluout_OBUF({aluout_OBUF[30:26],aluout_OBUF[24:20],aluout_OBUF[18:14],aluout_OBUF[12:8],aluout_OBUF[6:2]}),
        .\aluout_OBUF[30]_inst_i_1_0 ({wd3[31],wd3[25],wd3[19],wd3[13],wd3[7],wd3[1:0]}),
        .\aluout_OBUF[31]_inst_i_1 (alu_n_40),
        .\aluout_OBUF[31]_inst_i_1_0 (alu_n_43),
        .\aluout_OBUF[31]_inst_i_5_0 ({rf_n_3,rf_n_4,rf_n_5,rf_n_6}),
        .d0(d0[31:2]),
        .\instr[11] ({rf_n_85,rf_n_86,rf_n_87,rf_n_88}),
        .\instr[15] ({rf_n_93,rf_n_94,rf_n_95,rf_n_96}),
        .\instr[25] ({rd10[31],rd10[25],rd10[19],rd10[13],rd10[7],rd10[1]}),
        .\instr[25]_0 ({rf_n_81,rf_n_82,rf_n_83,rf_n_84}),
        .\instr[25]_1 ({rf_n_89,rf_n_90,rf_n_91,rf_n_92}),
        .\instr[25]_2 ({rf_n_97,rf_n_98,rf_n_99,rf_n_100}),
        .\instr[25]_3 ({rf_n_105,rf_n_106,rf_n_107,rf_n_108}),
        .\instr[25]_4 ({rf_n_113,rf_n_114,rf_n_115,rf_n_116}),
        .\instr[25]_5 ({rf_n_121,rf_n_122,rf_n_123,rf_n_124}),
        .\instr[25]_6 ({rf_n_125,rf_n_126,rf_n_127}),
        .\instr[27] (rf_n_40),
        .\instr[28] (rf_n_41),
        .\instr[31] (rf_n_14),
        .\instr[31]_0 (rf_n_128),
        .\instr[31]_1 (rf_n_129),
        .\instr[31]_2 (rf_n_130),
        .\instr[31]_3 (rf_n_131),
        .\instr[31]_4 (rf_n_132),
        .\instr[31]_5 (rf_n_133),
        .\instr[3] ({rf_n_69,rf_n_70,rf_n_71,rf_n_72}),
        .\instr[7] ({rf_n_77,rf_n_78,rf_n_79,rf_n_80}),
        .instr_IBUF(instr_IBUF),
        .\q_reg[12] ({rf_n_49,rf_n_50,rf_n_51,rf_n_52}),
        .\q_reg[16] ({rf_n_53,rf_n_54,rf_n_55,rf_n_56}),
        .\q_reg[20] ({rf_n_57,rf_n_58,rf_n_59,rf_n_60}),
        .\q_reg[24] ({rf_n_61,rf_n_62,rf_n_63,rf_n_64}),
        .\q_reg[28] ({rf_n_65,rf_n_66,rf_n_67,rf_n_68}),
        .\q_reg[31] ({rf_n_0,rf_n_1,rf_n_2}),
        .\q_reg[8] ({rf_n_45,rf_n_46,rf_n_47,rf_n_48}),
        .rd11(rd11),
        .rd21(rd21),
        .readdata_IBUF({readdata_IBUF[30:26],readdata_IBUF[24:20],readdata_IBUF[18:14],readdata_IBUF[12:8],readdata_IBUF[6:2]}),
        .writedata_OBUF(writedata_OBUF),
        .y_carry__6(pcadd2_n_4),
        .y_carry_i_3_0(alu_n_39),
        .y_carry_i_3_1({aluout_OBUF[31],aluout_OBUF[25],aluout_OBUF[19],aluout_OBUF[13],aluout_OBUF[7]}));
endmodule

module flopr
   (S,
    Q,
    D,
    CLK,
    AR);
  output [0:0]S;
  output [30:0]Q;
  input [30:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [30:0]D;
  wire [30:0]Q;
  wire [0:0]S;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  LUT1 #(
    .INIT(2'h1)) 
    y_carry_i_1
       (.I0(Q[1]),
        .O(S));
endmodule

(* NotValidForBitStream *)
module mips
   (clk,
    reset,
    pc,
    instr,
    memwrite,
    aluout,
    writedata,
    readdata);
  input clk;
  input reset;
  output [31:0]pc;
  input [31:0]instr;
  output memwrite;
  output [31:0]aluout;
  output [31:0]writedata;
  input [31:0]readdata;

  wire [31:0]aluout;
  wire [31:0]aluout_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]instr;
  wire [31:0]instr_IBUF;
  wire memwrite;
  wire memwrite_OBUF;
  wire [31:0]pc;
  wire [31:1]pc_OBUF;
  wire [31:0]readdata;
  wire [31:0]readdata_IBUF;
  wire reset;
  wire reset_IBUF;
  wire [31:0]writedata;
  wire [31:0]writedata_OBUF;

  OBUF \aluout_OBUF[0]_inst 
       (.I(aluout_OBUF[0]),
        .O(aluout[0]));
  OBUF \aluout_OBUF[10]_inst 
       (.I(aluout_OBUF[10]),
        .O(aluout[10]));
  OBUF \aluout_OBUF[11]_inst 
       (.I(aluout_OBUF[11]),
        .O(aluout[11]));
  OBUF \aluout_OBUF[12]_inst 
       (.I(aluout_OBUF[12]),
        .O(aluout[12]));
  OBUF \aluout_OBUF[13]_inst 
       (.I(aluout_OBUF[13]),
        .O(aluout[13]));
  OBUF \aluout_OBUF[14]_inst 
       (.I(aluout_OBUF[14]),
        .O(aluout[14]));
  OBUF \aluout_OBUF[15]_inst 
       (.I(aluout_OBUF[15]),
        .O(aluout[15]));
  OBUF \aluout_OBUF[16]_inst 
       (.I(aluout_OBUF[16]),
        .O(aluout[16]));
  OBUF \aluout_OBUF[17]_inst 
       (.I(aluout_OBUF[17]),
        .O(aluout[17]));
  OBUF \aluout_OBUF[18]_inst 
       (.I(aluout_OBUF[18]),
        .O(aluout[18]));
  OBUF \aluout_OBUF[19]_inst 
       (.I(aluout_OBUF[19]),
        .O(aluout[19]));
  OBUF \aluout_OBUF[1]_inst 
       (.I(aluout_OBUF[1]),
        .O(aluout[1]));
  OBUF \aluout_OBUF[20]_inst 
       (.I(aluout_OBUF[20]),
        .O(aluout[20]));
  OBUF \aluout_OBUF[21]_inst 
       (.I(aluout_OBUF[21]),
        .O(aluout[21]));
  OBUF \aluout_OBUF[22]_inst 
       (.I(aluout_OBUF[22]),
        .O(aluout[22]));
  OBUF \aluout_OBUF[23]_inst 
       (.I(aluout_OBUF[23]),
        .O(aluout[23]));
  OBUF \aluout_OBUF[24]_inst 
       (.I(aluout_OBUF[24]),
        .O(aluout[24]));
  OBUF \aluout_OBUF[25]_inst 
       (.I(aluout_OBUF[25]),
        .O(aluout[25]));
  OBUF \aluout_OBUF[26]_inst 
       (.I(aluout_OBUF[26]),
        .O(aluout[26]));
  OBUF \aluout_OBUF[27]_inst 
       (.I(aluout_OBUF[27]),
        .O(aluout[27]));
  OBUF \aluout_OBUF[28]_inst 
       (.I(aluout_OBUF[28]),
        .O(aluout[28]));
  OBUF \aluout_OBUF[29]_inst 
       (.I(aluout_OBUF[29]),
        .O(aluout[29]));
  OBUF \aluout_OBUF[2]_inst 
       (.I(aluout_OBUF[2]),
        .O(aluout[2]));
  OBUF \aluout_OBUF[30]_inst 
       (.I(aluout_OBUF[30]),
        .O(aluout[30]));
  OBUF \aluout_OBUF[31]_inst 
       (.I(aluout_OBUF[31]),
        .O(aluout[31]));
  OBUF \aluout_OBUF[3]_inst 
       (.I(aluout_OBUF[3]),
        .O(aluout[3]));
  OBUF \aluout_OBUF[4]_inst 
       (.I(aluout_OBUF[4]),
        .O(aluout[4]));
  OBUF \aluout_OBUF[5]_inst 
       (.I(aluout_OBUF[5]),
        .O(aluout[5]));
  OBUF \aluout_OBUF[6]_inst 
       (.I(aluout_OBUF[6]),
        .O(aluout[6]));
  OBUF \aluout_OBUF[7]_inst 
       (.I(aluout_OBUF[7]),
        .O(aluout[7]));
  OBUF \aluout_OBUF[8]_inst 
       (.I(aluout_OBUF[8]),
        .O(aluout[8]));
  OBUF \aluout_OBUF[9]_inst 
       (.I(aluout_OBUF[9]),
        .O(aluout[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  datapath dp
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .Q(pc_OBUF),
        .aluout_OBUF(aluout_OBUF),
        .instr_IBUF({instr_IBUF[31],instr_IBUF[29:0]}),
        .readdata_IBUF(readdata_IBUF),
        .writedata_OBUF(writedata_OBUF));
  IBUF \instr_IBUF[0]_inst 
       (.I(instr[0]),
        .O(instr_IBUF[0]));
  IBUF \instr_IBUF[10]_inst 
       (.I(instr[10]),
        .O(instr_IBUF[10]));
  IBUF \instr_IBUF[11]_inst 
       (.I(instr[11]),
        .O(instr_IBUF[11]));
  IBUF \instr_IBUF[12]_inst 
       (.I(instr[12]),
        .O(instr_IBUF[12]));
  IBUF \instr_IBUF[13]_inst 
       (.I(instr[13]),
        .O(instr_IBUF[13]));
  IBUF \instr_IBUF[14]_inst 
       (.I(instr[14]),
        .O(instr_IBUF[14]));
  IBUF \instr_IBUF[15]_inst 
       (.I(instr[15]),
        .O(instr_IBUF[15]));
  IBUF \instr_IBUF[16]_inst 
       (.I(instr[16]),
        .O(instr_IBUF[16]));
  IBUF \instr_IBUF[17]_inst 
       (.I(instr[17]),
        .O(instr_IBUF[17]));
  IBUF \instr_IBUF[18]_inst 
       (.I(instr[18]),
        .O(instr_IBUF[18]));
  IBUF \instr_IBUF[19]_inst 
       (.I(instr[19]),
        .O(instr_IBUF[19]));
  IBUF \instr_IBUF[1]_inst 
       (.I(instr[1]),
        .O(instr_IBUF[1]));
  IBUF \instr_IBUF[20]_inst 
       (.I(instr[20]),
        .O(instr_IBUF[20]));
  IBUF \instr_IBUF[21]_inst 
       (.I(instr[21]),
        .O(instr_IBUF[21]));
  IBUF \instr_IBUF[22]_inst 
       (.I(instr[22]),
        .O(instr_IBUF[22]));
  IBUF \instr_IBUF[23]_inst 
       (.I(instr[23]),
        .O(instr_IBUF[23]));
  IBUF \instr_IBUF[24]_inst 
       (.I(instr[24]),
        .O(instr_IBUF[24]));
  IBUF \instr_IBUF[25]_inst 
       (.I(instr[25]),
        .O(instr_IBUF[25]));
  IBUF \instr_IBUF[26]_inst 
       (.I(instr[26]),
        .O(instr_IBUF[26]));
  IBUF \instr_IBUF[27]_inst 
       (.I(instr[27]),
        .O(instr_IBUF[27]));
  IBUF \instr_IBUF[28]_inst 
       (.I(instr[28]),
        .O(instr_IBUF[28]));
  IBUF \instr_IBUF[29]_inst 
       (.I(instr[29]),
        .O(instr_IBUF[29]));
  IBUF \instr_IBUF[2]_inst 
       (.I(instr[2]),
        .O(instr_IBUF[2]));
  IBUF \instr_IBUF[31]_inst 
       (.I(instr[31]),
        .O(instr_IBUF[31]));
  IBUF \instr_IBUF[3]_inst 
       (.I(instr[3]),
        .O(instr_IBUF[3]));
  IBUF \instr_IBUF[4]_inst 
       (.I(instr[4]),
        .O(instr_IBUF[4]));
  IBUF \instr_IBUF[5]_inst 
       (.I(instr[5]),
        .O(instr_IBUF[5]));
  IBUF \instr_IBUF[6]_inst 
       (.I(instr[6]),
        .O(instr_IBUF[6]));
  IBUF \instr_IBUF[7]_inst 
       (.I(instr[7]),
        .O(instr_IBUF[7]));
  IBUF \instr_IBUF[8]_inst 
       (.I(instr[8]),
        .O(instr_IBUF[8]));
  IBUF \instr_IBUF[9]_inst 
       (.I(instr[9]),
        .O(instr_IBUF[9]));
  OBUF memwrite_OBUF_inst
       (.I(memwrite_OBUF),
        .O(memwrite));
  LUT2 #(
    .INIT(4'h8)) 
    memwrite_OBUF_inst_i_1
       (.I0(instr_IBUF[29]),
        .I1(instr_IBUF[31]),
        .O(memwrite_OBUF));
  OBUF \pc_OBUF[0]_inst 
       (.I(1'b0),
        .O(pc[0]));
  OBUF \pc_OBUF[10]_inst 
       (.I(pc_OBUF[10]),
        .O(pc[10]));
  OBUF \pc_OBUF[11]_inst 
       (.I(pc_OBUF[11]),
        .O(pc[11]));
  OBUF \pc_OBUF[12]_inst 
       (.I(pc_OBUF[12]),
        .O(pc[12]));
  OBUF \pc_OBUF[13]_inst 
       (.I(pc_OBUF[13]),
        .O(pc[13]));
  OBUF \pc_OBUF[14]_inst 
       (.I(pc_OBUF[14]),
        .O(pc[14]));
  OBUF \pc_OBUF[15]_inst 
       (.I(pc_OBUF[15]),
        .O(pc[15]));
  OBUF \pc_OBUF[16]_inst 
       (.I(pc_OBUF[16]),
        .O(pc[16]));
  OBUF \pc_OBUF[17]_inst 
       (.I(pc_OBUF[17]),
        .O(pc[17]));
  OBUF \pc_OBUF[18]_inst 
       (.I(pc_OBUF[18]),
        .O(pc[18]));
  OBUF \pc_OBUF[19]_inst 
       (.I(pc_OBUF[19]),
        .O(pc[19]));
  OBUF \pc_OBUF[1]_inst 
       (.I(pc_OBUF[1]),
        .O(pc[1]));
  OBUF \pc_OBUF[20]_inst 
       (.I(pc_OBUF[20]),
        .O(pc[20]));
  OBUF \pc_OBUF[21]_inst 
       (.I(pc_OBUF[21]),
        .O(pc[21]));
  OBUF \pc_OBUF[22]_inst 
       (.I(pc_OBUF[22]),
        .O(pc[22]));
  OBUF \pc_OBUF[23]_inst 
       (.I(pc_OBUF[23]),
        .O(pc[23]));
  OBUF \pc_OBUF[24]_inst 
       (.I(pc_OBUF[24]),
        .O(pc[24]));
  OBUF \pc_OBUF[25]_inst 
       (.I(pc_OBUF[25]),
        .O(pc[25]));
  OBUF \pc_OBUF[26]_inst 
       (.I(pc_OBUF[26]),
        .O(pc[26]));
  OBUF \pc_OBUF[27]_inst 
       (.I(pc_OBUF[27]),
        .O(pc[27]));
  OBUF \pc_OBUF[28]_inst 
       (.I(pc_OBUF[28]),
        .O(pc[28]));
  OBUF \pc_OBUF[29]_inst 
       (.I(pc_OBUF[29]),
        .O(pc[29]));
  OBUF \pc_OBUF[2]_inst 
       (.I(pc_OBUF[2]),
        .O(pc[2]));
  OBUF \pc_OBUF[30]_inst 
       (.I(pc_OBUF[30]),
        .O(pc[30]));
  OBUF \pc_OBUF[31]_inst 
       (.I(pc_OBUF[31]),
        .O(pc[31]));
  OBUF \pc_OBUF[3]_inst 
       (.I(pc_OBUF[3]),
        .O(pc[3]));
  OBUF \pc_OBUF[4]_inst 
       (.I(pc_OBUF[4]),
        .O(pc[4]));
  OBUF \pc_OBUF[5]_inst 
       (.I(pc_OBUF[5]),
        .O(pc[5]));
  OBUF \pc_OBUF[6]_inst 
       (.I(pc_OBUF[6]),
        .O(pc[6]));
  OBUF \pc_OBUF[7]_inst 
       (.I(pc_OBUF[7]),
        .O(pc[7]));
  OBUF \pc_OBUF[8]_inst 
       (.I(pc_OBUF[8]),
        .O(pc[8]));
  OBUF \pc_OBUF[9]_inst 
       (.I(pc_OBUF[9]),
        .O(pc[9]));
  IBUF \readdata_IBUF[0]_inst 
       (.I(readdata[0]),
        .O(readdata_IBUF[0]));
  IBUF \readdata_IBUF[10]_inst 
       (.I(readdata[10]),
        .O(readdata_IBUF[10]));
  IBUF \readdata_IBUF[11]_inst 
       (.I(readdata[11]),
        .O(readdata_IBUF[11]));
  IBUF \readdata_IBUF[12]_inst 
       (.I(readdata[12]),
        .O(readdata_IBUF[12]));
  IBUF \readdata_IBUF[13]_inst 
       (.I(readdata[13]),
        .O(readdata_IBUF[13]));
  IBUF \readdata_IBUF[14]_inst 
       (.I(readdata[14]),
        .O(readdata_IBUF[14]));
  IBUF \readdata_IBUF[15]_inst 
       (.I(readdata[15]),
        .O(readdata_IBUF[15]));
  IBUF \readdata_IBUF[16]_inst 
       (.I(readdata[16]),
        .O(readdata_IBUF[16]));
  IBUF \readdata_IBUF[17]_inst 
       (.I(readdata[17]),
        .O(readdata_IBUF[17]));
  IBUF \readdata_IBUF[18]_inst 
       (.I(readdata[18]),
        .O(readdata_IBUF[18]));
  IBUF \readdata_IBUF[19]_inst 
       (.I(readdata[19]),
        .O(readdata_IBUF[19]));
  IBUF \readdata_IBUF[1]_inst 
       (.I(readdata[1]),
        .O(readdata_IBUF[1]));
  IBUF \readdata_IBUF[20]_inst 
       (.I(readdata[20]),
        .O(readdata_IBUF[20]));
  IBUF \readdata_IBUF[21]_inst 
       (.I(readdata[21]),
        .O(readdata_IBUF[21]));
  IBUF \readdata_IBUF[22]_inst 
       (.I(readdata[22]),
        .O(readdata_IBUF[22]));
  IBUF \readdata_IBUF[23]_inst 
       (.I(readdata[23]),
        .O(readdata_IBUF[23]));
  IBUF \readdata_IBUF[24]_inst 
       (.I(readdata[24]),
        .O(readdata_IBUF[24]));
  IBUF \readdata_IBUF[25]_inst 
       (.I(readdata[25]),
        .O(readdata_IBUF[25]));
  IBUF \readdata_IBUF[26]_inst 
       (.I(readdata[26]),
        .O(readdata_IBUF[26]));
  IBUF \readdata_IBUF[27]_inst 
       (.I(readdata[27]),
        .O(readdata_IBUF[27]));
  IBUF \readdata_IBUF[28]_inst 
       (.I(readdata[28]),
        .O(readdata_IBUF[28]));
  IBUF \readdata_IBUF[29]_inst 
       (.I(readdata[29]),
        .O(readdata_IBUF[29]));
  IBUF \readdata_IBUF[2]_inst 
       (.I(readdata[2]),
        .O(readdata_IBUF[2]));
  IBUF \readdata_IBUF[30]_inst 
       (.I(readdata[30]),
        .O(readdata_IBUF[30]));
  IBUF \readdata_IBUF[31]_inst 
       (.I(readdata[31]),
        .O(readdata_IBUF[31]));
  IBUF \readdata_IBUF[3]_inst 
       (.I(readdata[3]),
        .O(readdata_IBUF[3]));
  IBUF \readdata_IBUF[4]_inst 
       (.I(readdata[4]),
        .O(readdata_IBUF[4]));
  IBUF \readdata_IBUF[5]_inst 
       (.I(readdata[5]),
        .O(readdata_IBUF[5]));
  IBUF \readdata_IBUF[6]_inst 
       (.I(readdata[6]),
        .O(readdata_IBUF[6]));
  IBUF \readdata_IBUF[7]_inst 
       (.I(readdata[7]),
        .O(readdata_IBUF[7]));
  IBUF \readdata_IBUF[8]_inst 
       (.I(readdata[8]),
        .O(readdata_IBUF[8]));
  IBUF \readdata_IBUF[9]_inst 
       (.I(readdata[9]),
        .O(readdata_IBUF[9]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \writedata_OBUF[0]_inst 
       (.I(writedata_OBUF[0]),
        .O(writedata[0]));
  OBUF \writedata_OBUF[10]_inst 
       (.I(writedata_OBUF[10]),
        .O(writedata[10]));
  OBUF \writedata_OBUF[11]_inst 
       (.I(writedata_OBUF[11]),
        .O(writedata[11]));
  OBUF \writedata_OBUF[12]_inst 
       (.I(writedata_OBUF[12]),
        .O(writedata[12]));
  OBUF \writedata_OBUF[13]_inst 
       (.I(writedata_OBUF[13]),
        .O(writedata[13]));
  OBUF \writedata_OBUF[14]_inst 
       (.I(writedata_OBUF[14]),
        .O(writedata[14]));
  OBUF \writedata_OBUF[15]_inst 
       (.I(writedata_OBUF[15]),
        .O(writedata[15]));
  OBUF \writedata_OBUF[16]_inst 
       (.I(writedata_OBUF[16]),
        .O(writedata[16]));
  OBUF \writedata_OBUF[17]_inst 
       (.I(writedata_OBUF[17]),
        .O(writedata[17]));
  OBUF \writedata_OBUF[18]_inst 
       (.I(writedata_OBUF[18]),
        .O(writedata[18]));
  OBUF \writedata_OBUF[19]_inst 
       (.I(writedata_OBUF[19]),
        .O(writedata[19]));
  OBUF \writedata_OBUF[1]_inst 
       (.I(writedata_OBUF[1]),
        .O(writedata[1]));
  OBUF \writedata_OBUF[20]_inst 
       (.I(writedata_OBUF[20]),
        .O(writedata[20]));
  OBUF \writedata_OBUF[21]_inst 
       (.I(writedata_OBUF[21]),
        .O(writedata[21]));
  OBUF \writedata_OBUF[22]_inst 
       (.I(writedata_OBUF[22]),
        .O(writedata[22]));
  OBUF \writedata_OBUF[23]_inst 
       (.I(writedata_OBUF[23]),
        .O(writedata[23]));
  OBUF \writedata_OBUF[24]_inst 
       (.I(writedata_OBUF[24]),
        .O(writedata[24]));
  OBUF \writedata_OBUF[25]_inst 
       (.I(writedata_OBUF[25]),
        .O(writedata[25]));
  OBUF \writedata_OBUF[26]_inst 
       (.I(writedata_OBUF[26]),
        .O(writedata[26]));
  OBUF \writedata_OBUF[27]_inst 
       (.I(writedata_OBUF[27]),
        .O(writedata[27]));
  OBUF \writedata_OBUF[28]_inst 
       (.I(writedata_OBUF[28]),
        .O(writedata[28]));
  OBUF \writedata_OBUF[29]_inst 
       (.I(writedata_OBUF[29]),
        .O(writedata[29]));
  OBUF \writedata_OBUF[2]_inst 
       (.I(writedata_OBUF[2]),
        .O(writedata[2]));
  OBUF \writedata_OBUF[30]_inst 
       (.I(writedata_OBUF[30]),
        .O(writedata[30]));
  OBUF \writedata_OBUF[31]_inst 
       (.I(writedata_OBUF[31]),
        .O(writedata[31]));
  OBUF \writedata_OBUF[3]_inst 
       (.I(writedata_OBUF[3]),
        .O(writedata[3]));
  OBUF \writedata_OBUF[4]_inst 
       (.I(writedata_OBUF[4]),
        .O(writedata[4]));
  OBUF \writedata_OBUF[5]_inst 
       (.I(writedata_OBUF[5]),
        .O(writedata[5]));
  OBUF \writedata_OBUF[6]_inst 
       (.I(writedata_OBUF[6]),
        .O(writedata[6]));
  OBUF \writedata_OBUF[7]_inst 
       (.I(writedata_OBUF[7]),
        .O(writedata[7]));
  OBUF \writedata_OBUF[8]_inst 
       (.I(writedata_OBUF[8]),
        .O(writedata[8]));
  OBUF \writedata_OBUF[9]_inst 
       (.I(writedata_OBUF[9]),
        .O(writedata[9]));
endmodule

module regfile
   (\q_reg[31] ,
    \aluout_OBUF[31]_inst_i_5_0 ,
    \instr[25] ,
    rd11,
    \instr[31] ,
    aluout_OBUF,
    \instr[27] ,
    \instr[28] ,
    S,
    \q_reg[8] ,
    \q_reg[12] ,
    \q_reg[16] ,
    \q_reg[20] ,
    \q_reg[24] ,
    \q_reg[28] ,
    \instr[3] ,
    DI,
    \instr[7] ,
    \instr[25]_0 ,
    \instr[11] ,
    \instr[25]_1 ,
    \instr[15] ,
    \instr[25]_2 ,
    S_carry_i_10,
    \instr[25]_3 ,
    S_carry_i_10_0,
    \instr[25]_4 ,
    S_carry_i_10_1,
    \instr[25]_5 ,
    \instr[25]_6 ,
    \instr[31]_0 ,
    \instr[31]_1 ,
    \instr[31]_2 ,
    \instr[31]_3 ,
    \instr[31]_4 ,
    \instr[31]_5 ,
    writedata_OBUF,
    d0,
    instr_IBUF,
    y_carry__6,
    y_carry_i_3_0,
    \aluout_OBUF[30]_inst_i_1_0 ,
    readdata_IBUF,
    \aluout[30] ,
    y_carry_i_3_1,
    \aluout_OBUF[31]_inst_i_1 ,
    S_carry__6,
    rd21,
    \aluout_OBUF[31]_inst_i_1_0 ,
    CLK);
  output [2:0]\q_reg[31] ;
  output [3:0]\aluout_OBUF[31]_inst_i_5_0 ;
  output [5:0]\instr[25] ;
  output rd11;
  output \instr[31] ;
  output [24:0]aluout_OBUF;
  output \instr[27] ;
  output \instr[28] ;
  output [2:0]S;
  output [3:0]\q_reg[8] ;
  output [3:0]\q_reg[12] ;
  output [3:0]\q_reg[16] ;
  output [3:0]\q_reg[20] ;
  output [3:0]\q_reg[24] ;
  output [3:0]\q_reg[28] ;
  output [3:0]\instr[3] ;
  output [3:0]DI;
  output [3:0]\instr[7] ;
  output [3:0]\instr[25]_0 ;
  output [3:0]\instr[11] ;
  output [3:0]\instr[25]_1 ;
  output [3:0]\instr[15] ;
  output [3:0]\instr[25]_2 ;
  output [3:0]S_carry_i_10;
  output [3:0]\instr[25]_3 ;
  output [3:0]S_carry_i_10_0;
  output [3:0]\instr[25]_4 ;
  output [3:0]S_carry_i_10_1;
  output [3:0]\instr[25]_5 ;
  output [2:0]\instr[25]_6 ;
  output \instr[31]_0 ;
  output \instr[31]_1 ;
  output \instr[31]_2 ;
  output \instr[31]_3 ;
  output \instr[31]_4 ;
  output \instr[31]_5 ;
  output [31:0]writedata_OBUF;
  input [29:0]d0;
  input [30:0]instr_IBUF;
  input y_carry__6;
  input y_carry_i_3_0;
  input [6:0]\aluout_OBUF[30]_inst_i_1_0 ;
  input [24:0]readdata_IBUF;
  input [24:0]\aluout[30] ;
  input [4:0]y_carry_i_3_1;
  input \aluout_OBUF[31]_inst_i_1 ;
  input S_carry__6;
  input rd21;
  input \aluout_OBUF[31]_inst_i_1_0 ;
  input CLK;

  wire CLK;
  wire [3:0]DI;
  wire [2:0]S;
  wire S_carry__6;
  wire [3:0]S_carry_i_10;
  wire [3:0]S_carry_i_10_0;
  wire [3:0]S_carry_i_10_1;
  wire [24:0]\aluout[30] ;
  wire [24:0]aluout_OBUF;
  wire \aluout_OBUF[10]_inst_i_2_n_0 ;
  wire \aluout_OBUF[11]_inst_i_2_n_0 ;
  wire \aluout_OBUF[12]_inst_i_2_n_0 ;
  wire \aluout_OBUF[14]_inst_i_2_n_0 ;
  wire \aluout_OBUF[15]_inst_i_2_n_0 ;
  wire \aluout_OBUF[16]_inst_i_2_n_0 ;
  wire \aluout_OBUF[17]_inst_i_2_n_0 ;
  wire \aluout_OBUF[18]_inst_i_2_n_0 ;
  wire \aluout_OBUF[20]_inst_i_2_n_0 ;
  wire \aluout_OBUF[21]_inst_i_2_n_0 ;
  wire \aluout_OBUF[22]_inst_i_2_n_0 ;
  wire \aluout_OBUF[23]_inst_i_2_n_0 ;
  wire \aluout_OBUF[24]_inst_i_2_n_0 ;
  wire \aluout_OBUF[26]_inst_i_2_n_0 ;
  wire \aluout_OBUF[27]_inst_i_2_n_0 ;
  wire \aluout_OBUF[28]_inst_i_2_n_0 ;
  wire \aluout_OBUF[29]_inst_i_2_n_0 ;
  wire \aluout_OBUF[2]_inst_i_2_n_0 ;
  wire [6:0]\aluout_OBUF[30]_inst_i_1_0 ;
  wire \aluout_OBUF[30]_inst_i_2_n_0 ;
  wire \aluout_OBUF[31]_inst_i_1 ;
  wire \aluout_OBUF[31]_inst_i_1_0 ;
  wire [3:0]\aluout_OBUF[31]_inst_i_5_0 ;
  wire \aluout_OBUF[31]_inst_i_6_n_0 ;
  wire \aluout_OBUF[31]_inst_i_7_n_0 ;
  wire \aluout_OBUF[3]_inst_i_2_n_0 ;
  wire \aluout_OBUF[4]_inst_i_2_n_0 ;
  wire \aluout_OBUF[5]_inst_i_2_n_0 ;
  wire \aluout_OBUF[6]_inst_i_2_n_0 ;
  wire \aluout_OBUF[8]_inst_i_2_n_0 ;
  wire \aluout_OBUF[9]_inst_i_2_n_0 ;
  wire [29:0]d0;
  wire [3:0]\instr[11] ;
  wire [3:0]\instr[15] ;
  wire [5:0]\instr[25] ;
  wire [3:0]\instr[25]_0 ;
  wire [3:0]\instr[25]_1 ;
  wire [3:0]\instr[25]_2 ;
  wire [3:0]\instr[25]_3 ;
  wire [3:0]\instr[25]_4 ;
  wire [3:0]\instr[25]_5 ;
  wire [2:0]\instr[25]_6 ;
  wire \instr[27] ;
  wire \instr[28] ;
  wire \instr[31] ;
  wire \instr[31]_0 ;
  wire \instr[31]_1 ;
  wire \instr[31]_2 ;
  wire \instr[31]_3 ;
  wire \instr[31]_4 ;
  wire \instr[31]_5 ;
  wire [3:0]\instr[3] ;
  wire [3:0]\instr[7] ;
  wire [30:0]instr_IBUF;
  wire [3:0]\q_reg[12] ;
  wire [3:0]\q_reg[16] ;
  wire [3:0]\q_reg[20] ;
  wire [3:0]\q_reg[24] ;
  wire [3:0]\q_reg[28] ;
  wire [2:0]\q_reg[31] ;
  wire [3:0]\q_reg[8] ;
  wire [30:0]rd10;
  wire rd11;
  wire [31:0]rd20;
  wire rd21;
  wire [24:0]readdata_IBUF;
  wire [4:0]wa3;
  wire [30:2]wd3;
  wire we3;
  wire [31:0]writedata_OBUF;
  wire y_carry__6;
  wire y_carry_i_10_n_0;
  wire y_carry_i_11_n_0;
  wire y_carry_i_12_n_0;
  wire y_carry_i_13_n_0;
  wire y_carry_i_3_0;
  wire [4:0]y_carry_i_3_1;
  wire y_carry_i_5_n_0;
  wire y_carry_i_6_n_0;
  wire y_carry_i_7_n_0;
  wire y_carry_i_9_n_0;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__0_i_1
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(\instr[25] [1]),
        .O(\instr[25]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__0_i_2
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[6]),
        .O(\instr[25]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__0_i_3
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[5]),
        .O(\instr[25]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__0_i_4
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[4]),
        .O(\instr[25]_0 [0]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__0_i_5
       (.I0(\instr[25]_0 [3]),
        .I1(instr_IBUF[7]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[7]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[7] [3]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__0_i_6
       (.I0(\instr[25]_0 [2]),
        .I1(instr_IBUF[6]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[6]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[7] [2]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__0_i_7
       (.I0(\instr[25]_0 [1]),
        .I1(instr_IBUF[5]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[5]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[7] [1]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__0_i_8
       (.I0(\instr[25]_0 [0]),
        .I1(instr_IBUF[4]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[4]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[7] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__1_i_1
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[11]),
        .O(\instr[25]_1 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__1_i_2
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[10]),
        .O(\instr[25]_1 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__1_i_3
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[9]),
        .O(\instr[25]_1 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__1_i_4
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[8]),
        .O(\instr[25]_1 [0]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__1_i_5
       (.I0(\instr[25]_1 [3]),
        .I1(instr_IBUF[11]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[11]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[11] [3]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__1_i_6
       (.I0(\instr[25]_1 [2]),
        .I1(instr_IBUF[10]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[10]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[11] [2]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__1_i_7
       (.I0(\instr[25]_1 [1]),
        .I1(instr_IBUF[9]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[9]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[11] [1]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__1_i_8
       (.I0(\instr[25]_1 [0]),
        .I1(instr_IBUF[8]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[8]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[11] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__2_i_1
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[15]),
        .O(\instr[25]_2 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__2_i_2
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[14]),
        .O(\instr[25]_2 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__2_i_3
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(\instr[25] [2]),
        .O(\instr[25]_2 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__2_i_4
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[12]),
        .O(\instr[25]_2 [0]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__2_i_5
       (.I0(\instr[25]_2 [3]),
        .I1(instr_IBUF[15]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[15]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[15] [3]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__2_i_6
       (.I0(\instr[25]_2 [2]),
        .I1(instr_IBUF[14]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[14]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[15] [2]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__2_i_7
       (.I0(\instr[25]_2 [1]),
        .I1(instr_IBUF[13]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[13]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[15] [1]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__2_i_8
       (.I0(\instr[25]_2 [0]),
        .I1(instr_IBUF[12]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[12]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[15] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__3_i_1
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(\instr[25] [3]),
        .O(\instr[25]_3 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__3_i_2
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[18]),
        .O(\instr[25]_3 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__3_i_3
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[17]),
        .O(\instr[25]_3 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__3_i_4
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[16]),
        .O(\instr[25]_3 [0]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__3_i_5
       (.I0(\instr[25]_3 [3]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[19]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10[3]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__3_i_6
       (.I0(\instr[25]_3 [2]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[18]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10[2]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__3_i_7
       (.I0(\instr[25]_3 [1]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[17]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10[1]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__3_i_8
       (.I0(\instr[25]_3 [0]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[16]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__4_i_1
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[23]),
        .O(\instr[25]_4 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__4_i_2
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[22]),
        .O(\instr[25]_4 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__4_i_3
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[21]),
        .O(\instr[25]_4 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__4_i_4
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[20]),
        .O(\instr[25]_4 [0]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__4_i_5
       (.I0(\instr[25]_4 [3]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[23]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10_0[3]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__4_i_6
       (.I0(\instr[25]_4 [2]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[22]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10_0[2]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__4_i_7
       (.I0(\instr[25]_4 [1]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[21]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10_0[1]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__4_i_8
       (.I0(\instr[25]_4 [0]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[20]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__5_i_1
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[27]),
        .O(\instr[25]_5 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__5_i_2
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[26]),
        .O(\instr[25]_5 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__5_i_3
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(\instr[25] [4]),
        .O(\instr[25]_5 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__5_i_4
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[24]),
        .O(\instr[25]_5 [0]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__5_i_5
       (.I0(\instr[25]_5 [3]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[27]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10_1[3]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__5_i_6
       (.I0(\instr[25]_5 [2]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[26]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10_1[2]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__5_i_7
       (.I0(\instr[25]_5 [1]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[25]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10_1[1]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__5_i_8
       (.I0(\instr[25]_5 [0]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[24]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(S_carry_i_10_1[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__6_i_1
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[30]),
        .O(\instr[25]_6 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__6_i_2
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[29]),
        .O(\instr[25]_6 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry__6_i_3
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[28]),
        .O(\instr[25]_6 [0]));
  LUT3 #(
    .INIT(8'h78)) 
    S_carry__6_i_4
       (.I0(\instr[25] [5]),
        .I1(rd11),
        .I2(\instr[31] ),
        .O(\aluout_OBUF[31]_inst_i_5_0 [3]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__6_i_5
       (.I0(\instr[25]_6 [2]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[30]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\aluout_OBUF[31]_inst_i_5_0 [2]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__6_i_6
       (.I0(\instr[25]_6 [1]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[29]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\aluout_OBUF[31]_inst_i_5_0 [1]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry__6_i_7
       (.I0(\instr[25]_6 [0]),
        .I1(\aluout_OBUF[31]_inst_i_1_0 ),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[28]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\aluout_OBUF[31]_inst_i_5_0 [0]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    S_carry_i_1
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[0]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[0]),
        .O(\instr[31]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry_i_2
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[3]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry_i_3
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[2]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry_i_4
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(\instr[25] [0]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    S_carry_i_5
       (.I0(instr_IBUF[25]),
        .I1(instr_IBUF[24]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[21]),
        .I4(instr_IBUF[23]),
        .I5(rd10[0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry_i_6
       (.I0(DI[3]),
        .I1(instr_IBUF[3]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[3]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[3] [3]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry_i_7
       (.I0(DI[2]),
        .I1(instr_IBUF[2]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[2]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[3] [2]));
  LUT6 #(
    .INIT(64'h9A959595656A6A6A)) 
    S_carry_i_8
       (.I0(DI[1]),
        .I1(instr_IBUF[1]),
        .I2(S_carry__6),
        .I3(rd21),
        .I4(rd20[1]),
        .I5(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[3] [1]));
  LUT3 #(
    .INIT(8'h78)) 
    S_carry_i_9
       (.I0(rd10[0]),
        .I1(rd11),
        .I2(\aluout_OBUF[31]_inst_i_1 ),
        .O(\instr[3] [0]));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[10]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [7]),
        .I2(\instr[28] ),
        .I3(rd10[10]),
        .I4(rd11),
        .I5(\aluout_OBUF[10]_inst_i_2_n_0 ),
        .O(aluout_OBUF[7]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[10]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[10]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[10]),
        .O(\aluout_OBUF[10]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[11]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [8]),
        .I2(\instr[28] ),
        .I3(rd10[11]),
        .I4(rd11),
        .I5(\aluout_OBUF[11]_inst_i_2_n_0 ),
        .O(aluout_OBUF[8]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[11]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[11]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[11]),
        .O(\aluout_OBUF[11]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[12]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [9]),
        .I2(\instr[28] ),
        .I3(rd10[12]),
        .I4(rd11),
        .I5(\aluout_OBUF[12]_inst_i_2_n_0 ),
        .O(aluout_OBUF[9]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[12]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[12]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[12]),
        .O(\aluout_OBUF[12]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[13]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[13]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[13]),
        .O(\instr[31]_3 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[14]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [10]),
        .I2(\instr[28] ),
        .I3(rd10[14]),
        .I4(rd11),
        .I5(\aluout_OBUF[14]_inst_i_2_n_0 ),
        .O(aluout_OBUF[10]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[14]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[14]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[14]),
        .O(\aluout_OBUF[14]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[15]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [11]),
        .I2(\instr[28] ),
        .I3(rd10[15]),
        .I4(rd11),
        .I5(\aluout_OBUF[15]_inst_i_2_n_0 ),
        .O(aluout_OBUF[11]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[15]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[15]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[15]),
        .O(\aluout_OBUF[15]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[16]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [12]),
        .I2(\instr[28] ),
        .I3(rd10[16]),
        .I4(rd11),
        .I5(\aluout_OBUF[16]_inst_i_2_n_0 ),
        .O(aluout_OBUF[12]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[16]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[16]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[16]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[17]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [13]),
        .I2(\instr[28] ),
        .I3(rd10[17]),
        .I4(rd11),
        .I5(\aluout_OBUF[17]_inst_i_2_n_0 ),
        .O(aluout_OBUF[13]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[17]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[17]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[17]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[18]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [14]),
        .I2(\instr[28] ),
        .I3(rd10[18]),
        .I4(rd11),
        .I5(\aluout_OBUF[18]_inst_i_2_n_0 ),
        .O(aluout_OBUF[14]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[18]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[18]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[18]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[19]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[19]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\instr[31]_4 ));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[1]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[1]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[1]),
        .O(\instr[31]_1 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[20]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [15]),
        .I2(\instr[28] ),
        .I3(rd10[20]),
        .I4(rd11),
        .I5(\aluout_OBUF[20]_inst_i_2_n_0 ),
        .O(aluout_OBUF[15]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[20]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[20]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[20]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[21]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [16]),
        .I2(\instr[28] ),
        .I3(rd10[21]),
        .I4(rd11),
        .I5(\aluout_OBUF[21]_inst_i_2_n_0 ),
        .O(aluout_OBUF[16]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[21]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[21]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[21]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[22]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [17]),
        .I2(\instr[28] ),
        .I3(rd10[22]),
        .I4(rd11),
        .I5(\aluout_OBUF[22]_inst_i_2_n_0 ),
        .O(aluout_OBUF[17]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[22]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[22]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[22]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[23]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [18]),
        .I2(\instr[28] ),
        .I3(rd10[23]),
        .I4(rd11),
        .I5(\aluout_OBUF[23]_inst_i_2_n_0 ),
        .O(aluout_OBUF[18]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[23]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[23]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[23]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[24]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [19]),
        .I2(\instr[28] ),
        .I3(rd10[24]),
        .I4(rd11),
        .I5(\aluout_OBUF[24]_inst_i_2_n_0 ),
        .O(aluout_OBUF[19]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[24]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[24]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[24]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[25]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[25]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\instr[31]_5 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[26]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [20]),
        .I2(\instr[28] ),
        .I3(rd10[26]),
        .I4(rd11),
        .I5(\aluout_OBUF[26]_inst_i_2_n_0 ),
        .O(aluout_OBUF[20]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[26]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[26]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[26]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[27]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [21]),
        .I2(\instr[28] ),
        .I3(rd10[27]),
        .I4(rd11),
        .I5(\aluout_OBUF[27]_inst_i_2_n_0 ),
        .O(aluout_OBUF[21]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[27]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[27]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[28]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [22]),
        .I2(\instr[28] ),
        .I3(rd10[28]),
        .I4(rd11),
        .I5(\aluout_OBUF[28]_inst_i_2_n_0 ),
        .O(aluout_OBUF[22]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[28]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[28]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[28]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[29]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [23]),
        .I2(\instr[28] ),
        .I3(rd10[29]),
        .I4(rd11),
        .I5(\aluout_OBUF[29]_inst_i_2_n_0 ),
        .O(aluout_OBUF[23]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[29]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[29]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[29]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[2]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [0]),
        .I2(\instr[28] ),
        .I3(rd10[2]),
        .I4(rd11),
        .I5(\aluout_OBUF[2]_inst_i_2_n_0 ),
        .O(aluout_OBUF[0]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[2]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[2]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[2]),
        .O(\aluout_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[30]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [24]),
        .I2(\instr[28] ),
        .I3(rd10[30]),
        .I4(rd11),
        .I5(\aluout_OBUF[30]_inst_i_2_n_0 ),
        .O(aluout_OBUF[24]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[30]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[30]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\aluout_OBUF[30]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4101000000000000)) 
    \aluout_OBUF[31]_inst_i_2 
       (.I0(instr_IBUF[27]),
        .I1(instr_IBUF[28]),
        .I2(instr_IBUF[29]),
        .I3(instr_IBUF[26]),
        .I4(\aluout_OBUF[31]_inst_i_6_n_0 ),
        .I5(\aluout_OBUF[31]_inst_i_7_n_0 ),
        .O(\instr[27] ));
  LUT5 #(
    .INIT(32'hF766F777)) 
    \aluout_OBUF[31]_inst_i_3 
       (.I0(instr_IBUF[28]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[26]),
        .I3(instr_IBUF[27]),
        .I4(instr_IBUF[2]),
        .O(\instr[28] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \aluout_OBUF[31]_inst_i_4 
       (.I0(instr_IBUF[23]),
        .I1(instr_IBUF[21]),
        .I2(instr_IBUF[22]),
        .I3(instr_IBUF[24]),
        .I4(instr_IBUF[25]),
        .O(rd11));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[31]_inst_i_5 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[31]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(\aluout_OBUF[31]_inst_i_1_0 ),
        .O(\instr[31] ));
  LUT5 #(
    .INIT(32'hFFFFEEAE)) 
    \aluout_OBUF[31]_inst_i_6 
       (.I0(instr_IBUF[0]),
        .I1(instr_IBUF[28]),
        .I2(instr_IBUF[29]),
        .I3(instr_IBUF[26]),
        .I4(instr_IBUF[1]),
        .O(\aluout_OBUF[31]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEEEFE)) 
    \aluout_OBUF[31]_inst_i_7 
       (.I0(instr_IBUF[3]),
        .I1(instr_IBUF[0]),
        .I2(instr_IBUF[28]),
        .I3(instr_IBUF[29]),
        .I4(instr_IBUF[26]),
        .I5(instr_IBUF[2]),
        .O(\aluout_OBUF[31]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[3]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [1]),
        .I2(\instr[28] ),
        .I3(rd10[3]),
        .I4(rd11),
        .I5(\aluout_OBUF[3]_inst_i_2_n_0 ),
        .O(aluout_OBUF[1]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[3]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[3]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[3]),
        .O(\aluout_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[4]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [2]),
        .I2(\instr[28] ),
        .I3(rd10[4]),
        .I4(rd11),
        .I5(\aluout_OBUF[4]_inst_i_2_n_0 ),
        .O(aluout_OBUF[2]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[4]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[4]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[4]),
        .O(\aluout_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[5]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [3]),
        .I2(\instr[28] ),
        .I3(rd10[5]),
        .I4(rd11),
        .I5(\aluout_OBUF[5]_inst_i_2_n_0 ),
        .O(aluout_OBUF[3]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[5]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[5]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[5]),
        .O(\aluout_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[6]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [4]),
        .I2(\instr[28] ),
        .I3(rd10[6]),
        .I4(rd11),
        .I5(\aluout_OBUF[6]_inst_i_2_n_0 ),
        .O(aluout_OBUF[4]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[6]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[6]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[6]),
        .O(\aluout_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[7]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[7]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[7]),
        .O(\instr[31]_2 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[8]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [5]),
        .I2(\instr[28] ),
        .I3(rd10[8]),
        .I4(rd11),
        .I5(\aluout_OBUF[8]_inst_i_2_n_0 ),
        .O(aluout_OBUF[5]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[8]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[8]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[8]),
        .O(\aluout_OBUF[8]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F4A4A4A4A404040)) 
    \aluout_OBUF[9]_inst_i_1 
       (.I0(\instr[27] ),
        .I1(\aluout[30] [6]),
        .I2(\instr[28] ),
        .I3(rd10[9]),
        .I4(rd11),
        .I5(\aluout_OBUF[9]_inst_i_2_n_0 ),
        .O(aluout_OBUF[6]));
  LUT6 #(
    .INIT(64'h5555556AAAAAAA6A)) 
    \aluout_OBUF[9]_inst_i_2 
       (.I0(\aluout_OBUF[31]_inst_i_1 ),
        .I1(rd20[9]),
        .I2(rd21),
        .I3(instr_IBUF[30]),
        .I4(instr_IBUF[29]),
        .I5(instr_IBUF[9]),
        .O(\aluout_OBUF[9]_inst_i_2_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_0_5
       (.ADDRA(instr_IBUF[25:21]),
        .ADDRB(instr_IBUF[25:21]),
        .ADDRC(instr_IBUF[25:21]),
        .ADDRD(wa3),
        .DIA(\aluout_OBUF[30]_inst_i_1_0 [1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
        .DID({1'b0,1'b0}),
        .DOA({\instr[25] [0],rd10[0]}),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  LUT4 #(
    .INIT(16'h10DD)) 
    rf_reg_r1_0_31_0_5_i_1
       (.I0(instr_IBUF[28]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(instr_IBUF[27]),
        .O(we3));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    rf_reg_r1_0_31_0_5_i_10
       (.I0(instr_IBUF[13]),
        .I1(instr_IBUF[28]),
        .I2(instr_IBUF[27]),
        .I3(instr_IBUF[29]),
        .I4(instr_IBUF[18]),
        .O(wa3[2]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    rf_reg_r1_0_31_0_5_i_11
       (.I0(instr_IBUF[12]),
        .I1(instr_IBUF[28]),
        .I2(instr_IBUF[27]),
        .I3(instr_IBUF[29]),
        .I4(instr_IBUF[17]),
        .O(wa3[1]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    rf_reg_r1_0_31_0_5_i_12
       (.I0(instr_IBUF[11]),
        .I1(instr_IBUF[28]),
        .I2(instr_IBUF[27]),
        .I3(instr_IBUF[29]),
        .I4(instr_IBUF[16]),
        .O(wa3[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(aluout_OBUF[1]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[1]),
        .O(wd3[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(aluout_OBUF[0]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[0]),
        .O(wd3[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(aluout_OBUF[3]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[3]),
        .O(wd3[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(aluout_OBUF[2]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[2]),
        .O(wd3[4]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    rf_reg_r1_0_31_0_5_i_8
       (.I0(instr_IBUF[15]),
        .I1(instr_IBUF[28]),
        .I2(instr_IBUF[27]),
        .I3(instr_IBUF[29]),
        .I4(instr_IBUF[20]),
        .O(wa3[4]));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    rf_reg_r1_0_31_0_5_i_9
       (.I0(instr_IBUF[14]),
        .I1(instr_IBUF[28]),
        .I2(instr_IBUF[27]),
        .I3(instr_IBUF[29]),
        .I4(instr_IBUF[19]),
        .O(wa3[3]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_12_17
       (.ADDRA(instr_IBUF[25:21]),
        .ADDRB(instr_IBUF[25:21]),
        .ADDRC(instr_IBUF[25:21]),
        .ADDRD(wa3),
        .DIA({\aluout_OBUF[30]_inst_i_1_0 [3],wd3[12]}),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
        .DID({1'b0,1'b0}),
        .DOA({\instr[25] [2],rd10[12]}),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(aluout_OBUF[9]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[9]),
        .O(wd3[12]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(aluout_OBUF[11]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[11]),
        .O(wd3[15]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(aluout_OBUF[10]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[10]),
        .O(wd3[14]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(aluout_OBUF[13]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[13]),
        .O(wd3[17]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(aluout_OBUF[12]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[12]),
        .O(wd3[16]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_18_23
       (.ADDRA(instr_IBUF[25:21]),
        .ADDRB(instr_IBUF[25:21]),
        .ADDRC(instr_IBUF[25:21]),
        .ADDRD(wa3),
        .DIA({\aluout_OBUF[30]_inst_i_1_0 [4],wd3[18]}),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
        .DID({1'b0,1'b0}),
        .DOA({\instr[25] [3],rd10[18]}),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(aluout_OBUF[14]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[14]),
        .O(wd3[18]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(aluout_OBUF[16]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[16]),
        .O(wd3[21]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(aluout_OBUF[15]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[15]),
        .O(wd3[20]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(aluout_OBUF[18]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[18]),
        .O(wd3[23]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(aluout_OBUF[17]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[17]),
        .O(wd3[22]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_24_29
       (.ADDRA(instr_IBUF[25:21]),
        .ADDRB(instr_IBUF[25:21]),
        .ADDRC(instr_IBUF[25:21]),
        .ADDRD(wa3),
        .DIA({\aluout_OBUF[30]_inst_i_1_0 [5],wd3[24]}),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
        .DID({1'b0,1'b0}),
        .DOA({\instr[25] [4],rd10[24]}),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(aluout_OBUF[19]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[19]),
        .O(wd3[24]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(aluout_OBUF[21]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[21]),
        .O(wd3[27]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(aluout_OBUF[20]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[20]),
        .O(wd3[26]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(aluout_OBUF[23]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[23]),
        .O(wd3[29]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(aluout_OBUF[22]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[22]),
        .O(wd3[28]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_30_31
       (.ADDRA(instr_IBUF[25:21]),
        .ADDRB(instr_IBUF[25:21]),
        .ADDRC(instr_IBUF[25:21]),
        .ADDRD(wa3),
        .DIA({\aluout_OBUF[30]_inst_i_1_0 [6],wd3[30]}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({\instr[25] [5],rd10[30]}),
        .DOB(NLW_rf_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_30_31_i_2
       (.I0(aluout_OBUF[24]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[24]),
        .O(wd3[30]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r1_0_31_6_11
       (.ADDRA(instr_IBUF[25:21]),
        .ADDRB(instr_IBUF[25:21]),
        .ADDRC(instr_IBUF[25:21]),
        .ADDRD(wa3),
        .DIA({\aluout_OBUF[30]_inst_i_1_0 [2],wd3[6]}),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA({\instr[25] [1],rd10[6]}),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(aluout_OBUF[4]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[4]),
        .O(wd3[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(aluout_OBUF[6]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[6]),
        .O(wd3[9]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(aluout_OBUF[5]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[5]),
        .O(wd3[8]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(aluout_OBUF[8]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[8]),
        .O(wd3[11]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(aluout_OBUF[7]),
        .I1(instr_IBUF[29]),
        .I2(instr_IBUF[30]),
        .I3(readdata_IBUF[7]),
        .O(wd3[10]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_0_5
       (.ADDRA(instr_IBUF[20:16]),
        .ADDRB(instr_IBUF[20:16]),
        .ADDRC(instr_IBUF[20:16]),
        .ADDRD(wa3),
        .DIA(\aluout_OBUF[30]_inst_i_1_0 [1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_12_17
       (.ADDRA(instr_IBUF[20:16]),
        .ADDRB(instr_IBUF[20:16]),
        .ADDRC(instr_IBUF[20:16]),
        .ADDRD(wa3),
        .DIA({\aluout_OBUF[30]_inst_i_1_0 [3],wd3[12]}),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_18_23
       (.ADDRA(instr_IBUF[20:16]),
        .ADDRB(instr_IBUF[20:16]),
        .ADDRC(instr_IBUF[20:16]),
        .ADDRD(wa3),
        .DIA({\aluout_OBUF[30]_inst_i_1_0 [4],wd3[18]}),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_24_29
       (.ADDRA(instr_IBUF[20:16]),
        .ADDRB(instr_IBUF[20:16]),
        .ADDRC(instr_IBUF[20:16]),
        .ADDRD(wa3),
        .DIA({\aluout_OBUF[30]_inst_i_1_0 [5],wd3[24]}),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_30_31
       (.ADDRA(instr_IBUF[20:16]),
        .ADDRB(instr_IBUF[20:16]),
        .ADDRC(instr_IBUF[20:16]),
        .ADDRD(wa3),
        .DIA({\aluout_OBUF[30]_inst_i_1_0 [6],wd3[30]}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[31:30]),
        .DOB(NLW_rf_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    rf_reg_r2_0_31_6_11
       (.ADDRA(instr_IBUF[20:16]),
        .ADDRB(instr_IBUF[20:16]),
        .ADDRC(instr_IBUF[20:16]),
        .ADDRD(wa3),
        .DIA({\aluout_OBUF[30]_inst_i_1_0 [2],wd3[6]}),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(we3));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[0]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[0]),
        .O(writedata_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[10]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[10]),
        .O(writedata_OBUF[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[11]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[11]),
        .O(writedata_OBUF[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[12]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[12]),
        .O(writedata_OBUF[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[13]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[13]),
        .O(writedata_OBUF[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[14]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[14]),
        .O(writedata_OBUF[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[15]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[15]),
        .O(writedata_OBUF[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[16]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[16]),
        .O(writedata_OBUF[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[17]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[17]),
        .O(writedata_OBUF[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[18]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[18]),
        .O(writedata_OBUF[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[19]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[19]),
        .O(writedata_OBUF[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[1]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[1]),
        .O(writedata_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[20]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[20]),
        .O(writedata_OBUF[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[21]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[21]),
        .O(writedata_OBUF[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[22]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[22]),
        .O(writedata_OBUF[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[23]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[23]),
        .O(writedata_OBUF[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[24]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[24]),
        .O(writedata_OBUF[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[25]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[25]),
        .O(writedata_OBUF[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[26]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[26]),
        .O(writedata_OBUF[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[27]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[27]),
        .O(writedata_OBUF[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[28]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[28]),
        .O(writedata_OBUF[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[29]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[29]),
        .O(writedata_OBUF[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[2]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[2]),
        .O(writedata_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[30]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[30]),
        .O(writedata_OBUF[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[31]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[31]),
        .O(writedata_OBUF[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[3]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[3]),
        .O(writedata_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[4]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[4]),
        .O(writedata_OBUF[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[5]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[5]),
        .O(writedata_OBUF[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[6]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[6]),
        .O(writedata_OBUF[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[7]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[7]),
        .O(writedata_OBUF[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[8]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[8]),
        .O(writedata_OBUF[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \writedata_OBUF[9]_inst_i_1 
       (.I0(instr_IBUF[20]),
        .I1(instr_IBUF[19]),
        .I2(instr_IBUF[17]),
        .I3(instr_IBUF[16]),
        .I4(instr_IBUF[18]),
        .I5(rd20[9]),
        .O(writedata_OBUF[9]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__0_i_1
       (.I0(d0[6]),
        .I1(instr_IBUF[6]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[8] [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__0_i_2
       (.I0(d0[5]),
        .I1(instr_IBUF[5]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[8] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__0_i_3
       (.I0(d0[4]),
        .I1(instr_IBUF[4]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[8] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__0_i_4
       (.I0(d0[3]),
        .I1(instr_IBUF[3]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[8] [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__1_i_1
       (.I0(d0[10]),
        .I1(instr_IBUF[10]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[12] [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__1_i_2
       (.I0(d0[9]),
        .I1(instr_IBUF[9]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[12] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__1_i_3
       (.I0(d0[8]),
        .I1(instr_IBUF[8]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[12] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__1_i_4
       (.I0(d0[7]),
        .I1(instr_IBUF[7]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[12] [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__2_i_1
       (.I0(d0[14]),
        .I1(instr_IBUF[14]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[16] [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__2_i_2
       (.I0(d0[13]),
        .I1(instr_IBUF[13]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[16] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__2_i_3
       (.I0(d0[12]),
        .I1(instr_IBUF[12]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[16] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__2_i_4
       (.I0(d0[11]),
        .I1(instr_IBUF[11]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[16] [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__3_i_1
       (.I0(d0[18]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[20] [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__3_i_2
       (.I0(d0[17]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[20] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__3_i_3
       (.I0(d0[16]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[20] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__3_i_4
       (.I0(d0[15]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[20] [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__4_i_1
       (.I0(d0[22]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[24] [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__4_i_2
       (.I0(d0[21]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[24] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__4_i_3
       (.I0(d0[20]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[24] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__4_i_4
       (.I0(d0[19]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[24] [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__5_i_1
       (.I0(d0[26]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[28] [3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__5_i_2
       (.I0(d0[25]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[28] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__5_i_3
       (.I0(d0[24]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[28] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__5_i_4
       (.I0(d0[23]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[28] [0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__6_i_1
       (.I0(d0[29]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[31] [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__6_i_2
       (.I0(d0[28]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[31] [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry__6_i_3
       (.I0(d0[27]),
        .I1(instr_IBUF[15]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(\q_reg[31] [0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    y_carry_i_10
       (.I0(aluout_OBUF[6]),
        .I1(aluout_OBUF[5]),
        .I2(aluout_OBUF[8]),
        .I3(aluout_OBUF[7]),
        .O(y_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    y_carry_i_11
       (.I0(aluout_OBUF[11]),
        .I1(aluout_OBUF[10]),
        .I2(y_carry_i_3_1[1]),
        .I3(aluout_OBUF[9]),
        .O(y_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    y_carry_i_12
       (.I0(y_carry_i_3_1[3]),
        .I1(aluout_OBUF[19]),
        .I2(aluout_OBUF[21]),
        .I3(aluout_OBUF[20]),
        .O(y_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    y_carry_i_13
       (.I0(aluout_OBUF[18]),
        .I1(aluout_OBUF[17]),
        .I2(aluout_OBUF[16]),
        .I3(aluout_OBUF[15]),
        .O(y_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry_i_1__0
       (.I0(d0[2]),
        .I1(instr_IBUF[2]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry_i_2
       (.I0(d0[1]),
        .I1(instr_IBUF[1]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    y_carry_i_3
       (.I0(d0[0]),
        .I1(instr_IBUF[0]),
        .I2(y_carry__6),
        .I3(y_carry_i_5_n_0),
        .I4(y_carry_i_6_n_0),
        .I5(y_carry_i_7_n_0),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    y_carry_i_5
       (.I0(y_carry_i_3_0),
        .I1(y_carry_i_9_n_0),
        .I2(y_carry_i_10_n_0),
        .I3(y_carry_i_11_n_0),
        .O(y_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    y_carry_i_6
       (.I0(aluout_OBUF[22]),
        .I1(aluout_OBUF[23]),
        .I2(y_carry_i_3_1[4]),
        .I3(aluout_OBUF[24]),
        .I4(y_carry_i_12_n_0),
        .O(y_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    y_carry_i_7
       (.I0(aluout_OBUF[12]),
        .I1(aluout_OBUF[13]),
        .I2(aluout_OBUF[14]),
        .I3(y_carry_i_3_1[2]),
        .I4(y_carry_i_13_n_0),
        .O(y_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    y_carry_i_9
       (.I0(y_carry_i_3_1[0]),
        .I1(aluout_OBUF[4]),
        .I2(aluout_OBUF[3]),
        .I3(aluout_OBUF[2]),
        .O(y_carry_i_9_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
