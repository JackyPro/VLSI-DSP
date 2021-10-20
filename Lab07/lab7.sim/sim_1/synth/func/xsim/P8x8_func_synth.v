// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Nov  4 11:52:36 2020
// Host        : LAPTOP-COBJ78AE running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/Lab07/lab7.sim/sim_1/synth/func/xsim/P8x8_func_synth.v
// Design      : P8x8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* WORD_SIZE = "8" *) 
(* NotValidForBitStream *)
module P8x8
   (clk,
    reset,
    pout,
    xin,
    yin);
  input clk;
  input reset;
  output [15:0]pout;
  input [7:0]xin;
  input [7:0]yin;

  wire [6:0]DFF;
  wire \U01/cout1 ;
  wire \U11/cout1 ;
  wire \U21/cout1 ;
  wire \U31/cout1 ;
  wire \U38/cout1__0 ;
  wire \U41/cout1 ;
  wire \U51/cout1 ;
  wire \U52/cout1__0 ;
  wire \U55/cout1__0 ;
  wire \U56/cout1__0 ;
  wire \U58/cout1__0 ;
  wire \U61/cout1 ;
  wire \U68/cout1__0 ;
  wire c02;
  wire c03;
  wire c04;
  wire c05;
  wire c06;
  wire c07;
  wire c12;
  wire c13;
  wire c14;
  wire c16;
  wire c22;
  wire c25;
  wire c27;
  wire c28;
  wire c32;
  wire c33;
  wire c34;
  wire c35;
  wire c36;
  wire c37;
  wire c41;
  wire c42;
  wire c44;
  wire c46;
  wire c48;
  wire c52;
  wire c53;
  wire c54;
  wire c55;
  wire c56;
  wire c57;
  wire c58;
  wire c61;
  wire c63;
  wire c65;
  wire c66;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]p_2_out;
  wire [15:0]pout;
  wire \pout[11]_i_14_n_0 ;
  wire \pout[11]_i_16_n_0 ;
  wire \pout[11]_i_18_n_0 ;
  wire \pout[11]_i_8_n_0 ;
  wire \pout[15]_i_11_n_0 ;
  wire \pout[15]_i_12_n_0 ;
  wire \pout[15]_i_17_n_0 ;
  wire \pout[3]_i_2_n_0 ;
  wire \pout[4]_i_2_n_0 ;
  wire \pout[5]_i_2_n_0 ;
  wire \pout[7]_i_3_n_0 ;
  wire [15:0]pout_OBUF;
  wire reset;
  wire reset_IBUF;
  wire s03;
  wire s04;
  wire s05;
  wire s06;
  wire s07;
  wire s08;
  wire s13;
  wire s14;
  wire s15;
  wire s16;
  wire s17;
  wire s18;
  wire s23;
  wire s24;
  wire s25;
  wire s26;
  wire s27;
  wire s28;
  wire s33;
  wire s34;
  wire s35;
  wire s36;
  wire s37;
  wire s38;
  wire s43;
  wire s44;
  wire s45;
  wire s46;
  wire s47;
  wire s48;
  wire s53;
  wire s54;
  wire s55;
  wire s56;
  wire s57;
  wire s58;
  wire s62;
  wire s63;
  wire s64;
  wire s65;
  wire s66;
  wire s67;
  wire s68;
  wire [7:0]xin;
  wire [7:0]xin_IBUF;
  wire [7:0]yin;
  wire [7:0]yin_IBUF;

  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    \DFF1[0]_i_1 
       (.I0(xin_IBUF[5]),
        .I1(yin_IBUF[2]),
        .I2(yin_IBUF[1]),
        .I3(xin_IBUF[6]),
        .I4(yin_IBUF[0]),
        .I5(xin_IBUF[7]),
        .O(c07));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \DFF1[1]_i_1 
       (.I0(xin_IBUF[4]),
        .I1(yin_IBUF[3]),
        .I2(s07),
        .I3(c06),
        .O(c16));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \DFF1[1]_i_2 
       (.I0(yin_IBUF[2]),
        .I1(xin_IBUF[5]),
        .I2(yin_IBUF[1]),
        .I3(xin_IBUF[6]),
        .I4(yin_IBUF[0]),
        .I5(xin_IBUF[7]),
        .O(s07));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \DFF1[1]_i_3 
       (.I0(xin_IBUF[4]),
        .I1(yin_IBUF[2]),
        .I2(yin_IBUF[1]),
        .I3(xin_IBUF[5]),
        .I4(xin_IBUF[6]),
        .I5(yin_IBUF[0]),
        .O(c06));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \DFF1[2]_i_1 
       (.I0(xin_IBUF[3]),
        .I1(yin_IBUF[3]),
        .I2(s06),
        .I3(c05),
        .I4(yin_IBUF[4]),
        .I5(s16),
        .O(c25));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \DFF1[2]_i_2 
       (.I0(yin_IBUF[2]),
        .I1(xin_IBUF[4]),
        .I2(yin_IBUF[0]),
        .I3(xin_IBUF[6]),
        .I4(xin_IBUF[5]),
        .I5(yin_IBUF[1]),
        .O(s06));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \DFF1[2]_i_3 
       (.I0(xin_IBUF[3]),
        .I1(yin_IBUF[2]),
        .I2(xin_IBUF[5]),
        .I3(yin_IBUF[0]),
        .I4(yin_IBUF[1]),
        .I5(xin_IBUF[4]),
        .O(c05));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \DFF1[2]_i_4 
       (.I0(c06),
        .I1(s07),
        .I2(yin_IBUF[3]),
        .I3(xin_IBUF[4]),
        .O(s16));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \DFF1[3]_i_1 
       (.I0(xin_IBUF[2]),
        .I1(yin_IBUF[4]),
        .I2(s15),
        .I3(c14),
        .I4(yin_IBUF[5]),
        .I5(s25),
        .O(c34));
  LUT4 #(
    .INIT(16'h9666)) 
    \DFF1[3]_i_2 
       (.I0(c05),
        .I1(s06),
        .I2(yin_IBUF[3]),
        .I3(xin_IBUF[3]),
        .O(s15));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \DFF1[3]_i_3 
       (.I0(xin_IBUF[2]),
        .I1(yin_IBUF[3]),
        .I2(s05),
        .I3(c04),
        .O(c14));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \DFF1[3]_i_4 
       (.I0(xin_IBUF[3]),
        .I1(yin_IBUF[3]),
        .I2(s06),
        .I3(c05),
        .I4(s16),
        .I5(yin_IBUF[4]),
        .O(s25));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \DFF1[3]_i_5 
       (.I0(yin_IBUF[2]),
        .I1(xin_IBUF[3]),
        .I2(xin_IBUF[4]),
        .I3(yin_IBUF[1]),
        .I4(yin_IBUF[0]),
        .I5(xin_IBUF[5]),
        .O(s05));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \DFF1[3]_i_6 
       (.I0(xin_IBUF[2]),
        .I1(yin_IBUF[2]),
        .I2(xin_IBUF[4]),
        .I3(yin_IBUF[0]),
        .I4(yin_IBUF[1]),
        .I5(xin_IBUF[3]),
        .O(c04));
  LUT6 #(
    .INIT(64'hA880EAEAFEEAEAEA)) 
    \DFF1[5]_i_1 
       (.I0(s43),
        .I1(c32),
        .I2(s33),
        .I3(yin_IBUF[6]),
        .I4(xin_IBUF[0]),
        .I5(yin_IBUF[7]),
        .O(c52));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \DFF1[5]_i_2 
       (.I0(c33),
        .I1(s34),
        .I2(yin_IBUF[6]),
        .I3(xin_IBUF[1]),
        .O(s43));
  LUT4 #(
    .INIT(16'h0087)) 
    \DFF1[6]_i_1 
       (.I0(yin_IBUF[7]),
        .I1(xin_IBUF[0]),
        .I2(\U52/cout1__0 ),
        .I3(\pout[7]_i_3_n_0 ),
        .O(c61));
  FDRE #(
    .INIT(1'b0)) 
    \DFF1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(c07),
        .Q(DFF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DFF1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(c16),
        .Q(DFF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DFF1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(c25),
        .Q(DFF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DFF1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(c34),
        .Q(DFF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DFF1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(c52),
        .Q(DFF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DFF1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(c61),
        .Q(DFF[6]),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pout[0]_i_1 
       (.I0(xin_IBUF[0]),
        .I1(yin_IBUF[0]),
        .O(p_2_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pout[10]_i_1 
       (.I0(c63),
        .I1(c54),
        .I2(s55),
        .O(s64));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \pout[11]_i_1 
       (.I0(c63),
        .I1(s55),
        .I2(c54),
        .I3(c55),
        .I4(s56),
        .O(s65));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \pout[11]_i_10 
       (.I0(xin_IBUF[3]),
        .I1(yin_IBUF[5]),
        .I2(s26),
        .I3(DFF[2]),
        .O(c35));
  LUT6 #(
    .INIT(64'h8FF8F88F08808008)) 
    \pout[11]_i_11 
       (.I0(xin_IBUF[2]),
        .I1(yin_IBUF[6]),
        .I2(\pout[11]_i_16_n_0 ),
        .I3(s26),
        .I4(DFF[2]),
        .I5(DFF[3]),
        .O(c44));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \pout[11]_i_12 
       (.I0(c36),
        .I1(s37),
        .I2(yin_IBUF[6]),
        .I3(xin_IBUF[4]),
        .O(s46));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \pout[11]_i_13 
       (.I0(yin_IBUF[6]),
        .I1(xin_IBUF[5]),
        .I2(s38),
        .I3(c37),
        .I4(c46),
        .O(\U56/cout1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \pout[11]_i_14 
       (.I0(xin_IBUF[4]),
        .I1(yin_IBUF[6]),
        .O(\pout[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \pout[11]_i_15 
       (.I0(DFF[1]),
        .I1(DFF[0]),
        .I2(s08),
        .I3(yin_IBUF[3]),
        .I4(xin_IBUF[5]),
        .I5(\pout[11]_i_18_n_0 ),
        .O(s26));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \pout[11]_i_16 
       (.I0(xin_IBUF[3]),
        .I1(yin_IBUF[5]),
        .O(\pout[11]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \pout[11]_i_17 
       (.I0(xin_IBUF[4]),
        .I1(yin_IBUF[6]),
        .I2(s37),
        .I3(c36),
        .O(c46));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \pout[11]_i_18 
       (.I0(xin_IBUF[4]),
        .I1(yin_IBUF[4]),
        .O(\pout[11]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \pout[11]_i_2 
       (.I0(DFF[6]),
        .I1(s53),
        .I2(DFF[5]),
        .I3(s54),
        .I4(c53),
        .O(c63));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \pout[11]_i_3 
       (.I0(yin_IBUF[7]),
        .I1(xin_IBUF[3]),
        .I2(\U55/cout1__0 ),
        .O(s55));
  LUT6 #(
    .INIT(64'h6900FF69FF69FF69)) 
    \pout[11]_i_4 
       (.I0(\pout[11]_i_8_n_0 ),
        .I1(s36),
        .I2(c35),
        .I3(c44),
        .I4(xin_IBUF[2]),
        .I5(yin_IBUF[7]),
        .O(c54));
  LUT6 #(
    .INIT(64'hA880EAEAFEEAEAEA)) 
    \pout[11]_i_5 
       (.I0(s46),
        .I1(c35),
        .I2(s36),
        .I3(yin_IBUF[6]),
        .I4(xin_IBUF[3]),
        .I5(yin_IBUF[7]),
        .O(c55));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \pout[11]_i_6 
       (.I0(yin_IBUF[7]),
        .I1(xin_IBUF[4]),
        .I2(\U56/cout1__0 ),
        .O(s56));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \pout[11]_i_7 
       (.I0(\pout[11]_i_14_n_0 ),
        .I1(s37),
        .I2(c36),
        .I3(c35),
        .I4(s36),
        .I5(\pout[11]_i_8_n_0 ),
        .O(\U55/cout1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \pout[11]_i_8 
       (.I0(xin_IBUF[3]),
        .I1(yin_IBUF[6]),
        .O(\pout[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E83FC03FC0)) 
    \pout[11]_i_9 
       (.I0(yin_IBUF[4]),
        .I1(s17),
        .I2(DFF[1]),
        .I3(s27),
        .I4(yin_IBUF[5]),
        .I5(xin_IBUF[4]),
        .O(s36));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pout[12]_i_1 
       (.I0(c65),
        .I1(c56),
        .I2(s57),
        .O(s66));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \pout[13]_i_1 
       (.I0(c56),
        .I1(s57),
        .I2(c65),
        .I3(c57),
        .I4(s58),
        .O(s67));
  LUT6 #(
    .INIT(64'h11171777EEE8E888)) 
    \pout[14]_i_1 
       (.I0(c57),
        .I1(s58),
        .I2(c56),
        .I3(s57),
        .I4(c65),
        .I5(\U68/cout1__0 ),
        .O(s68));
  LUT4 #(
    .INIT(16'h9666)) 
    \pout[14]_i_10 
       (.I0(DFF[0]),
        .I1(s08),
        .I2(yin_IBUF[3]),
        .I3(xin_IBUF[5]),
        .O(s17));
  LUT6 #(
    .INIT(64'hA880EAEAFEEAEAEA)) 
    \pout[14]_i_2 
       (.I0(s47),
        .I1(c36),
        .I2(s37),
        .I3(yin_IBUF[6]),
        .I4(xin_IBUF[4]),
        .I5(yin_IBUF[7]),
        .O(c56));
  LUT6 #(
    .INIT(64'h56956A95A9959595)) 
    \pout[14]_i_3 
       (.I0(s48),
        .I1(c37),
        .I2(s38),
        .I3(xin_IBUF[5]),
        .I4(yin_IBUF[6]),
        .I5(yin_IBUF[7]),
        .O(s57));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \pout[14]_i_4 
       (.I0(c63),
        .I1(s55),
        .I2(c54),
        .I3(s56),
        .I4(c55),
        .O(c65));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBC3BF7F7)) 
    \pout[14]_i_5 
       (.I0(xin_IBUF[6]),
        .I1(yin_IBUF[7]),
        .I2(c48),
        .I3(yin_IBUF[6]),
        .I4(xin_IBUF[7]),
        .O(\U68/cout1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \pout[14]_i_6 
       (.I0(c37),
        .I1(s38),
        .I2(xin_IBUF[5]),
        .I3(yin_IBUF[6]),
        .O(s47));
  LUT6 #(
    .INIT(64'hF8A8A880F8808080)) 
    \pout[14]_i_7 
       (.I0(xin_IBUF[4]),
        .I1(yin_IBUF[5]),
        .I2(s27),
        .I3(DFF[1]),
        .I4(s17),
        .I5(yin_IBUF[4]),
        .O(c36));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \pout[14]_i_8 
       (.I0(c27),
        .I1(s28),
        .I2(xin_IBUF[5]),
        .I3(yin_IBUF[5]),
        .O(s37));
  LUT6 #(
    .INIT(64'hE8173FC017E83FC0)) 
    \pout[14]_i_9 
       (.I0(yin_IBUF[3]),
        .I1(s08),
        .I2(DFF[0]),
        .I3(s18),
        .I4(xin_IBUF[5]),
        .I5(yin_IBUF[4]),
        .O(s27));
  LUT6 #(
    .INIT(64'h0707077F077F7F7F)) 
    \pout[15]_i_1 
       (.I0(yin_IBUF[7]),
        .I1(xin_IBUF[7]),
        .I2(c58),
        .I3(c57),
        .I4(s58),
        .I5(c66),
        .O(p_2_out[15]));
  LUT6 #(
    .INIT(64'hA205AA25AAAF8F8F)) 
    \pout[15]_i_10 
       (.I0(xin_IBUF[7]),
        .I1(yin_IBUF[4]),
        .I2(c28),
        .I3(xin_IBUF[6]),
        .I4(yin_IBUF[5]),
        .I5(yin_IBUF[6]),
        .O(\U58/cout1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pout[15]_i_11 
       (.I0(s55),
        .I1(c54),
        .O(\pout[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \pout[15]_i_12 
       (.I0(\pout[15]_i_17_n_0 ),
        .I1(c53),
        .I2(s54),
        .I3(DFF[5]),
        .I4(s53),
        .I5(DFF[6]),
        .O(\pout[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFABFF00FF03FF)) 
    \pout[15]_i_13 
       (.I0(yin_IBUF[4]),
        .I1(yin_IBUF[3]),
        .I2(yin_IBUF[1]),
        .I3(xin_IBUF[7]),
        .I4(yin_IBUF[2]),
        .I5(xin_IBUF[6]),
        .O(c28));
  LUT6 #(
    .INIT(64'h55AA56AA33003C00)) 
    \pout[15]_i_14 
       (.I0(yin_IBUF[4]),
        .I1(yin_IBUF[3]),
        .I2(yin_IBUF[1]),
        .I3(xin_IBUF[7]),
        .I4(yin_IBUF[2]),
        .I5(xin_IBUF[6]),
        .O(s28));
  LUT6 #(
    .INIT(64'hF8C8C880F8808080)) 
    \pout[15]_i_15 
       (.I0(yin_IBUF[4]),
        .I1(xin_IBUF[5]),
        .I2(s18),
        .I3(DFF[0]),
        .I4(s08),
        .I5(yin_IBUF[3]),
        .O(c27));
  LUT6 #(
    .INIT(64'hA0A0A0B0F0F0F0C0)) 
    \pout[15]_i_16 
       (.I0(xin_IBUF[6]),
        .I1(yin_IBUF[2]),
        .I2(xin_IBUF[7]),
        .I3(yin_IBUF[1]),
        .I4(yin_IBUF[3]),
        .I5(yin_IBUF[4]),
        .O(\U38/cout1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF95)) 
    \pout[15]_i_17 
       (.I0(\U55/cout1__0 ),
        .I1(xin_IBUF[3]),
        .I2(yin_IBUF[7]),
        .I3(c54),
        .O(\pout[15]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h5A6A30C0)) 
    \pout[15]_i_18 
       (.I0(yin_IBUF[3]),
        .I1(yin_IBUF[1]),
        .I2(xin_IBUF[7]),
        .I3(yin_IBUF[2]),
        .I4(xin_IBUF[6]),
        .O(s18));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \pout[15]_i_19 
       (.I0(yin_IBUF[1]),
        .I1(xin_IBUF[7]),
        .I2(yin_IBUF[2]),
        .I3(xin_IBUF[6]),
        .O(s08));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h70F7F7F7)) 
    \pout[15]_i_2 
       (.I0(xin_IBUF[7]),
        .I1(yin_IBUF[6]),
        .I2(c48),
        .I3(yin_IBUF[7]),
        .I4(xin_IBUF[6]),
        .O(c58));
  LUT6 #(
    .INIT(64'hA8EA80EAFEEAEAEA)) 
    \pout[15]_i_3 
       (.I0(s48),
        .I1(c37),
        .I2(s38),
        .I3(xin_IBUF[5]),
        .I4(yin_IBUF[6]),
        .I5(yin_IBUF[7]),
        .O(c57));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \pout[15]_i_4 
       (.I0(xin_IBUF[6]),
        .I1(yin_IBUF[7]),
        .I2(\U58/cout1__0 ),
        .O(s58));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \pout[15]_i_5 
       (.I0(\pout[15]_i_11_n_0 ),
        .I1(\pout[15]_i_12_n_0 ),
        .I2(s56),
        .I3(c55),
        .I4(s57),
        .I5(c56),
        .O(c66));
  LUT6 #(
    .INIT(64'hA020B3A0FFE0FFE0)) 
    \pout[15]_i_6 
       (.I0(yin_IBUF[6]),
        .I1(yin_IBUF[5]),
        .I2(xin_IBUF[6]),
        .I3(c28),
        .I4(yin_IBUF[4]),
        .I5(xin_IBUF[7]),
        .O(c48));
  LUT6 #(
    .INIT(64'h53936C53A09FA09F)) 
    \pout[15]_i_7 
       (.I0(yin_IBUF[6]),
        .I1(yin_IBUF[5]),
        .I2(xin_IBUF[6]),
        .I3(c28),
        .I4(yin_IBUF[4]),
        .I5(xin_IBUF[7]),
        .O(s48));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \pout[15]_i_8 
       (.I0(yin_IBUF[5]),
        .I1(xin_IBUF[5]),
        .I2(s28),
        .I3(c27),
        .O(c37));
  LUT3 #(
    .INIT(8'h78)) 
    \pout[15]_i_9 
       (.I0(xin_IBUF[6]),
        .I1(yin_IBUF[5]),
        .I2(\U38/cout1__0 ),
        .O(s38));
  LUT4 #(
    .INIT(16'h7888)) 
    \pout[1]_i_1 
       (.I0(yin_IBUF[1]),
        .I1(xin_IBUF[0]),
        .I2(yin_IBUF[0]),
        .I3(xin_IBUF[1]),
        .O(\U01/cout1 ));
  LUT6 #(
    .INIT(64'h663C5AF066CCAA00)) 
    \pout[2]_i_1 
       (.I0(xin_IBUF[2]),
        .I1(yin_IBUF[2]),
        .I2(xin_IBUF[1]),
        .I3(yin_IBUF[0]),
        .I4(xin_IBUF[0]),
        .I5(yin_IBUF[1]),
        .O(\U11/cout1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h956A6A95)) 
    \pout[3]_i_1 
       (.I0(\pout[3]_i_2_n_0 ),
        .I1(xin_IBUF[0]),
        .I2(yin_IBUF[3]),
        .I3(s03),
        .I4(c02),
        .O(\U21/cout1 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFBFFFFFFF)) 
    \pout[3]_i_2 
       (.I0(xin_IBUF[2]),
        .I1(yin_IBUF[0]),
        .I2(yin_IBUF[1]),
        .I3(xin_IBUF[1]),
        .I4(xin_IBUF[0]),
        .I5(yin_IBUF[2]),
        .O(\pout[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \pout[3]_i_3 
       (.I0(yin_IBUF[2]),
        .I1(xin_IBUF[1]),
        .I2(xin_IBUF[2]),
        .I3(yin_IBUF[1]),
        .I4(yin_IBUF[0]),
        .I5(xin_IBUF[3]),
        .O(s03));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \pout[3]_i_4 
       (.I0(xin_IBUF[0]),
        .I1(yin_IBUF[2]),
        .I2(xin_IBUF[2]),
        .I3(yin_IBUF[0]),
        .I4(yin_IBUF[1]),
        .I5(xin_IBUF[1]),
        .O(c02));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h956A6A95)) 
    \pout[4]_i_1 
       (.I0(\pout[4]_i_2_n_0 ),
        .I1(xin_IBUF[0]),
        .I2(yin_IBUF[4]),
        .I3(s13),
        .I4(c12),
        .O(\U31/cout1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hBFEAEABF)) 
    \pout[4]_i_2 
       (.I0(\pout[3]_i_2_n_0 ),
        .I1(xin_IBUF[0]),
        .I2(yin_IBUF[3]),
        .I3(s03),
        .I4(c02),
        .O(\pout[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \pout[4]_i_3 
       (.I0(c03),
        .I1(s04),
        .I2(yin_IBUF[3]),
        .I3(xin_IBUF[1]),
        .O(s13));
  LUT4 #(
    .INIT(16'hF880)) 
    \pout[4]_i_4 
       (.I0(xin_IBUF[0]),
        .I1(yin_IBUF[3]),
        .I2(s03),
        .I3(c02),
        .O(c12));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \pout[4]_i_5 
       (.I0(xin_IBUF[1]),
        .I1(yin_IBUF[2]),
        .I2(xin_IBUF[3]),
        .I3(yin_IBUF[0]),
        .I4(yin_IBUF[1]),
        .I5(xin_IBUF[2]),
        .O(c03));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \pout[4]_i_6 
       (.I0(yin_IBUF[2]),
        .I1(xin_IBUF[2]),
        .I2(xin_IBUF[3]),
        .I3(yin_IBUF[1]),
        .I4(yin_IBUF[0]),
        .I5(xin_IBUF[4]),
        .O(s04));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h956A6A95)) 
    \pout[5]_i_1 
       (.I0(\pout[5]_i_2_n_0 ),
        .I1(xin_IBUF[0]),
        .I2(yin_IBUF[5]),
        .I3(s23),
        .I4(c22),
        .O(\U41/cout1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hBFEAEABF)) 
    \pout[5]_i_2 
       (.I0(\pout[4]_i_2_n_0 ),
        .I1(xin_IBUF[0]),
        .I2(yin_IBUF[4]),
        .I3(s13),
        .I4(c12),
        .O(\pout[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \pout[5]_i_3 
       (.I0(c13),
        .I1(s14),
        .I2(yin_IBUF[4]),
        .I3(xin_IBUF[1]),
        .O(s23));
  LUT4 #(
    .INIT(16'hF880)) 
    \pout[5]_i_4 
       (.I0(xin_IBUF[0]),
        .I1(yin_IBUF[4]),
        .I2(s13),
        .I3(c12),
        .O(c22));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \pout[6]_i_1 
       (.I0(xin_IBUF[0]),
        .I1(yin_IBUF[6]),
        .I2(s33),
        .I3(c32),
        .I4(c41),
        .O(\U51/cout1 ));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \pout[6]_i_2 
       (.I0(xin_IBUF[1]),
        .I1(yin_IBUF[4]),
        .I2(s14),
        .I3(c13),
        .I4(s24),
        .I5(yin_IBUF[5]),
        .O(s33));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \pout[6]_i_3 
       (.I0(xin_IBUF[0]),
        .I1(yin_IBUF[5]),
        .I2(s23),
        .I3(c22),
        .O(c32));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00008778)) 
    \pout[6]_i_4 
       (.I0(xin_IBUF[0]),
        .I1(yin_IBUF[5]),
        .I2(s23),
        .I3(c22),
        .I4(\pout[5]_i_2_n_0 ),
        .O(c41));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \pout[6]_i_5 
       (.I0(c04),
        .I1(s05),
        .I2(yin_IBUF[3]),
        .I3(xin_IBUF[2]),
        .O(s14));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \pout[6]_i_6 
       (.I0(xin_IBUF[1]),
        .I1(yin_IBUF[3]),
        .I2(s04),
        .I3(c03),
        .O(c13));
  LUT4 #(
    .INIT(16'h9666)) 
    \pout[6]_i_7 
       (.I0(c14),
        .I1(s15),
        .I2(yin_IBUF[4]),
        .I3(xin_IBUF[2]),
        .O(s24));
  LUT4 #(
    .INIT(16'h8778)) 
    \pout[7]_i_1 
       (.I0(yin_IBUF[7]),
        .I1(xin_IBUF[0]),
        .I2(\U52/cout1__0 ),
        .I3(\pout[7]_i_3_n_0 ),
        .O(\U61/cout1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \pout[7]_i_2 
       (.I0(xin_IBUF[1]),
        .I1(yin_IBUF[6]),
        .I2(s34),
        .I3(c33),
        .I4(c42),
        .O(\U52/cout1__0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FD5D57F)) 
    \pout[7]_i_3 
       (.I0(c41),
        .I1(xin_IBUF[0]),
        .I2(yin_IBUF[6]),
        .I3(s33),
        .I4(c32),
        .O(\pout[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \pout[7]_i_4 
       (.I0(xin_IBUF[0]),
        .I1(yin_IBUF[6]),
        .I2(s33),
        .I3(c32),
        .O(c42));
  LUT3 #(
    .INIT(8'h96)) 
    \pout[8]_i_1 
       (.I0(DFF[6]),
        .I1(DFF[5]),
        .I2(s53),
        .O(s62));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \pout[9]_i_1 
       (.I0(DFF[6]),
        .I1(s53),
        .I2(DFF[5]),
        .I3(c53),
        .I4(s54),
        .O(s63));
  LUT6 #(
    .INIT(64'h7748488888B7B777)) 
    \pout[9]_i_2 
       (.I0(yin_IBUF[7]),
        .I1(xin_IBUF[1]),
        .I2(yin_IBUF[6]),
        .I3(s34),
        .I4(c33),
        .I5(s44),
        .O(s53));
  LUT6 #(
    .INIT(64'hA880EAEAFEEAEAEA)) 
    \pout[9]_i_3 
       (.I0(s44),
        .I1(c33),
        .I2(s34),
        .I3(yin_IBUF[6]),
        .I4(xin_IBUF[1]),
        .I5(yin_IBUF[7]),
        .O(c53));
  LUT6 #(
    .INIT(64'h7748488888B7B777)) 
    \pout[9]_i_4 
       (.I0(yin_IBUF[7]),
        .I1(xin_IBUF[2]),
        .I2(yin_IBUF[6]),
        .I3(s35),
        .I4(DFF[3]),
        .I5(s45),
        .O(s54));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \pout[9]_i_5 
       (.I0(xin_IBUF[2]),
        .I1(yin_IBUF[4]),
        .I2(s15),
        .I3(c14),
        .I4(s25),
        .I5(yin_IBUF[5]),
        .O(s34));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \pout[9]_i_6 
       (.I0(xin_IBUF[1]),
        .I1(yin_IBUF[4]),
        .I2(s14),
        .I3(c13),
        .I4(yin_IBUF[5]),
        .I5(s24),
        .O(c33));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \pout[9]_i_7 
       (.I0(DFF[3]),
        .I1(s35),
        .I2(yin_IBUF[6]),
        .I3(xin_IBUF[2]),
        .O(s44));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \pout[9]_i_8 
       (.I0(DFF[2]),
        .I1(s26),
        .I2(yin_IBUF[5]),
        .I3(xin_IBUF[3]),
        .O(s35));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \pout[9]_i_9 
       (.I0(c35),
        .I1(s36),
        .I2(yin_IBUF[6]),
        .I3(xin_IBUF[3]),
        .O(s45));
  OBUF \pout_OBUF[0]_inst 
       (.I(pout_OBUF[0]),
        .O(pout[0]));
  OBUF \pout_OBUF[10]_inst 
       (.I(pout_OBUF[10]),
        .O(pout[10]));
  OBUF \pout_OBUF[11]_inst 
       (.I(pout_OBUF[11]),
        .O(pout[11]));
  OBUF \pout_OBUF[12]_inst 
       (.I(pout_OBUF[12]),
        .O(pout[12]));
  OBUF \pout_OBUF[13]_inst 
       (.I(pout_OBUF[13]),
        .O(pout[13]));
  OBUF \pout_OBUF[14]_inst 
       (.I(pout_OBUF[14]),
        .O(pout[14]));
  OBUF \pout_OBUF[15]_inst 
       (.I(pout_OBUF[15]),
        .O(pout[15]));
  OBUF \pout_OBUF[1]_inst 
       (.I(pout_OBUF[1]),
        .O(pout[1]));
  OBUF \pout_OBUF[2]_inst 
       (.I(pout_OBUF[2]),
        .O(pout[2]));
  OBUF \pout_OBUF[3]_inst 
       (.I(pout_OBUF[3]),
        .O(pout[3]));
  OBUF \pout_OBUF[4]_inst 
       (.I(pout_OBUF[4]),
        .O(pout[4]));
  OBUF \pout_OBUF[5]_inst 
       (.I(pout_OBUF[5]),
        .O(pout[5]));
  OBUF \pout_OBUF[6]_inst 
       (.I(pout_OBUF[6]),
        .O(pout[6]));
  OBUF \pout_OBUF[7]_inst 
       (.I(pout_OBUF[7]),
        .O(pout[7]));
  OBUF \pout_OBUF[8]_inst 
       (.I(pout_OBUF[8]),
        .O(pout[8]));
  OBUF \pout_OBUF[9]_inst 
       (.I(pout_OBUF[9]),
        .O(pout[9]));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[0]),
        .Q(pout_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s64),
        .Q(pout_OBUF[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s65),
        .Q(pout_OBUF[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s66),
        .Q(pout_OBUF[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s67),
        .Q(pout_OBUF[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s68),
        .Q(pout_OBUF[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_2_out[15]),
        .Q(pout_OBUF[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\U01/cout1 ),
        .Q(pout_OBUF[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\U11/cout1 ),
        .Q(pout_OBUF[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\U21/cout1 ),
        .Q(pout_OBUF[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\U31/cout1 ),
        .Q(pout_OBUF[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\U41/cout1 ),
        .Q(pout_OBUF[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\U51/cout1 ),
        .Q(pout_OBUF[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\U61/cout1 ),
        .Q(pout_OBUF[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s62),
        .Q(pout_OBUF[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pout_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s63),
        .Q(pout_OBUF[9]),
        .R(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \xin_IBUF[0]_inst 
       (.I(xin[0]),
        .O(xin_IBUF[0]));
  IBUF \xin_IBUF[1]_inst 
       (.I(xin[1]),
        .O(xin_IBUF[1]));
  IBUF \xin_IBUF[2]_inst 
       (.I(xin[2]),
        .O(xin_IBUF[2]));
  IBUF \xin_IBUF[3]_inst 
       (.I(xin[3]),
        .O(xin_IBUF[3]));
  IBUF \xin_IBUF[4]_inst 
       (.I(xin[4]),
        .O(xin_IBUF[4]));
  IBUF \xin_IBUF[5]_inst 
       (.I(xin[5]),
        .O(xin_IBUF[5]));
  IBUF \xin_IBUF[6]_inst 
       (.I(xin[6]),
        .O(xin_IBUF[6]));
  IBUF \xin_IBUF[7]_inst 
       (.I(xin[7]),
        .O(xin_IBUF[7]));
  IBUF \yin_IBUF[0]_inst 
       (.I(yin[0]),
        .O(yin_IBUF[0]));
  IBUF \yin_IBUF[1]_inst 
       (.I(yin[1]),
        .O(yin_IBUF[1]));
  IBUF \yin_IBUF[2]_inst 
       (.I(yin[2]),
        .O(yin_IBUF[2]));
  IBUF \yin_IBUF[3]_inst 
       (.I(yin[3]),
        .O(yin_IBUF[3]));
  IBUF \yin_IBUF[4]_inst 
       (.I(yin[4]),
        .O(yin_IBUF[4]));
  IBUF \yin_IBUF[5]_inst 
       (.I(yin[5]),
        .O(yin_IBUF[5]));
  IBUF \yin_IBUF[6]_inst 
       (.I(yin[6]),
        .O(yin_IBUF[6]));
  IBUF \yin_IBUF[7]_inst 
       (.I(yin[7]),
        .O(yin_IBUF[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
