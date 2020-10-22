/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Thu Oct 22 19:32:29 2020
/////////////////////////////////////////////////////////////


module NFC ( clk, rst, done, F_IO_A, F_CLE_A, F_ALE_A, F_REN_A, F_WEN_A, 
        F_RB_A, F_IO_B, F_CLE_B, F_ALE_B, F_REN_B, F_WEN_B, F_RB_B );
  inout [7:0] F_IO_A;
  inout [7:0] F_IO_B;
  input clk, rst, F_RB_A, F_RB_B;
  output done, F_CLE_A, F_ALE_A, F_REN_A, F_WEN_A, F_CLE_B, F_ALE_B, F_REN_B,
         F_WEN_B;
  wire   flag, N105, n3, n104, n105, n106, n107, n108, n111, n114, n115, n116,
         n117, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n263, n149, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261;
  wire   [7:0] F_OUT_A;
  wire   [7:0] F_OUT_B;
  wire   [3:0] cs_A;
  wire   [3:0] ns_A;
  wire   [17:0] counter_MEM_A;
  assign F_CLE_B = N105;
  assign F_REN_B = 1'b1;

  DFFSX1 \counter_MEM_A_reg[17]  ( .D(n144), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[17]) );
  DFFSX1 \counter_MEM_A_reg[16]  ( .D(n142), .CK(clk), .SN(n116), .QN(n252) );
  DFFSX1 \counter_MEM_A_reg[15]  ( .D(n141), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[15]) );
  DFFSX1 \counter_MEM_A_reg[14]  ( .D(n140), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[14]), .QN(n256) );
  DFFSX1 \counter_MEM_A_reg[13]  ( .D(n139), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[13]) );
  DFFSX1 \counter_MEM_A_reg[12]  ( .D(n138), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[12]), .QN(n257) );
  DFFSX1 \counter_MEM_A_reg[11]  ( .D(n137), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[11]) );
  DFFSX1 \counter_MEM_A_reg[10]  ( .D(n136), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[10]), .QN(n255) );
  DFFSX1 \counter_MEM_A_reg[9]  ( .D(n135), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[9]) );
  DFFSX1 flag_reg ( .D(n143), .CK(clk), .SN(n116), .Q(flag) );
  DFFSX1 \counter_MEM_A_reg[8]  ( .D(n134), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[8]) );
  DFFSX1 \counter_MEM_A_reg[7]  ( .D(n133), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[7]) );
  DFFSX1 \counter_MEM_A_reg[6]  ( .D(n132), .CK(clk), .SN(n116), .QN(n251) );
  DFFSX1 \counter_MEM_A_reg[5]  ( .D(n131), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[5]), .QN(n260) );
  DFFSX1 \counter_MEM_A_reg[4]  ( .D(n130), .CK(clk), .SN(n116), .QN(n249) );
  DFFSX1 \counter_MEM_A_reg[3]  ( .D(n129), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[3]) );
  OAI2BB2XL U127 ( .B0(n114), .B1(n258), .A0N(n115), .A1N(F_IO_A[6]), .Y(
        F_OUT_B[6]) );
  AO22XL U128 ( .A0(F_ALE_A), .A1(F_OUT_A[5]), .B0(n115), .B1(F_IO_A[5]), .Y(
        F_OUT_B[5]) );
  NAND2XL U130 ( .A(n115), .B(F_IO_A[4]), .Y(n111) );
  AO22XL U132 ( .A0(F_ALE_A), .A1(F_OUT_A[3]), .B0(n115), .B1(F_IO_A[3]), .Y(
        F_OUT_B[3]) );
  AO22XL U133 ( .A0(F_ALE_A), .A1(F_OUT_A[2]), .B0(n115), .B1(F_IO_A[2]), .Y(
        F_OUT_B[2]) );
  AO22XL U134 ( .A0(F_ALE_A), .A1(F_OUT_A[1]), .B0(n115), .B1(F_IO_A[1]), .Y(
        F_OUT_B[1]) );
  AO22XL U135 ( .A0(F_ALE_A), .A1(F_OUT_A[0]), .B0(n115), .B1(F_IO_A[0]), .Y(
        F_OUT_B[0]) );
  DFFRX1 \F_OUT_A_reg[6]  ( .D(n120), .CK(clk), .RN(n116), .Q(F_OUT_A[6]), 
        .QN(n258) );
  DFFSX1 \counter_MEM_A_reg[2]  ( .D(n128), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[2]), .QN(n254) );
  DFFRX1 \cs_A_reg[3]  ( .D(ns_A[3]), .CK(clk), .RN(n116), .Q(cs_A[3]), .QN(
        n253) );
  DFFRX1 \cs_A_reg[2]  ( .D(ns_A[2]), .CK(clk), .RN(n116), .Q(cs_A[2]), .QN(
        n250) );
  DFFRX1 done_reg ( .D(n117), .CK(clk), .RN(n116), .QN(n259) );
  DFFRX1 \F_OUT_A_reg[0]  ( .D(n126), .CK(clk), .RN(n116), .Q(F_OUT_A[0]) );
  DFFRX1 \F_OUT_A_reg[7]  ( .D(n119), .CK(clk), .RN(n116), .Q(F_OUT_A[7]) );
  DFFRX1 \F_OUT_A_reg[1]  ( .D(n125), .CK(clk), .RN(n116), .Q(F_OUT_A[1]) );
  DFFRX1 \F_OUT_A_reg[2]  ( .D(n124), .CK(clk), .RN(n116), .Q(F_OUT_A[2]) );
  DFFRX1 \F_OUT_A_reg[3]  ( .D(n123), .CK(clk), .RN(n116), .Q(F_OUT_A[3]) );
  DFFRX1 \F_OUT_A_reg[5]  ( .D(n121), .CK(clk), .RN(n116), .Q(F_OUT_A[5]) );
  DFFRX1 \F_OUT_A_reg[4]  ( .D(n122), .CK(clk), .RN(n116), .Q(F_OUT_A[4]) );
  DFFSX1 \counter_MEM_A_reg[0]  ( .D(n145), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[0]) );
  DFFSX1 \counter_MEM_A_reg[1]  ( .D(n127), .CK(clk), .SN(n116), .Q(
        counter_MEM_A[1]) );
  NAND2X8 U120 ( .A(n104), .B(n105), .Y(F_REN_A) );
  OAI32X4 U124 ( .A0(n107), .A1(n106), .A2(n105), .B0(clk), .B1(n115), .Y(
        F_WEN_B) );
  NAND2BX4 U121 ( .AN(n146), .B(clk), .Y(F_WEN_A) );
  DFFRX1 \cs_A_reg[1]  ( .D(ns_A[1]), .CK(clk), .RN(n116), .Q(cs_A[1]) );
  TBUFX16 \F_IO_A_tri[7]  ( .A(F_OUT_A[7]), .OE(n3), .Y(F_IO_A[7]) );
  TBUFX16 \F_IO_A_tri[6]  ( .A(F_OUT_A[6]), .OE(n3), .Y(F_IO_A[6]) );
  TBUFX16 \F_IO_B_tri[5]  ( .A(F_OUT_B[5]), .OE(1'b1), .Y(F_IO_B[5]) );
  TBUFX16 \F_IO_B_tri[3]  ( .A(F_OUT_B[3]), .OE(1'b1), .Y(F_IO_B[3]) );
  TBUFX16 \F_IO_B_tri[2]  ( .A(F_OUT_B[2]), .OE(1'b1), .Y(F_IO_B[2]) );
  TBUFX16 \F_IO_B_tri[1]  ( .A(F_OUT_B[1]), .OE(1'b1), .Y(F_IO_B[1]) );
  TBUFX16 \F_IO_B_tri[0]  ( .A(F_OUT_B[0]), .OE(1'b1), .Y(F_IO_B[0]) );
  TBUFX16 \F_IO_B_tri[4]  ( .A(F_OUT_B[4]), .OE(1'b1), .Y(F_IO_B[4]) );
  TBUFX16 \F_IO_B_tri[7]  ( .A(F_OUT_B[7]), .OE(1'b1), .Y(F_IO_B[7]) );
  TBUFX16 \F_IO_A_tri[4]  ( .A(F_OUT_A[4]), .OE(n3), .Y(F_IO_A[4]) );
  TBUFX16 \F_IO_A_tri[5]  ( .A(F_OUT_A[5]), .OE(n3), .Y(F_IO_A[5]) );
  TBUFX16 \F_IO_A_tri[3]  ( .A(F_OUT_A[3]), .OE(n3), .Y(F_IO_A[3]) );
  TBUFX16 \F_IO_A_tri[2]  ( .A(F_OUT_A[2]), .OE(n3), .Y(F_IO_A[2]) );
  TBUFX16 \F_IO_A_tri[1]  ( .A(F_OUT_A[1]), .OE(n3), .Y(F_IO_A[1]) );
  TBUFX16 \F_IO_A_tri[0]  ( .A(F_OUT_A[0]), .OE(n3), .Y(F_IO_A[0]) );
  TBUFX16 \F_IO_B_tri[6]  ( .A(F_OUT_B[6]), .OE(1'b1), .Y(F_IO_B[6]) );
  DFFSX1 \cs_A_reg[0]  ( .D(ns_A[0]), .CK(clk), .SN(n116), .Q(cs_A[0]), .QN(
        n261) );
  INVXL U119 ( .A(clk), .Y(n105) );
  CLKINVX6 U136 ( .A(rst), .Y(n116) );
  INVX4 U137 ( .A(n164), .Y(n179) );
  INVX1 U138 ( .A(n222), .Y(n247) );
  NOR2X2 U139 ( .A(n224), .B(ns_A[3]), .Y(n164) );
  INVX1 U140 ( .A(ns_A[0]), .Y(n242) );
  NAND2X1 U141 ( .A(n216), .B(counter_MEM_A[15]), .Y(n214) );
  NAND2X1 U142 ( .A(n193), .B(counter_MEM_A[13]), .Y(n192) );
  NAND2X1 U143 ( .A(n198), .B(counter_MEM_A[11]), .Y(n197) );
  NAND2X1 U144 ( .A(n106), .B(counter_MEM_A[9]), .Y(n232) );
  INVX1 U145 ( .A(n173), .Y(n106) );
  INVX1 U146 ( .A(n202), .Y(n165) );
  INVX2 U147 ( .A(n107), .Y(n115) );
  INVX2 U148 ( .A(n146), .Y(n3) );
  INVX16 U149 ( .A(n114), .Y(F_ALE_A) );
  INVXL U150 ( .A(n233), .Y(n241) );
  NOR2XL U151 ( .A(flag), .B(n173), .Y(n160) );
  AND2X1 U152 ( .A(counter_MEM_A[0]), .B(n164), .Y(n228) );
  NAND2XL U153 ( .A(n188), .B(counter_MEM_A[3]), .Y(n187) );
  INVXL U154 ( .A(n219), .Y(n237) );
  NAND2XL U155 ( .A(counter_MEM_A[1]), .B(counter_MEM_A[0]), .Y(n209) );
  INVXL U156 ( .A(n160), .Y(n168) );
  NAND2XL U157 ( .A(n169), .B(counter_MEM_A[17]), .Y(n166) );
  NAND2XL U158 ( .A(n236), .B(n241), .Y(n222) );
  INVXL U159 ( .A(n213), .Y(n215) );
  OAI2BB1XL U160 ( .A0N(F_ALE_A), .A1N(F_OUT_A[7]), .B0(n108), .Y(F_OUT_B[7])
         );
  AOI21XL U161 ( .A0(F_IO_A[7]), .A1(n115), .B0(F_CLE_A), .Y(n108) );
  OAI211XL U162 ( .A0(n196), .A1(n237), .B0(n195), .C0(n194), .Y(n122) );
  OAI211XL U163 ( .A0(n213), .A1(n208), .B0(n207), .C0(n206), .Y(n121) );
  OAI211XL U164 ( .A0(n201), .A1(n237), .B0(n200), .C0(n199), .Y(n124) );
  OAI211XL U165 ( .A0(n213), .A1(n212), .B0(n211), .C0(n210), .Y(n125) );
  OAI211XL U166 ( .A0(n213), .A1(n205), .B0(n204), .C0(n203), .Y(n119) );
  OAI2BB1XL U167 ( .A0N(F_OUT_A[0]), .A1N(n247), .B0(n246), .Y(n126) );
  OAI211XL U168 ( .A0(n222), .A1(n258), .B0(n221), .C0(n220), .Y(n120) );
  INVXL U169 ( .A(n188), .Y(n184) );
  NAND2XL U170 ( .A(n226), .B(n164), .Y(n227) );
  INVXL U171 ( .A(n217), .Y(n182) );
  INVXL U172 ( .A(n198), .Y(n180) );
  INVXL U173 ( .A(n193), .Y(n175) );
  INVXL U174 ( .A(n216), .Y(n177) );
  OAI21X1 U175 ( .A0(n163), .A1(n159), .B0(n253), .Y(n114) );
  INVX16 U176 ( .A(n171), .Y(N105) );
  OAI32X1 U177 ( .A0(n261), .A1(F_ALE_A), .A2(n168), .B0(n167), .B1(F_ALE_A), 
        .Y(n186) );
  NAND2X1 U178 ( .A(n261), .B(n162), .Y(n171) );
  NAND2XL U179 ( .A(n114), .B(n171), .Y(n107) );
  INVXL U180 ( .A(n263), .Y(n149) );
  INVX12 U181 ( .A(n149), .Y(F_CLE_A) );
  NOR2XL U182 ( .A(cs_A[3]), .B(n171), .Y(n263) );
  NAND2XL U183 ( .A(n247), .B(F_OUT_A[5]), .Y(n206) );
  NAND2XL U184 ( .A(n247), .B(F_OUT_A[7]), .Y(n203) );
  NAND2XL U185 ( .A(n247), .B(F_OUT_A[1]), .Y(n210) );
  NAND2XL U186 ( .A(n247), .B(F_OUT_A[4]), .Y(n194) );
  NAND2XL U187 ( .A(n247), .B(F_OUT_A[3]), .Y(n190) );
  OAI21X1 U188 ( .A0(F_RB_B), .A1(n223), .B0(n158), .Y(ns_A[1]) );
  NOR4XL U190 ( .A(counter_MEM_A[11]), .B(counter_MEM_A[12]), .C(
        counter_MEM_A[13]), .D(counter_MEM_A[14]), .Y(n230) );
  NAND2XL U191 ( .A(cs_A[1]), .B(n250), .Y(n152) );
  NAND2XL U192 ( .A(n217), .B(counter_MEM_A[7]), .Y(n202) );
  NAND2XL U193 ( .A(n226), .B(counter_MEM_A[5]), .Y(n218) );
  INVXL U194 ( .A(n152), .Y(n162) );
  NAND2XL U195 ( .A(n247), .B(F_OUT_A[2]), .Y(n199) );
  NAND2XL U196 ( .A(n219), .B(n225), .Y(n220) );
  OAI211XL U197 ( .A0(n213), .A1(n191), .B0(n190), .C0(n189), .Y(n123) );
  NOR2X1 U198 ( .A(n209), .B(n254), .Y(n188) );
  NOR2X1 U199 ( .A(n187), .B(n249), .Y(n226) );
  NOR2X1 U200 ( .A(n218), .B(n251), .Y(n217) );
  NAND2X1 U201 ( .A(n165), .B(counter_MEM_A[8]), .Y(n173) );
  AND3X1 U202 ( .A(cs_A[2]), .B(cs_A[1]), .C(n253), .Y(n167) );
  NAND2X1 U203 ( .A(n167), .B(cs_A[0]), .Y(n224) );
  NOR2XL U204 ( .A(n261), .B(n152), .Y(n159) );
  NAND2X1 U205 ( .A(cs_A[3]), .B(n159), .Y(n223) );
  NOR2X1 U206 ( .A(n232), .B(n255), .Y(n198) );
  NOR2X1 U207 ( .A(n197), .B(n257), .Y(n193) );
  NOR2X1 U208 ( .A(n192), .B(n256), .Y(n216) );
  NOR2X1 U209 ( .A(n214), .B(n252), .Y(n169) );
  NOR2BX1 U210 ( .AN(F_RB_B), .B(n166), .Y(n156) );
  NOR2XL U211 ( .A(cs_A[1]), .B(n261), .Y(n157) );
  NOR4XL U212 ( .A(n157), .B(cs_A[2]), .C(N105), .D(n253), .Y(n155) );
  NAND2XL U213 ( .A(cs_A[2]), .B(cs_A[1]), .Y(n153) );
  AOI221XL U214 ( .A0(F_RB_A), .A1(n261), .B0(n153), .B1(n261), .C0(cs_A[3]), 
        .Y(n154) );
  OAI222XL U215 ( .A0(n224), .A1(n160), .B0(n223), .B1(n156), .C0(n155), .C1(
        n154), .Y(ns_A[0]) );
  AOI211XL U216 ( .A0(n157), .A1(n253), .B0(N105), .C0(n167), .Y(n158) );
  NOR2XL U217 ( .A(cs_A[1]), .B(n250), .Y(n163) );
  AO21X1 U218 ( .A0(F_RB_B), .A1(n166), .B0(n223), .Y(n161) );
  NAND3XL U219 ( .A(cs_A[3]), .B(n250), .C(n261), .Y(n248) );
  OAI211X1 U220 ( .A0(n168), .A1(n224), .B0(n161), .C0(n248), .Y(ns_A[3]) );
  OAI21XL U221 ( .A0(n163), .A1(n162), .B0(n253), .Y(n146) );
  AO21X1 U222 ( .A0(n197), .A1(n257), .B0(n193), .Y(n191) );
  OAI22XL U223 ( .A0(n164), .A1(n257), .B0(n179), .B1(n191), .Y(n138) );
  AO21X1 U224 ( .A0(n232), .A1(n255), .B0(n198), .Y(n212) );
  OAI22XL U225 ( .A0(n164), .A1(n255), .B0(n179), .B1(n212), .Y(n136) );
  AO21X1 U226 ( .A0(n209), .A1(n254), .B0(n188), .Y(n201) );
  OAI22XL U227 ( .A0(n164), .A1(n254), .B0(n179), .B1(n201), .Y(n128) );
  AO21X1 U228 ( .A0(n187), .A1(n249), .B0(n226), .Y(n196) );
  OAI22XL U229 ( .A0(n164), .A1(n249), .B0(n179), .B1(n196), .Y(n130) );
  OAI21XL U230 ( .A0(n165), .A1(counter_MEM_A[8]), .B0(n173), .Y(n235) );
  OAI2BB2XL U231 ( .B0(n179), .B1(n235), .A0N(n179), .A1N(counter_MEM_A[8]), 
        .Y(n134) );
  OAI21XL U232 ( .A0(n169), .A1(counter_MEM_A[17]), .B0(n166), .Y(n240) );
  OAI2BB2XL U233 ( .B0(n179), .B1(n240), .A0N(n179), .A1N(counter_MEM_A[17]), 
        .Y(n144) );
  INVXL U234 ( .A(n186), .Y(ns_A[2]) );
  AO21X1 U235 ( .A0(n214), .A1(n252), .B0(n169), .Y(n205) );
  OAI22XL U236 ( .A0(n164), .A1(n252), .B0(n179), .B1(n205), .Y(n142) );
  AO21X1 U237 ( .A0(n192), .A1(n256), .B0(n216), .Y(n208) );
  OAI22XL U238 ( .A0(n164), .A1(n256), .B0(n179), .B1(n208), .Y(n140) );
  NAND2XL U239 ( .A(F_ALE_A), .B(F_OUT_A[4]), .Y(n170) );
  OAI211XL U240 ( .A0(n171), .A1(n253), .B0(n111), .C0(n170), .Y(F_OUT_B[4])
         );
  OAI21XL U241 ( .A0(n173), .A1(n179), .B0(counter_MEM_A[9]), .Y(n172) );
  OAI31XL U242 ( .A0(n173), .A1(counter_MEM_A[9]), .A2(n179), .B0(n172), .Y(
        n135) );
  OAI21XL U243 ( .A0(n175), .A1(n179), .B0(counter_MEM_A[13]), .Y(n174) );
  OAI31XL U244 ( .A0(n175), .A1(counter_MEM_A[13]), .A2(n179), .B0(n174), .Y(
        n139) );
  OAI21XL U245 ( .A0(n177), .A1(n179), .B0(counter_MEM_A[15]), .Y(n176) );
  OAI31XL U246 ( .A0(n177), .A1(counter_MEM_A[15]), .A2(n179), .B0(n176), .Y(
        n141) );
  OAI21XL U247 ( .A0(n180), .A1(n179), .B0(counter_MEM_A[11]), .Y(n178) );
  OAI31XL U248 ( .A0(n180), .A1(counter_MEM_A[11]), .A2(n179), .B0(n178), .Y(
        n137) );
  OAI21XL U249 ( .A0(n182), .A1(n179), .B0(counter_MEM_A[7]), .Y(n181) );
  OAI31XL U250 ( .A0(n182), .A1(counter_MEM_A[7]), .A2(n179), .B0(n181), .Y(
        n133) );
  OAI21XL U251 ( .A0(n184), .A1(n179), .B0(counter_MEM_A[3]), .Y(n183) );
  OAI31XL U252 ( .A0(n184), .A1(counter_MEM_A[3]), .A2(n179), .B0(n183), .Y(
        n129) );
  BUFX12 U253 ( .A(F_ALE_A), .Y(F_ALE_B) );
  NOR2X1 U254 ( .A(ns_A[1]), .B(n186), .Y(n233) );
  NAND2X1 U255 ( .A(n233), .B(n242), .Y(n213) );
  NAND3BX1 U256 ( .AN(ns_A[3]), .B(n186), .C(ns_A[1]), .Y(n236) );
  NOR2X1 U257 ( .A(n236), .B(n242), .Y(n219) );
  OAI211XL U258 ( .A0(n188), .A1(counter_MEM_A[3]), .B0(n219), .C0(n187), .Y(
        n189) );
  OAI211XL U259 ( .A0(n193), .A1(counter_MEM_A[13]), .B0(n215), .C0(n192), .Y(
        n195) );
  OAI211XL U260 ( .A0(n198), .A1(counter_MEM_A[11]), .B0(n215), .C0(n197), .Y(
        n200) );
  OAI211XL U261 ( .A0(n217), .A1(counter_MEM_A[7]), .B0(n219), .C0(n202), .Y(
        n204) );
  OAI211XL U262 ( .A0(n226), .A1(counter_MEM_A[5]), .B0(n219), .C0(n218), .Y(
        n207) );
  OAI211XL U263 ( .A0(counter_MEM_A[1]), .A1(counter_MEM_A[0]), .B0(n219), 
        .C0(n209), .Y(n211) );
  OAI211XL U264 ( .A0(n216), .A1(counter_MEM_A[15]), .B0(n215), .C0(n214), .Y(
        n221) );
  AOI21XL U265 ( .A0(n218), .A1(n251), .B0(n217), .Y(n225) );
  INVXL U266 ( .A(n224), .Y(n104) );
  AOI2BB1X1 U267 ( .A0N(counter_MEM_A[0]), .A1N(n164), .B0(n228), .Y(n145) );
  OAI2BB1XL U268 ( .A0N(n224), .A1N(flag), .B0(n223), .Y(n143) );
  AOI2BB2X1 U269 ( .B0(n179), .B1(n251), .A0N(n179), .A1N(n225), .Y(n132) );
  AOI2BB2X1 U270 ( .B0(n260), .B1(n227), .A0N(n260), .A1N(n227), .Y(n131) );
  AOI2BB2X1 U271 ( .B0(counter_MEM_A[1]), .B1(n228), .A0N(counter_MEM_A[1]), 
        .A1N(n228), .Y(n127) );
  NAND3XL U272 ( .A(n249), .B(n260), .C(n251), .Y(n245) );
  NOR4XL U273 ( .A(counter_MEM_A[7]), .B(counter_MEM_A[8]), .C(
        counter_MEM_A[9]), .D(counter_MEM_A[10]), .Y(n231) );
  NOR4XL U274 ( .A(counter_MEM_A[1]), .B(counter_MEM_A[2]), .C(
        counter_MEM_A[15]), .D(counter_MEM_A[17]), .Y(n229) );
  NAND4XL U275 ( .A(n231), .B(n230), .C(n229), .D(n252), .Y(n244) );
  OAI211XL U276 ( .A0(n106), .A1(counter_MEM_A[9]), .B0(n233), .C0(n232), .Y(
        n234) );
  OAI21XL U277 ( .A0(n236), .A1(n235), .B0(n234), .Y(n238) );
  AOI2BB2X1 U278 ( .B0(n242), .B1(n238), .A0N(counter_MEM_A[0]), .A1N(n237), 
        .Y(n239) );
  OAI31XL U279 ( .A0(n242), .A1(n241), .A2(n240), .B0(n239), .Y(n243) );
  OAI31XL U280 ( .A0(counter_MEM_A[3]), .A1(n245), .A2(n244), .B0(n243), .Y(
        n246) );
  OAI21XL U282 ( .A0(cs_A[1]), .A1(n248), .B0(n259), .Y(n117) );
  INVX12 U189 ( .A(n259), .Y(done) );
endmodule

