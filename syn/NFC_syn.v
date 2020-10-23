/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Fri Oct 23 21:13:10 2020
/////////////////////////////////////////////////////////////


module NFC_DW01_inc_0 ( A, SUM );
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
  XOR2X1 U1 ( .A(carry[17]), .B(A[17]), .Y(SUM[17]) );
endmodule


module NFC ( clk, rst, done, F_IO_A, F_CLE_A, F_ALE_A, F_REN_A, F_WEN_A, 
        F_RB_A, F_IO_B, F_CLE_B, F_ALE_B, F_REN_B, F_WEN_B, F_RB_B );
  inout [7:0] F_IO_A;
  inout [7:0] F_IO_B;
  input clk, rst, F_RB_A, F_RB_B;
  output done, F_CLE_A, F_ALE_A, F_REN_A, F_WEN_A, F_CLE_B, F_ALE_B, F_REN_B,
         F_WEN_B;
  wire   n309, n312, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, n2, n4, n6, n7, n9,
         n25, n26, n27, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n50, n54, n55, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n68, n69, n70, n72, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n88, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n107, n311, n109, n313, n111, n112,
         n113, n114, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n310, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n239, n250, n251, n252, n253,
         n256, n257, n258, n259, n266, n267, n268, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345;
  wire   [3:0] ns_A;
  wire   [17:0] counter_MEM_A;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign F_REN_B = 1'b1;

  TBUFX16 \F_IO_B_tri[0]  ( .A(n227), .OE(1'b1), .Y(F_IO_B[0]) );
  TBUFX16 \F_IO_B_tri[1]  ( .A(n224), .OE(1'b1), .Y(F_IO_B[1]) );
  TBUFX16 \F_IO_B_tri[2]  ( .A(n221), .OE(1'b1), .Y(F_IO_B[2]) );
  TBUFX16 \F_IO_B_tri[3]  ( .A(n218), .OE(1'b1), .Y(F_IO_B[3]) );
  TBUFX16 \F_IO_B_tri[4]  ( .A(n99), .OE(1'b1), .Y(F_IO_B[4]) );
  TBUFX16 \F_IO_B_tri[5]  ( .A(n213), .OE(1'b1), .Y(F_IO_B[5]) );
  TBUFX16 \F_IO_B_tri[6]  ( .A(n210), .OE(1'b1), .Y(F_IO_B[6]) );
  TBUFX16 \F_IO_B_tri[7]  ( .A(n96), .OE(1'b1), .Y(F_IO_B[7]) );
  TBUFX16 \F_IO_A_tri[0]  ( .A(n205), .OE(n207), .Y(F_IO_A[0]) );
  TBUFX16 \F_IO_A_tri[1]  ( .A(n201), .OE(n207), .Y(F_IO_A[1]) );
  TBUFX16 \F_IO_A_tri[2]  ( .A(n197), .OE(n207), .Y(F_IO_A[2]) );
  TBUFX16 \F_IO_A_tri[3]  ( .A(n193), .OE(n207), .Y(F_IO_A[3]) );
  TBUFX16 \F_IO_A_tri[4]  ( .A(n190), .OE(n207), .Y(F_IO_A[4]) );
  TBUFX16 \F_IO_A_tri[5]  ( .A(n186), .OE(n207), .Y(F_IO_A[5]) );
  TBUFX16 \F_IO_A_tri[6]  ( .A(n182), .OE(n207), .Y(F_IO_A[6]) );
  TBUFX16 \F_IO_A_tri[7]  ( .A(n179), .OE(n207), .Y(F_IO_A[7]) );
  AOI2BB1X4 U96 ( .A0N(n294), .A1N(n86), .B0(clk), .Y(F_WEN_B) );
  NAND3X6 U98 ( .A(n109), .B(n69), .C(clk), .Y(F_WEN_A) );
  XNOR2XL U136 ( .A(n6), .B(n86), .Y(n105) );
  DLY4X1 U152 ( .A(n301), .Y(n180) );
  CLKINVX1 U153 ( .A(n180), .Y(n178) );
  CLKINVX1 U154 ( .A(n178), .Y(n179) );
  CLKINVX1 U155 ( .A(n212), .Y(n181) );
  CLKINVX1 U156 ( .A(n181), .Y(n182) );
  CLKINVX1 U159 ( .A(n215), .Y(n185) );
  CLKINVX1 U160 ( .A(n185), .Y(n186) );
  DLY4X1 U163 ( .A(n250), .Y(n191) );
  CLKINVX1 U164 ( .A(n191), .Y(n189) );
  CLKINVX1 U165 ( .A(n189), .Y(n190) );
  CLKINVX1 U166 ( .A(n220), .Y(n192) );
  CLKINVX1 U167 ( .A(n192), .Y(n193) );
  CLKINVX1 U170 ( .A(n223), .Y(n196) );
  CLKINVX1 U171 ( .A(n196), .Y(n197) );
  CLKINVX1 U174 ( .A(n226), .Y(n200) );
  CLKINVX1 U175 ( .A(n200), .Y(n201) );
  INVXL U178 ( .A(n88), .Y(n206) );
  CLKINVX1 U179 ( .A(n229), .Y(n204) );
  CLKINVX1 U180 ( .A(n204), .Y(n205) );
  CLKINVX2 U181 ( .A(n206), .Y(n207) );
  AND2XL U182 ( .A(n69), .B(n109), .Y(n88) );
  INVX1 U185 ( .A(n310), .Y(n292) );
  NOR2XL U186 ( .A(n293), .B(n300), .Y(n310) );
  BUFX2 U187 ( .A(n97), .Y(n210) );
  CLKINVX1 U189 ( .A(n211), .Y(n212) );
  BUFX2 U190 ( .A(n98), .Y(n213) );
  CLKINVX1 U192 ( .A(n214), .Y(n215) );
  CLKINVX1 U193 ( .A(n251), .Y(n216) );
  CLKINVX1 U194 ( .A(n216), .Y(n217) );
  BUFX2 U195 ( .A(n100), .Y(n218) );
  CLKINVX1 U197 ( .A(n219), .Y(n220) );
  BUFX2 U198 ( .A(n101), .Y(n221) );
  CLKINVX1 U200 ( .A(n222), .Y(n223) );
  BUFX2 U201 ( .A(n102), .Y(n224) );
  CLKINVX1 U203 ( .A(n225), .Y(n226) );
  BUFX2 U204 ( .A(n103), .Y(n227) );
  CLKINVX1 U206 ( .A(n228), .Y(n229) );
  CLKINVX1 U207 ( .A(n311), .Y(n230) );
  CLKINVX1 U208 ( .A(n230), .Y(n231) );
  DLY4X1 U216 ( .A(n114), .Y(n239) );
  INVXL U229 ( .A(n252), .Y(n253) );
  CLKINVX1 U231 ( .A(ns_A[0]), .Y(n252) );
  INVXL U234 ( .A(n256), .Y(n257) );
  INVXL U235 ( .A(F_RB_B), .Y(n256) );
  INVXL U236 ( .A(n258), .Y(n259) );
  INVXL U237 ( .A(n257), .Y(n258) );
  OAI2BB1XL U238 ( .A0N(n45), .A1N(n259), .B0(n46), .Y(n42) );
  OAI211XL U239 ( .A0(n4), .A1(n297), .B0(n42), .C0(n43), .Y(ns_A[3]) );
  NOR4X2 U242 ( .A(n47), .B(n313), .C(n6), .D(n50), .Y(n2) );
  BUFX12 U243 ( .A(n309), .Y(done) );
  BUFX12 U244 ( .A(n312), .Y(F_REN_A) );
  INVX12 U245 ( .A(n292), .Y(F_CLE_A) );
  INVX12 U246 ( .A(n293), .Y(F_CLE_B) );
  INVX1 U247 ( .A(n313), .Y(n293) );
  NOR3X1 U248 ( .A(n299), .B(n112), .C(n297), .Y(n313) );
  NOR3X1 U249 ( .A(n64), .B(n112), .C(n297), .Y(n47) );
  CLKINVX1 U250 ( .A(F_ALE_A), .Y(n295) );
  BUFX16 U251 ( .A(n231), .Y(F_ALE_A) );
  CLKBUFX3 U252 ( .A(n273), .Y(n268) );
  CLKINVX1 U253 ( .A(n267), .Y(n273) );
  CLKINVX1 U254 ( .A(n34), .Y(n274) );
  CLKINVX1 U255 ( .A(n46), .Y(n296) );
  BUFX12 U256 ( .A(n231), .Y(F_ALE_B) );
  CLKBUFX3 U257 ( .A(n68), .Y(n266) );
  NOR2XL U258 ( .A(n313), .B(F_ALE_A), .Y(n68) );
  NAND2X1 U259 ( .A(n297), .B(n298), .Y(n63) );
  NAND4X2 U260 ( .A(n27), .B(n107), .C(n272), .D(n2), .Y(n9) );
  NAND2X2 U261 ( .A(n35), .B(n27), .Y(n7) );
  INVX3 U262 ( .A(n33), .Y(n271) );
  AOI221XL U263 ( .A0(n272), .A1(n34), .B0(n2), .B1(n107), .C0(n35), .Y(n33)
         );
  NOR3X1 U264 ( .A(n272), .B(n2), .C(n274), .Y(n35) );
  CLKINVX1 U265 ( .A(ns_A[0]), .Y(n272) );
  AND2X2 U266 ( .A(n6), .B(n253), .Y(n55) );
  CLKBUFX3 U267 ( .A(n54), .Y(n267) );
  CLKINVX1 U268 ( .A(n2), .Y(n275) );
  NAND3BX1 U269 ( .AN(n47), .B(n48), .C(n295), .Y(n107) );
  NOR2X1 U270 ( .A(n4), .B(n63), .Y(n46) );
  NOR2X1 U271 ( .A(n107), .B(ns_A[3]), .Y(n34) );
  CLKINVX1 U272 ( .A(N131), .Y(n277) );
  CLKINVX1 U273 ( .A(N132), .Y(n276) );
  CLKINVX1 U274 ( .A(N130), .Y(n278) );
  CLKINVX1 U275 ( .A(N129), .Y(n279) );
  NOR2X2 U276 ( .A(n64), .B(n63), .Y(n6) );
  CLKINVX1 U277 ( .A(N124), .Y(n284) );
  CLKINVX1 U278 ( .A(N123), .Y(n285) );
  CLKINVX1 U279 ( .A(N126), .Y(n282) );
  CLKINVX1 U280 ( .A(N127), .Y(n281) );
  CLKINVX1 U281 ( .A(N128), .Y(n280) );
  CLKINVX1 U282 ( .A(N125), .Y(n283) );
  CLKINVX1 U283 ( .A(N117), .Y(n291) );
  CLKINVX1 U284 ( .A(N118), .Y(n290) );
  CLKINVX1 U285 ( .A(N119), .Y(n289) );
  CLKINVX1 U286 ( .A(N120), .Y(n288) );
  CLKINVX1 U287 ( .A(N121), .Y(n287) );
  CLKINVX1 U288 ( .A(N122), .Y(n286) );
  CLKINVX1 U290 ( .A(n266), .Y(n294) );
  OAI211X1 U291 ( .A0(n239), .A1(n295), .B0(n70), .C0(n292), .Y(n96) );
  NAND2X1 U292 ( .A(F_IO_A[7]), .B(n266), .Y(n70) );
  OAI221XL U293 ( .A0(n109), .A1(n293), .B0(n217), .B1(n295), .C0(n72), .Y(n99) );
  NAND2X1 U294 ( .A(F_IO_A[4]), .B(n266), .Y(n72) );
  AO22X1 U295 ( .A0(n212), .A1(F_ALE_A), .B0(F_IO_A[6]), .B1(n266), .Y(n97) );
  AO22X1 U296 ( .A0(n215), .A1(F_ALE_A), .B0(F_IO_A[5]), .B1(n266), .Y(n98) );
  AO22X1 U297 ( .A0(n220), .A1(F_ALE_A), .B0(F_IO_A[3]), .B1(n266), .Y(n100)
         );
  AO22X1 U298 ( .A0(n223), .A1(F_ALE_A), .B0(F_IO_A[2]), .B1(n266), .Y(n101)
         );
  AO22X1 U299 ( .A0(n226), .A1(F_ALE_A), .B0(F_IO_A[1]), .B1(n266), .Y(n102)
         );
  AO22X1 U300 ( .A0(n229), .A1(F_ALE_A), .B0(F_IO_A[0]), .B1(n266), .Y(n103)
         );
  OAI32X1 U302 ( .A0(n300), .A1(n113), .A2(n298), .B0(n296), .B1(n259), .Y(n50) );
  OAI222XL U303 ( .A0(n7), .A1(n291), .B0(n9), .B1(n282), .C0(n202), .C1(n271), 
        .Y(n137) );
  OAI222XL U304 ( .A0(n7), .A1(n290), .B0(n9), .B1(n281), .C0(n198), .C1(n271), 
        .Y(n136) );
  OAI222XL U305 ( .A0(n7), .A1(n289), .B0(n9), .B1(n280), .C0(n194), .C1(n271), 
        .Y(n135) );
  OAI222XL U306 ( .A0(n7), .A1(n288), .B0(n9), .B1(n279), .C0(n251), .C1(n271), 
        .Y(n134) );
  OAI222XL U307 ( .A0(n7), .A1(n287), .B0(n9), .B1(n278), .C0(n187), .C1(n271), 
        .Y(n133) );
  OAI222XL U308 ( .A0(n7), .A1(n286), .B0(n9), .B1(n277), .C0(n183), .C1(n271), 
        .Y(n132) );
  OAI222XL U309 ( .A0(n7), .A1(n285), .B0(n9), .B1(n276), .C0(n239), .C1(n271), 
        .Y(n131) );
  AOI222XL U311 ( .A0(F_RB_A), .A1(n47), .B0(n59), .B1(n300), .C0(n46), .C1(
        n45), .Y(n58) );
  OAI21XL U312 ( .A0(n113), .A1(n298), .B0(n111), .Y(n59) );
  OAI221XL U313 ( .A0(n7), .A1(counter_MEM_A[0]), .B0(n208), .B1(n271), .C0(
        n25), .Y(n138) );
  AOI2BB2X1 U314 ( .B0(n26), .B1(n27), .A0N(n283), .A1N(n9), .Y(n25) );
  OAI31XL U315 ( .A0(n284), .A1(n253), .A2(n274), .B0(n32), .Y(n26) );
  NAND4X1 U316 ( .A(N133), .B(ns_A[0]), .C(n107), .D(n2), .Y(n32) );
  OAI22XL U317 ( .A0(n75), .A1(n268), .B0(counter_MEM_A[0]), .B1(n267), .Y(
        n158) );
  OAI22XL U318 ( .A0(n123), .A1(n268), .B0(n276), .B1(n267), .Y(n139) );
  OAI22XL U319 ( .A0(n124), .A1(n268), .B0(n277), .B1(n267), .Y(n140) );
  OAI22XL U320 ( .A0(n127), .A1(n268), .B0(n280), .B1(n267), .Y(n143) );
  OAI22XL U321 ( .A0(n128), .A1(n268), .B0(n281), .B1(n267), .Y(n144) );
  OAI22XL U322 ( .A0(n76), .A1(n268), .B0(n282), .B1(n267), .Y(n145) );
  OAI22XL U323 ( .A0(n83), .A1(n268), .B0(n283), .B1(n267), .Y(n146) );
  OAI22XL U324 ( .A0(n82), .A1(n268), .B0(n284), .B1(n267), .Y(n147) );
  OAI22XL U325 ( .A0(n84), .A1(n268), .B0(n285), .B1(n267), .Y(n148) );
  OAI22XL U326 ( .A0(n129), .A1(n268), .B0(n286), .B1(n54), .Y(n149) );
  OAI22XL U327 ( .A0(n130), .A1(n268), .B0(n287), .B1(n54), .Y(n150) );
  OAI22XL U328 ( .A0(n81), .A1(n268), .B0(n288), .B1(n54), .Y(n151) );
  OAI22XL U329 ( .A0(n80), .A1(n268), .B0(n289), .B1(n54), .Y(n152) );
  OAI22XL U330 ( .A0(n79), .A1(n268), .B0(n290), .B1(n54), .Y(n153) );
  OAI22XL U331 ( .A0(n78), .A1(n268), .B0(n291), .B1(n54), .Y(n154) );
  OAI22XL U332 ( .A0(n125), .A1(n268), .B0(n278), .B1(n267), .Y(n141) );
  OAI22XL U333 ( .A0(n126), .A1(n268), .B0(n279), .B1(n267), .Y(n142) );
  OAI2BB2XL U334 ( .B0(n77), .B1(n268), .A0N(N133), .A1N(n268), .Y(n157) );
  NAND2X1 U335 ( .A(n122), .B(n55), .Y(n54) );
  XNOR2X1 U336 ( .A(n299), .B(n112), .Y(n69) );
  OAI21XL U337 ( .A0(n122), .A1(n55), .B0(n267), .Y(n155) );
  NOR4BBX1 U338 ( .AN(n65), .BN(n66), .C(n79), .D(n78), .Y(n44) );
  NOR3X1 U339 ( .A(n75), .B(n129), .C(n130), .Y(n65) );
  NOR4X1 U340 ( .A(n80), .B(n81), .C(n82), .D(n84), .Y(n66) );
  NAND3X1 U341 ( .A(n44), .B(n6), .C(n74), .Y(n43) );
  NAND2X1 U342 ( .A(n111), .B(n300), .Y(n4) );
  NAND4X1 U343 ( .A(n259), .B(n44), .C(n60), .D(n61), .Y(n45) );
  NOR3X1 U344 ( .A(n83), .B(n76), .C(n77), .Y(n60) );
  NOR4X1 U345 ( .A(n62), .B(n128), .C(n126), .D(n127), .Y(n61) );
  OR3X2 U346 ( .A(n124), .B(n123), .C(n125), .Y(n62) );
  OAI2BB1X1 U347 ( .A0N(n44), .A1N(n74), .B0(n6), .Y(n48) );
  OAI31XL U348 ( .A0(n298), .A1(n4), .A2(n297), .B0(n85), .Y(n104) );
  NAND2X1 U349 ( .A(n36), .B(n37), .Y(n27) );
  NOR4BBX1 U350 ( .AN(n81), .BN(n80), .C(n38), .D(n39), .Y(n37) );
  NOR4BBX1 U351 ( .AN(n128), .BN(n127), .C(n40), .D(n41), .Y(n36) );
  NAND4X1 U352 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n38) );
  NAND4X1 U353 ( .A(n123), .B(n124), .C(n125), .D(n126), .Y(n40) );
  OAI21XL U354 ( .A0(n74), .A1(n6), .B0(n296), .Y(n156) );
  NAND3X1 U355 ( .A(n83), .B(n84), .C(n82), .Y(n39) );
  NAND3X1 U356 ( .A(n130), .B(n75), .C(n129), .Y(n41) );
  NFC_DW01_inc_0 r370 ( .A(counter_MEM_A), .SUM({N133, N132, N131, N130, N129, 
        N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, 
        SYNOPSYS_UNCONNECTED__0}) );
  DFFSX1 flag_reg ( .D(n324), .CK(clk), .SN(n270), .QN(n74) );
  DFFRX1 flag_c_reg ( .D(n344), .CK(clk), .RN(n270), .QN(n122) );
  DFFSX1 F_REN_A_reg ( .D(n322), .CK(clk), .SN(n270), .Q(n312), .QN(n86) );
  DFFSX1 \cs_A_reg[0]  ( .D(n316), .CK(clk), .SN(n270), .Q(n297), .QN(n113) );
  DFFSX1 \counter_MEM_A_reg[16]  ( .D(n342), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[16]), .QN(n123) );
  DFFSX1 \counter_MEM_A_reg[15]  ( .D(n341), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[15]), .QN(n124) );
  DFFSX1 \counter_MEM_A_reg[14]  ( .D(n340), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[14]), .QN(n125) );
  DFFSX1 \counter_MEM_A_reg[13]  ( .D(n339), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[13]), .QN(n126) );
  DFFSX1 \counter_MEM_A_reg[12]  ( .D(n338), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[12]), .QN(n127) );
  DFFSX1 \counter_MEM_A_reg[11]  ( .D(n337), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[11]), .QN(n128) );
  DFFSX1 \counter_MEM_A_reg[10]  ( .D(n336), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[10]), .QN(n76) );
  DFFSX1 \counter_MEM_A_reg[9]  ( .D(n335), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[9]), .QN(n83) );
  DFFSX1 \counter_MEM_A_reg[8]  ( .D(n334), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[8]), .QN(n82) );
  DFFSX1 \counter_MEM_A_reg[7]  ( .D(n333), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[7]), .QN(n84) );
  DFFSX1 \counter_MEM_A_reg[0]  ( .D(n332), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[0]), .QN(n75) );
  DFFSX1 \counter_MEM_A_reg[6]  ( .D(n331), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[6]), .QN(n129) );
  DFFSX1 \counter_MEM_A_reg[5]  ( .D(n330), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[5]), .QN(n130) );
  DFFSX1 \counter_MEM_A_reg[4]  ( .D(n329), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[4]), .QN(n81) );
  DFFSX1 \counter_MEM_A_reg[3]  ( .D(n328), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[3]), .QN(n80) );
  DFFSX1 \counter_MEM_A_reg[2]  ( .D(n327), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[2]), .QN(n79) );
  DFFSX1 \counter_MEM_A_reg[1]  ( .D(n326), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[1]), .QN(n78) );
  DFFSX1 \counter_MEM_A_reg[17]  ( .D(n325), .CK(clk), .SN(n270), .Q(
        counter_MEM_A[17]), .QN(n77) );
  DFFRXL done_reg ( .D(n345), .CK(clk), .RN(n270), .Q(n309), .QN(n85) );
  DFFRXL \F_OUT_A_reg[4]  ( .D(n134), .CK(clk), .RN(n270), .Q(n250), .QN(n251)
         );
  DFFRXL \F_OUT_A_reg[3]  ( .D(n321), .CK(clk), .RN(n270), .Q(n195), .QN(n194)
         );
  DFFRXL \F_OUT_A_reg[2]  ( .D(n320), .CK(clk), .RN(n270), .Q(n199), .QN(n198)
         );
  DFFRXL \F_OUT_A_reg[1]  ( .D(n319), .CK(clk), .RN(n270), .Q(n203), .QN(n202)
         );
  DFFRXL \F_OUT_A_reg[5]  ( .D(n317), .CK(clk), .RN(n270), .Q(n188), .QN(n187)
         );
  DFFRXL \F_OUT_A_reg[7]  ( .D(n131), .CK(clk), .RN(n270), .Q(n301), .QN(n114)
         );
  DFFRXL \F_OUT_A_reg[6]  ( .D(n318), .CK(clk), .RN(n270), .Q(n184), .QN(n183)
         );
  DFFRXL \F_OUT_A_reg[0]  ( .D(n323), .CK(clk), .RN(n270), .Q(n209), .QN(n208)
         );
  DFFRX1 \cs_A_reg[3]  ( .D(ns_A[3]), .CK(clk), .RN(n270), .Q(n300), .QN(n109)
         );
  DFFRX1 \cs_A_reg[1]  ( .D(n275), .CK(clk), .RN(n270), .Q(n298), .QN(n112) );
  DFFRX1 \cs_A_reg[2]  ( .D(n107), .CK(clk), .RN(n270), .Q(n299), .QN(n111) );
  INVXL U133 ( .A(n58), .Y(n314) );
  CLKINVX1 U134 ( .A(n314), .Y(n315) );
  DLY4X1 U135 ( .A(ns_A[0]), .Y(n316) );
  BUFX2 U137 ( .A(n133), .Y(n317) );
  BUFX2 U138 ( .A(n132), .Y(n318) );
  BUFX2 U139 ( .A(n137), .Y(n319) );
  BUFX2 U140 ( .A(n136), .Y(n320) );
  BUFX2 U141 ( .A(n135), .Y(n321) );
  BUFX2 U142 ( .A(n105), .Y(n322) );
  BUFX2 U143 ( .A(n138), .Y(n323) );
  INVXL U144 ( .A(n184), .Y(n211) );
  INVXL U145 ( .A(n188), .Y(n214) );
  INVXL U146 ( .A(n195), .Y(n219) );
  INVXL U147 ( .A(n199), .Y(n222) );
  INVXL U148 ( .A(n203), .Y(n225) );
  INVXL U149 ( .A(n209), .Y(n228) );
  BUFX2 U150 ( .A(n156), .Y(n324) );
  BUFX2 U151 ( .A(n157), .Y(n325) );
  BUFX2 U157 ( .A(n154), .Y(n326) );
  BUFX2 U158 ( .A(n153), .Y(n327) );
  BUFX2 U161 ( .A(n152), .Y(n328) );
  BUFX2 U162 ( .A(n151), .Y(n329) );
  BUFX2 U168 ( .A(n150), .Y(n330) );
  BUFX2 U169 ( .A(n149), .Y(n331) );
  BUFX2 U172 ( .A(n158), .Y(n332) );
  BUFX2 U173 ( .A(n148), .Y(n333) );
  BUFX2 U176 ( .A(n147), .Y(n334) );
  BUFX2 U177 ( .A(n146), .Y(n335) );
  BUFX2 U183 ( .A(n145), .Y(n336) );
  BUFX2 U184 ( .A(n144), .Y(n337) );
  BUFX2 U188 ( .A(n143), .Y(n338) );
  BUFX2 U191 ( .A(n142), .Y(n339) );
  BUFX2 U196 ( .A(n141), .Y(n340) );
  BUFX2 U199 ( .A(n140), .Y(n341) );
  BUFX2 U202 ( .A(n139), .Y(n342) );
  CLKINVX1 U205 ( .A(n155), .Y(n343) );
  CLKINVX1 U209 ( .A(n343), .Y(n344) );
  BUFX2 U210 ( .A(n104), .Y(n345) );
  NAND4X1 U211 ( .A(n48), .B(n293), .C(n57), .D(n315), .Y(ns_A[0]) );
  OAI32XL U212 ( .A0(n299), .A1(n300), .A2(n63), .B0(n64), .B1(n298), .Y(n311)
         );
  NAND2XL U213 ( .A(n109), .B(n299), .Y(n64) );
  NAND3XL U214 ( .A(n113), .B(n109), .C(n112), .Y(n57) );
  INVX6 U215 ( .A(rst), .Y(n270) );
endmodule

