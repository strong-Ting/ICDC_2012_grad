/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Sat Oct 24 12:18:29 2020
/////////////////////////////////////////////////////////////


module NFC_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [18:0] A;
  output [18:0] SUM;

  wire   [18:2] carry;

  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[18]), .B(A[18]), .Y(SUM[18]) );
endmodule


module NFC_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [17:0] A;
  output [17:0] SUM;

  wire   [17:2] carry;

  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[17]), .B(A[17]), .Y(SUM[17]) );
endmodule


module NFC ( clk, rst, done, F_IO_A, F_CLE_A, F_ALE_A, F_REN_A, F_WEN_A, 
        F_RB_A, F_IO_B, F_CLE_B, F_ALE_B, F_REN_B, F_WEN_B, F_RB_B );
  inout [7:0] F_IO_A;
  inout [7:0] F_IO_B;
  input clk, rst, F_RB_A, F_RB_B;
  output done, F_CLE_A, F_ALE_A, F_REN_A, F_WEN_A, F_CLE_B, F_ALE_B, F_REN_B,
         F_WEN_B;
  wire   n265, N84, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, flag_c, N131, N132, N133,
         N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144,
         N145, N146, N147, N148, N149, n5, n6, n7, n8, n9, n10, n12, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n41, n42, n43, n44, n49, n50,
         n51, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n86, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n105, n106, n107, n108, n109, n113, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n266, n152, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n204, n205, n212, n213, n214, n215, n216,
         n217, n218, n219, n222, n223, n230, n231, n239, n240, n243, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n257, n258,
         n259, n260, n261, n298, n263, n264, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n291, n292, n293, n294,
         n295, n296;
  wire   [2:0] ns;
  wire   [17:0] ADDR_CNT;
  assign F_REN_B = 1'b1;

  TBUFX16 \F_IO_B_tri[0]  ( .A(n101), .OE(1'b1), .Y(F_IO_B[0]) );
  TBUFX16 \F_IO_B_tri[1]  ( .A(n100), .OE(1'b1), .Y(F_IO_B[1]) );
  TBUFX16 \F_IO_B_tri[2]  ( .A(n99), .OE(1'b1), .Y(F_IO_B[2]) );
  TBUFX16 \F_IO_B_tri[3]  ( .A(n98), .OE(1'b1), .Y(F_IO_B[3]) );
  TBUFX16 \F_IO_B_tri[4]  ( .A(n97), .OE(1'b1), .Y(F_IO_B[4]) );
  TBUFX16 \F_IO_B_tri[5]  ( .A(n96), .OE(1'b1), .Y(F_IO_B[5]) );
  TBUFX16 \F_IO_B_tri[6]  ( .A(n95), .OE(1'b1), .Y(F_IO_B[6]) );
  TBUFX16 \F_IO_B_tri[7]  ( .A(n94), .OE(1'b1), .Y(F_IO_B[7]) );
  TBUFX16 \F_IO_A_tri[0]  ( .A(n186), .OE(n86), .Y(F_IO_A[0]) );
  TBUFX16 \F_IO_A_tri[1]  ( .A(n184), .OE(n86), .Y(F_IO_A[1]) );
  TBUFX16 \F_IO_A_tri[2]  ( .A(n182), .OE(n86), .Y(F_IO_A[2]) );
  TBUFX16 \F_IO_A_tri[3]  ( .A(n180), .OE(n86), .Y(F_IO_A[3]) );
  TBUFX16 \F_IO_A_tri[4]  ( .A(n264), .OE(n86), .Y(F_IO_A[4]) );
  TBUFX16 \F_IO_A_tri[5]  ( .A(n178), .OE(n86), .Y(F_IO_A[5]) );
  TBUFX16 \F_IO_A_tri[6]  ( .A(n176), .OE(n86), .Y(F_IO_A[6]) );
  TBUFX16 \F_IO_A_tri[7]  ( .A(n174), .OE(n86), .Y(F_IO_A[7]) );
  OAI221X2 U39 ( .A0(n254), .A1(n30), .B0(n258), .B1(n230), .C0(n32), .Y(n14)
         );
  NAND3BX4 U85 ( .AN(F_WEN_B), .B(n243), .C(n60), .Y(F_WEN_A) );
  AOI21X4 U86 ( .A0(n6), .A1(F_REN_A), .B0(clk), .Y(F_WEN_B) );
  INVXL U125 ( .A(F_RB_B), .Y(n216) );
  BUFX2 U126 ( .A(n213), .Y(n152) );
  NAND4BXL U127 ( .AN(n54), .B(n152), .C(n55), .D(n56), .Y(n8) );
  NAND2BXL U131 ( .AN(n10), .B(n83), .Y(n102) );
  OAI211XL U134 ( .A0(n107), .A1(n223), .B0(n5), .C0(n6), .Y(ns[1]) );
  CLKINVX1 U150 ( .A(n263), .Y(n173) );
  CLKINVX1 U151 ( .A(n173), .Y(n174) );
  CLKINVX1 U152 ( .A(n278), .Y(n175) );
  CLKINVX1 U153 ( .A(n175), .Y(n176) );
  CLKINVX1 U154 ( .A(n280), .Y(n177) );
  CLKINVX1 U155 ( .A(n177), .Y(n178) );
  CLKINVX1 U156 ( .A(n282), .Y(n179) );
  CLKINVX1 U157 ( .A(n179), .Y(n180) );
  CLKINVX1 U158 ( .A(n284), .Y(n181) );
  CLKINVX1 U159 ( .A(n181), .Y(n182) );
  CLKINVX1 U160 ( .A(n286), .Y(n183) );
  CLKINVX1 U161 ( .A(n183), .Y(n184) );
  CLKAND2X2 U162 ( .A(n60), .B(n243), .Y(n86) );
  CLKINVX1 U163 ( .A(n288), .Y(n185) );
  CLKINVX1 U164 ( .A(n185), .Y(n186) );
  CLKINVX1 U167 ( .A(n188), .Y(n189) );
  CLKINVX1 U168 ( .A(n189), .Y(n190) );
  CLKBUFX2 U182 ( .A(N84), .Y(n239) );
  NOR2XL U184 ( .A(n254), .B(n106), .Y(n266) );
  DLY4X1 U185 ( .A(n113), .Y(n205) );
  CLKINVX1 U192 ( .A(n217), .Y(n212) );
  CLKINVX1 U193 ( .A(n212), .Y(n213) );
  INVXL U194 ( .A(n214), .Y(n215) );
  INVXL U195 ( .A(F_RB_A), .Y(n214) );
  CLKINVX1 U196 ( .A(n216), .Y(n217) );
  CLKINVX1 U197 ( .A(n215), .Y(n218) );
  CLKINVX1 U198 ( .A(n218), .Y(n219) );
  INVXL U201 ( .A(n222), .Y(n223) );
  INVXL U202 ( .A(n219), .Y(n222) );
  XNOR2XL U203 ( .A(n43), .B(n109), .Y(n146) );
  OAI211XL U205 ( .A0(n201), .A1(n14), .B0(n24), .C0(n25), .Y(n127) );
  CLKBUFX2 U211 ( .A(n105), .Y(n243) );
  INVX12 U212 ( .A(n31), .Y(F_CLE_A) );
  BUFX12 U213 ( .A(n265), .Y(done) );
  NAND2X1 U215 ( .A(n239), .B(n243), .Y(n31) );
  NOR2XL U216 ( .A(F_ALE_B), .B(N84), .Y(n6) );
  NOR2X1 U217 ( .A(n258), .B(n107), .Y(N84) );
  OAI211XL U218 ( .A0(n276), .A1(n253), .B0(n61), .C0(n31), .Y(n94) );
  NOR3X1 U219 ( .A(n251), .B(ns[0]), .C(n258), .Y(n41) );
  OAI221XL U220 ( .A0(n254), .A1(n261), .B0(n9), .B1(n8), .C0(n49), .Y(ns[0])
         );
  OAI21X1 U221 ( .A0(n243), .A1(n106), .B0(n60), .Y(n63) );
  CLKINVX1 U223 ( .A(n29), .Y(n254) );
  CLKINVX1 U224 ( .A(F_ALE_A), .Y(n253) );
  CLKINVX1 U225 ( .A(n42), .Y(n251) );
  NAND2X1 U226 ( .A(n60), .B(n251), .Y(n62) );
  CLKBUFX3 U227 ( .A(n41), .Y(n247) );
  CLKBUFX3 U228 ( .A(n41), .Y(n246) );
  CLKBUFX3 U229 ( .A(n41), .Y(n248) );
  INVX16 U230 ( .A(n204), .Y(F_ALE_B) );
  NOR2X1 U231 ( .A(n230), .B(n255), .Y(n29) );
  OA21X2 U232 ( .A0(n255), .A1(n258), .B0(n257), .Y(n60) );
  CLKINVX1 U233 ( .A(n50), .Y(n257) );
  NOR2X2 U234 ( .A(n31), .B(n26), .Y(n16) );
  INVX16 U235 ( .A(n204), .Y(F_ALE_A) );
  NOR2X1 U236 ( .A(n255), .B(n243), .Y(n42) );
  NOR2X2 U237 ( .A(n32), .B(n26), .Y(n17) );
  NOR2X1 U238 ( .A(n253), .B(n44), .Y(n43) );
  NAND2X1 U239 ( .A(n42), .B(n258), .Y(n9) );
  NOR2X1 U240 ( .A(n257), .B(n243), .Y(n10) );
  OAI221XL U241 ( .A0(n257), .A1(n250), .B0(n243), .B1(n258), .C0(n5), .Y(
        ns[2]) );
  XOR2X1 U242 ( .A(F_REN_A), .B(n12), .Y(n103) );
  NOR2X1 U243 ( .A(n251), .B(n258), .Y(n12) );
  OAI21XL U249 ( .A0(n205), .A1(n253), .B0(n64), .Y(n97) );
  AOI22XL U250 ( .A0(F_IO_A[4]), .A1(n62), .B0(n239), .B1(n230), .Y(n64) );
  NAND2X1 U251 ( .A(F_IO_A[7]), .B(n62), .Y(n61) );
  AO22X1 U252 ( .A0(n278), .A1(F_ALE_A), .B0(F_IO_A[6]), .B1(n63), .Y(n95) );
  AO22X1 U253 ( .A0(n280), .A1(F_ALE_B), .B0(F_IO_A[5]), .B1(n63), .Y(n96) );
  AO22X1 U254 ( .A0(n282), .A1(F_ALE_A), .B0(F_IO_A[3]), .B1(n63), .Y(n98) );
  AO22X1 U255 ( .A0(n284), .A1(F_ALE_B), .B0(F_IO_A[2]), .B1(n63), .Y(n99) );
  AO22X1 U256 ( .A0(n286), .A1(F_ALE_A), .B0(F_IO_A[1]), .B1(n63), .Y(n100) );
  AO22X1 U257 ( .A0(n288), .A1(F_ALE_B), .B0(F_IO_A[0]), .B1(n63), .Y(n101) );
  NOR2X1 U258 ( .A(n107), .B(n106), .Y(n50) );
  NAND2X1 U259 ( .A(N103), .B(n17), .Y(n24) );
  AOI2BB2X1 U260 ( .B0(N94), .B1(n16), .A0N(n26), .A1N(n27), .Y(n25) );
  AOI33X1 U261 ( .A0(n260), .A1(F_ALE_B), .A2(N111), .B0(n29), .B1(n106), .B2(
        N102), .Y(n27) );
  CLKINVX1 U262 ( .A(n30), .Y(n260) );
  OAI21XL U263 ( .A0(n199), .A1(n14), .B0(n23), .Y(n126) );
  AOI22X1 U264 ( .A0(N95), .A1(n16), .B0(N104), .B1(n17), .Y(n23) );
  OAI21XL U265 ( .A0(n197), .A1(n14), .B0(n22), .Y(n125) );
  AOI22X1 U266 ( .A0(N96), .A1(n16), .B0(N105), .B1(n17), .Y(n22) );
  OAI21XL U267 ( .A0(n195), .A1(n14), .B0(n21), .Y(n124) );
  AOI22X1 U268 ( .A0(N97), .A1(n16), .B0(N106), .B1(n17), .Y(n21) );
  OAI21XL U269 ( .A0(n205), .A1(n14), .B0(n20), .Y(n123) );
  AOI22X1 U270 ( .A0(N98), .A1(n16), .B0(N107), .B1(n17), .Y(n20) );
  OAI21XL U271 ( .A0(n193), .A1(n14), .B0(n19), .Y(n122) );
  AOI22X1 U272 ( .A0(N99), .A1(n16), .B0(N108), .B1(n17), .Y(n19) );
  OAI21XL U273 ( .A0(n191), .A1(n14), .B0(n18), .Y(n121) );
  AOI22X1 U274 ( .A0(N100), .A1(n16), .B0(N109), .B1(n17), .Y(n18) );
  OAI21XL U275 ( .A0(n190), .A1(n14), .B0(n15), .Y(n120) );
  AOI22X1 U276 ( .A0(N101), .A1(n16), .B0(N110), .B1(n17), .Y(n15) );
  OAI2BB2XL U277 ( .B0(n72), .B1(n246), .A0N(N149), .A1N(n247), .Y(n148) );
  OAI2BB2XL U278 ( .B0(n73), .B1(n247), .A0N(N147), .A1N(n247), .Y(n142) );
  OAI2BB2XL U279 ( .B0(n118), .B1(n247), .A0N(N146), .A1N(n247), .Y(n141) );
  OAI2BB2XL U280 ( .B0(n71), .B1(n246), .A0N(N148), .A1N(n247), .Y(n143) );
  CLKINVX1 U281 ( .A(n205), .Y(n264) );
  CLKINVX1 U282 ( .A(n276), .Y(n263) );
  CLKINVX1 U283 ( .A(n44), .Y(n261) );
  AOI221XL U284 ( .A0(n50), .A1(n250), .B0(n106), .B1(n51), .C0(n10), .Y(n49)
         );
  OAI31XL U285 ( .A0(n259), .A1(n255), .A2(n54), .B0(n254), .Y(n51) );
  OAI32X1 U286 ( .A0(n43), .A1(n108), .A2(n44), .B0(n30), .B1(n252), .Y(n147)
         );
  CLKINVX1 U287 ( .A(n43), .Y(n252) );
  NAND2X1 U288 ( .A(n108), .B(n231), .Y(n30) );
  NAND4BBXL U289 ( .AN(n77), .BN(n76), .C(n58), .D(n59), .Y(n54) );
  NOR3X1 U290 ( .A(n75), .B(n67), .C(n74), .Y(n58) );
  NOR4X1 U291 ( .A(n78), .B(n79), .C(n80), .D(n82), .Y(n59) );
  NOR3X1 U292 ( .A(n119), .B(n81), .C(n118), .Y(n55) );
  NOR4X1 U293 ( .A(n57), .B(n73), .C(n71), .D(n72), .Y(n56) );
  OR3X2 U294 ( .A(n69), .B(n68), .C(n70), .Y(n57) );
  NAND3X1 U295 ( .A(F_ALE_A), .B(n109), .C(n108), .Y(n32) );
  OAI2BB2XL U296 ( .B0(n82), .B1(n246), .A0N(N139), .A1N(n248), .Y(n134) );
  OAI2BB2XL U297 ( .B0(n119), .B1(n247), .A0N(N145), .A1N(n248), .Y(n140) );
  OAI2BB2XL U298 ( .B0(n75), .B1(n246), .A0N(N134), .A1N(n247), .Y(n129) );
  OAI2BB2XL U299 ( .B0(n74), .B1(n246), .A0N(N133), .A1N(n247), .Y(n128) );
  OAI2BB2XL U300 ( .B0(n79), .B1(n246), .A0N(N137), .A1N(n248), .Y(n132) );
  OAI2BB2XL U301 ( .B0(n78), .B1(n246), .A0N(N138), .A1N(n248), .Y(n133) );
  OAI2BB2XL U302 ( .B0(n67), .B1(n246), .A0N(N132), .A1N(n247), .Y(n149) );
  OAI2BB2XL U303 ( .B0(n80), .B1(n246), .A0N(N140), .A1N(n248), .Y(n135) );
  OAI2BB2XL U304 ( .B0(n81), .B1(n247), .A0N(N141), .A1N(n248), .Y(n136) );
  OAI2BB2XL U305 ( .B0(n70), .B1(n247), .A0N(N144), .A1N(n248), .Y(n139) );
  OAI2BB2XL U306 ( .B0(n68), .B1(n247), .A0N(N142), .A1N(n248), .Y(n137) );
  OAI2BB2XL U307 ( .B0(n69), .B1(n247), .A0N(N143), .A1N(n248), .Y(n138) );
  OAI2BB2XL U308 ( .B0(n77), .B1(n246), .A0N(N136), .A1N(n248), .Y(n131) );
  OAI2BB2XL U309 ( .B0(n76), .B1(n246), .A0N(N135), .A1N(n248), .Y(n130) );
  OAI2BB2XL U310 ( .B0(n66), .B1(n246), .A0N(N131), .A1N(n247), .Y(n144) );
  NOR2X1 U311 ( .A(n231), .B(n108), .Y(n44) );
  NAND4X1 U312 ( .A(n67), .B(n68), .C(n69), .D(n70), .Y(n37) );
  NAND4X1 U313 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n35) );
  OAI21XL U314 ( .A0(n65), .A1(n42), .B0(n9), .Y(n145) );
  NAND3X1 U315 ( .A(n118), .B(n119), .C(n82), .Y(n36) );
  OA21XL U316 ( .A0(n243), .A1(n107), .B0(n7), .Y(n5) );
  AND2X2 U318 ( .A(n33), .B(n34), .Y(n26) );
  NOR4BBX1 U319 ( .AN(n72), .BN(n71), .C(n37), .D(n38), .Y(n33) );
  NOR4BBX1 U320 ( .AN(n81), .BN(n80), .C(n35), .D(n36), .Y(n34) );
  NAND3X1 U321 ( .A(n74), .B(n75), .C(n73), .Y(n38) );
  CLKINVX1 U322 ( .A(n223), .Y(n250) );
  NFC_DW01_inc_0_DW01_inc_1 add_168_S2 ( .A({ADDR_CNT, flag_c}), .SUM({N149, 
        N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132, N131}) );
  NFC_DW01_inc_1_DW01_inc_2 add_144 ( .A(ADDR_CNT), .SUM({N111, N110, N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, 
        N96, N95, N94}) );
  DFFRXL done_reg ( .D(n293), .CK(clk), .RN(n249), .Q(n265), .QN(n83) );
  DFFSHQX1 F_REN_A_reg ( .D(n103), .CK(clk), .SN(n249), .Q(n298) );
  DFFRX1 \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RN(n249), .Q(n255), .QN(n107) );
  DFFRX1 \ADDR_STATE_CNT_reg[1]  ( .D(n147), .CK(clk), .RN(n249), .QN(n108) );
  DFFRX1 \F_OUT_A_reg[4]  ( .D(n123), .CK(clk), .RN(n249), .QN(n113) );
  DFFRX1 \F_OUT_A_reg[7]  ( .D(n120), .CK(clk), .RN(n249), .QN(n188) );
  DFFSXL flag_REVC_reg ( .D(n291), .CK(clk), .SN(n249), .Q(n259), .QN(n65) );
  DFFSXL \ADDR_CNT_reg[8]  ( .D(n135), .CK(clk), .SN(n249), .Q(ADDR_CNT[8]), 
        .QN(n80) );
  DFFSXL \ADDR_CNT_reg[7]  ( .D(n134), .CK(clk), .SN(n249), .Q(ADDR_CNT[7]), 
        .QN(n82) );
  DFFSXL \ADDR_CNT_reg[6]  ( .D(n133), .CK(clk), .SN(n249), .Q(ADDR_CNT[6]), 
        .QN(n78) );
  DFFSXL \ADDR_CNT_reg[5]  ( .D(n132), .CK(clk), .SN(n249), .Q(ADDR_CNT[5]), 
        .QN(n79) );
  DFFSXL \ADDR_CNT_reg[4]  ( .D(n131), .CK(clk), .SN(n249), .Q(ADDR_CNT[4]), 
        .QN(n77) );
  DFFSXL \ADDR_CNT_reg[3]  ( .D(n130), .CK(clk), .SN(n249), .Q(ADDR_CNT[3]), 
        .QN(n76) );
  DFFSXL \ADDR_CNT_reg[2]  ( .D(n129), .CK(clk), .SN(n249), .Q(ADDR_CNT[2]), 
        .QN(n75) );
  DFFSXL \ADDR_CNT_reg[1]  ( .D(n128), .CK(clk), .SN(n249), .Q(ADDR_CNT[1]), 
        .QN(n74) );
  DFFSXL \ADDR_CNT_reg[0]  ( .D(n149), .CK(clk), .SN(n249), .Q(ADDR_CNT[0]), 
        .QN(n67) );
  DFFSXL \ADDR_CNT_reg[11]  ( .D(n138), .CK(clk), .SN(n249), .Q(ADDR_CNT[11]), 
        .QN(n69) );
  DFFSXL \ADDR_CNT_reg[10]  ( .D(n137), .CK(clk), .SN(n249), .Q(ADDR_CNT[10]), 
        .QN(n68) );
  DFFSXL \ADDR_CNT_reg[9]  ( .D(n136), .CK(clk), .SN(n249), .Q(ADDR_CNT[9]), 
        .QN(n81) );
  DFFSXL flag_c_reg ( .D(n292), .CK(clk), .SN(n249), .Q(flag_c), .QN(n66) );
  DFFSXL \ADDR_CNT_reg[12]  ( .D(n139), .CK(clk), .SN(n249), .Q(ADDR_CNT[12]), 
        .QN(n70) );
  DFFSXL \ADDR_CNT_reg[13]  ( .D(n140), .CK(clk), .SN(n249), .Q(ADDR_CNT[13]), 
        .QN(n119) );
  DFFSXL \ADDR_CNT_reg[14]  ( .D(n141), .CK(clk), .SN(n249), .Q(ADDR_CNT[14]), 
        .QN(n118) );
  DFFSXL \ADDR_CNT_reg[15]  ( .D(n142), .CK(clk), .SN(n249), .Q(ADDR_CNT[15]), 
        .QN(n73) );
  DFFSXL \ADDR_CNT_reg[16]  ( .D(n143), .CK(clk), .SN(n249), .Q(ADDR_CNT[16]), 
        .QN(n71) );
  DFFSXL \ADDR_CNT_reg[17]  ( .D(n148), .CK(clk), .SN(n249), .Q(ADDR_CNT[17]), 
        .QN(n72) );
  DFFRXL \cs_reg[2]  ( .D(n295), .CK(clk), .RN(n249), .Q(n230), .QN(n105) );
  DFFRXL \ADDR_STATE_CNT_reg[0]  ( .D(n146), .CK(clk), .RN(n249), .Q(n231), 
        .QN(n109) );
  DFFRXL \F_OUT_A_reg[3]  ( .D(n273), .CK(clk), .RN(n249), .Q(n196), .QN(n195)
         );
  DFFRXL \F_OUT_A_reg[2]  ( .D(n274), .CK(clk), .RN(n249), .Q(n198), .QN(n197)
         );
  DFFRXL \F_OUT_A_reg[1]  ( .D(n268), .CK(clk), .RN(n249), .Q(n200), .QN(n199)
         );
  DFFRXL \F_OUT_A_reg[5]  ( .D(n269), .CK(clk), .RN(n249), .Q(n194), .QN(n193)
         );
  DFFRXL \F_OUT_A_reg[6]  ( .D(n267), .CK(clk), .RN(n249), .Q(n192), .QN(n191)
         );
  DFFRXL \F_OUT_A_reg[0]  ( .D(n272), .CK(clk), .RN(n249), .Q(n202), .QN(n201)
         );
  DFFRX2 \cs_reg[1]  ( .D(n271), .CK(clk), .RN(n249), .Q(n258), .QN(n106) );
  BUFX2 U128 ( .A(n121), .Y(n267) );
  BUFX2 U129 ( .A(n126), .Y(n268) );
  BUFX2 U130 ( .A(n122), .Y(n269) );
  INVXL U132 ( .A(ns[1]), .Y(n270) );
  CLKINVX1 U133 ( .A(n270), .Y(n271) );
  BUFX2 U135 ( .A(n127), .Y(n272) );
  BUFX2 U136 ( .A(n124), .Y(n273) );
  BUFX2 U137 ( .A(n125), .Y(n274) );
  CLKINVX1 U138 ( .A(n190), .Y(n275) );
  CLKINVX1 U139 ( .A(n275), .Y(n276) );
  INVXL U140 ( .A(n192), .Y(n277) );
  CLKINVX1 U141 ( .A(n277), .Y(n278) );
  INVXL U142 ( .A(n194), .Y(n279) );
  CLKINVX1 U143 ( .A(n279), .Y(n280) );
  INVXL U144 ( .A(n196), .Y(n281) );
  CLKINVX1 U145 ( .A(n281), .Y(n282) );
  INVXL U146 ( .A(n198), .Y(n283) );
  CLKINVX1 U147 ( .A(n283), .Y(n284) );
  INVXL U148 ( .A(n200), .Y(n285) );
  CLKINVX1 U149 ( .A(n285), .Y(n286) );
  INVXL U165 ( .A(n202), .Y(n287) );
  CLKINVX1 U166 ( .A(n287), .Y(n288) );
  INVX12 U169 ( .A(n289), .Y(F_CLE_B) );
  CLKINVX1 U170 ( .A(n239), .Y(n289) );
  CLKBUFX2 U171 ( .A(n240), .Y(n204) );
  INVXL U172 ( .A(n266), .Y(n240) );
  BUFX2 U173 ( .A(n145), .Y(n291) );
  BUFX2 U174 ( .A(n144), .Y(n292) );
  BUFX2 U175 ( .A(n102), .Y(n293) );
  CLKINVX1 U176 ( .A(ns[2]), .Y(n294) );
  CLKINVX1 U177 ( .A(n294), .Y(n295) );
  AO21XL U178 ( .A0(n8), .A1(n213), .B0(n9), .Y(n7) );
  CLKINVX1 U179 ( .A(n298), .Y(n296) );
  INVX16 U180 ( .A(n296), .Y(F_REN_A) );
  INVX6 U181 ( .A(rst), .Y(n249) );
endmodule

