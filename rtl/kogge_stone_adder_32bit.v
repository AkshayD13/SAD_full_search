module KOGGESTONE32BIT(input [31:0] A, input [31:0] B, input Cin, output[31:0] S, output Cout);

 
  wire [1:0] r1c32, r1c31, r1c30, r1c29, r1c28, r1c27, r1c26, r1c25, r1c24;
  wire [1:0] r1c23, r1c22, r1c21, r1c20, r1c19, r1c18, r1c17;
  wire [1:0] r1c16, r1c15, r1c14, r1c13, r1c12, r1c11, r1c10, r1c9;
  wire [1:0] r1c8, r1c7, r1c6, r1c5, r1c4, r1c3, r1c2, r1c1;
    
  pg_32 pg32_1(.A(A), .B(B), .pg31(r1c32),.pg30(r1c31),.pg29(r1c30),
        .pg28(r1c29),.pg27(r1c28),.pg26(r1c27),.pg25(r1c26),.pg24(r1c25),
        .pg23(r1c24),.pg22(r1c23),.pg21(r1c22),.pg20(r1c21),.pg19(r1c20),
        .pg18(r1c19),.pg17(r1c18),.pg16(r1c17),.pg15(r1c16),.pg14(r1c15),.pg13(r1c14),
        .pg12(r1c13),.pg11(r1c12),.pg10(r1c11),.pg9(r1c10),.pg8(r1c9),
        .pg7(r1c8),.pg6(r1c7),.pg5(r1c6),.pg4(r1c5),.pg3(r1c4),
        .pg2(r1c3),.pg1(r1c2),.pg0(r1c1));


/* FIRST ROW */
    wire r2c1;  
    wire [1:0]  r2c2, r2c3,  r2c4,  r2c5,  r2c6,  r2c7,  r2c8,  r2c9,  r2c10,  r2c11,  r2c12,  r2c13,  r2c14,  r2c15,
                r2c16, r2c17, r2c18, r2c19, r2c20, r2c21, r2c22, r2c23, r2c24, r2c25, r2c26, r2c27, r2c28, r2c29, r2c30,
                r2c31;
    GrayCell blockr1c1(.pg(r1c1), .pg0(Cin), .pgo(r2c1));

    BlackCell blockr1c2(.pg(r1c2), .pg0(r1c1), .pgo(r2c2));
    BlackCell blockr1c3(.pg(r1c3), .pg0(r1c2), .pgo(r2c3));
    BlackCell blockr1c4(.pg(r1c4), .pg0(r1c3), .pgo(r2c4));
    BlackCell blockr1c5(.pg(r1c5), .pg0(r1c4), .pgo(r2c5));
    BlackCell blockr1c6(.pg(r1c6), .pg0(r1c5), .pgo(r2c6));
    BlackCell blockr1c7(.pg(r1c7), .pg0(r1c6), .pgo(r2c7));
    BlackCell blockr1c8(.pg(r1c8), .pg0(r1c7), .pgo(r2c8));
    BlackCell blockr1c9(.pg(r1c9), .pg0(r1c8), .pgo(r2c9));
    BlackCell blockr1c10(.pg(r1c10), .pg0(r1c9), .pgo(r2c10));
    BlackCell blockr1c11(.pg(r1c11), .pg0(r1c10), .pgo(r2c11));
    BlackCell blockr1c12(.pg(r1c12), .pg0(r1c11), .pgo(r2c12));
    BlackCell blockr1c13(.pg(r1c13), .pg0(r1c12), .pgo(r2c13));
    BlackCell blockr1c14(.pg(r1c14), .pg0(r1c13), .pgo(r2c14));
    BlackCell blockr1c15(.pg(r1c15), .pg0(r1c14), .pgo(r2c15));     
    BlackCell blockr1c16(.pg(r1c16), .pg0(r1c15), .pgo(r2c16));
    BlackCell blockr1c17(.pg(r1c17), .pg0(r1c16), .pgo(r2c17));
    BlackCell blockr1c18(.pg(r1c18), .pg0(r1c17), .pgo(r2c18));
    BlackCell blockr1c19(.pg(r1c19), .pg0(r1c18), .pgo(r2c19));
    BlackCell blockr1c20(.pg(r1c20), .pg0(r1c19), .pgo(r2c20));
    BlackCell blockr1c21(.pg(r1c21), .pg0(r1c20), .pgo(r2c21));
    BlackCell blockr1c22(.pg(r1c22), .pg0(r1c21), .pgo(r2c22));
    BlackCell blockr1c23(.pg(r1c23), .pg0(r1c22), .pgo(r2c23));
    BlackCell blockr1c24(.pg(r1c24), .pg0(r1c23), .pgo(r2c24));
    BlackCell blockr1c25(.pg(r1c25), .pg0(r1c24), .pgo(r2c25));
    BlackCell blockr1c26(.pg(r1c26), .pg0(r1c25), .pgo(r2c26));
    BlackCell blockr1c27(.pg(r1c27), .pg0(r1c26), .pgo(r2c27));
    BlackCell blockr1c28(.pg(r1c28), .pg0(r1c27), .pgo(r2c28));
    BlackCell blockr1c29(.pg(r1c29), .pg0(r1c28), .pgo(r2c29));
    BlackCell blockr1c30(.pg(r1c30), .pg0(r1c29), .pgo(r2c30));
    BlackCell blockr1c31(.pg(r1c31), .pg0(r1c30), .pgo(r2c31));

/* SECOND ROW */
    wire r3c2, r3c3;
    wire [1:0] r3c4, r3c5, r3c6, r3c7, r3c8, r3c9, r3c10, r3c11, r3c12, r3c13, r3c14, r3c15, r3c16, r3c17,
               r3c18, r3c19, r3c20, r3c21, r3c22, r3c23, r3c24, r3c25, r3c26, r3c27, r3c28, r3c29, r3c30,
                r3c31;
    GrayCell blockr2c2(.pg(r2c2), .pg0(Cin), .pgo(r3c2));
    GrayCell blockr2c3(.pg(r2c3), .pg0(r2c1), .pgo(r3c3));

    BlackCell blockr2c4(.pg(r2c4), .pg0(r2c2), .pgo(r3c4));
    BlackCell blockr2c5(.pg(r2c5), .pg0(r2c3), .pgo(r3c5));
    BlackCell blockr2c6(.pg(r2c6), .pg0(r2c4), .pgo(r3c6));
    BlackCell blockr2c7(.pg(r2c7), .pg0(r2c5), .pgo(r3c7));
    BlackCell blockr2c8(.pg(r2c8), .pg0(r2c6), .pgo(r3c8));
    BlackCell blockr2c9(.pg(r2c9), .pg0(r2c7), .pgo(r3c9));
    BlackCell blockr2c10(.pg(r2c10), .pg0(r2c8), .pgo(r3c10));
    BlackCell blockr2c11(.pg(r2c11), .pg0(r2c9), .pgo(r3c11));
    BlackCell blockr2c12(.pg(r2c12), .pg0(r2c10), .pgo(r3c12));
    BlackCell blockr2c13(.pg(r2c13), .pg0(r2c11), .pgo(r3c13));
    BlackCell blockr2c14(.pg(r2c14), .pg0(r2c12), .pgo(r3c14));
    BlackCell blockr2c15(.pg(r2c15), .pg0(r2c13), .pgo(r3c15));
    BlackCell blockr2c16(.pg(r2c16), .pg0(r2c14), .pgo(r3c16));
    BlackCell blockr2c17(.pg(r2c17), .pg0(r2c15), .pgo(r3c17));
    BlackCell blockr2c18(.pg(r2c18), .pg0(r2c16), .pgo(r3c18));
    BlackCell blockr2c19(.pg(r2c19), .pg0(r2c17), .pgo(r3c19));
    BlackCell blockr2c20(.pg(r2c20), .pg0(r2c18), .pgo(r3c20));
    BlackCell blockr2c21(.pg(r2c21), .pg0(r2c19), .pgo(r3c21));
    BlackCell blockr2c22(.pg(r2c22), .pg0(r2c20), .pgo(r3c22));
    BlackCell blockr2c23(.pg(r2c23), .pg0(r2c21), .pgo(r3c23));
    BlackCell blockr2c24(.pg(r2c24), .pg0(r2c22), .pgo(r3c24));
    BlackCell blockr2c25(.pg(r2c25), .pg0(r2c23), .pgo(r3c25));
    BlackCell blockr2c26(.pg(r2c26), .pg0(r2c24), .pgo(r3c26));
    BlackCell blockr2c27(.pg(r2c27), .pg0(r2c25), .pgo(r3c27));
    BlackCell blockr2c28(.pg(r2c28), .pg0(r2c26), .pgo(r3c28));
    BlackCell blockr2c29(.pg(r2c29), .pg0(r2c27), .pgo(r3c29));
    BlackCell blockr2c30(.pg(r2c30), .pg0(r2c28), .pgo(r3c30));
    BlackCell blockr2c31(.pg(r2c31), .pg0(r2c29), .pgo(r3c31));

/* THIRD ROW */
    wire r4c4;
    wire r4c5;
    wire r4c6;
    wire r4c7;

    wire  [1:0] r4c8, r4c9, r4c10, r4c11, r4c12,  r4c13, r4c14, r4c15,r4c16, r4c17, r4c18, r4c19, r4c20,
                r4c21, r4c22, r4c23, r4c24, r4c25, r4c26, r4c27, r4c28, r4c29, r4c30,
                r4c31;

    GrayCell blockr3c4(.pg(r3c4), .pg0(Cin), .pgo(r4c4));
    GrayCell blockr3c5(.pg(r3c5), .pg0(r2c1), .pgo(r4c5));
    GrayCell blockr3c6(.pg(r3c6), .pg0(r3c2), .pgo(r4c6));
    GrayCell blockr3c7(.pg(r3c7), .pg0(r3c3), .pgo(r4c7));

    BlackCell blockr3c8(.pg(r3c8), .pg0(r3c4), .pgo(r4c8));
    BlackCell blockr3c9(.pg(r3c9), .pg0(r3c5), .pgo(r4c9));
    BlackCell blockr3c10(.pg(r3c10), .pg0(r3c6), .pgo(r4c10));
    BlackCell blockr3c11(.pg(r3c11), .pg0(r3c7), .pgo(r4c11));
    BlackCell blockr3c12(.pg(r3c12), .pg0(r3c8), .pgo(r4c12));
    BlackCell blockr3c13(.pg(r3c13), .pg0(r3c9), .pgo(r4c13));
    BlackCell blockr3c14(.pg(r3c14), .pg0(r3c10), .pgo(r4c14));
    BlackCell blockr3c15(.pg(r3c15), .pg0(r3c11), .pgo(r4c15));
    BlackCell blockr3c16(.pg(r3c16), .pg0(r3c12), .pgo(r4c16));
    BlackCell blockr3c17(.pg(r3c17), .pg0(r3c13), .pgo(r4c17));
    BlackCell blockr3c18(.pg(r3c18), .pg0(r3c14), .pgo(r4c18));
    BlackCell blockr3c19(.pg(r3c19), .pg0(r3c15), .pgo(r4c19));
    BlackCell blockr3c20(.pg(r3c20), .pg0(r3c16), .pgo(r4c20));
    BlackCell blockr3c21(.pg(r3c21), .pg0(r3c17), .pgo(r4c21));
    BlackCell blockr3c22(.pg(r3c22), .pg0(r3c18), .pgo(r4c22));
    BlackCell blockr3c23(.pg(r3c23), .pg0(r3c19), .pgo(r4c23));
    BlackCell blockr3c24(.pg(r3c24), .pg0(r3c20), .pgo(r4c24));
    BlackCell blockr3c25(.pg(r3c25), .pg0(r3c21), .pgo(r4c25));
    BlackCell blockr3c26(.pg(r3c26), .pg0(r3c22), .pgo(r4c26));
    BlackCell blockr3c27(.pg(r3c27), .pg0(r3c23), .pgo(r4c27));
    BlackCell blockr3c28(.pg(r3c28), .pg0(r3c24), .pgo(r4c28));
    BlackCell blockr3c29(.pg(r3c29), .pg0(r3c25), .pgo(r4c29));
    BlackCell blockr3c30(.pg(r3c30), .pg0(r3c26), .pgo(r4c30));
    BlackCell blockr3c31(.pg(r3c31), .pg0(r3c27), .pgo(r4c31));    




/* FOURTH ROW */
    wire r5c8;
    wire r5c9;
    wire r5c10;
    wire r5c11;
    wire r5c12;
    wire r5c13;
    wire r5c14;
    wire r5c15;
    wire [1:0] r5c16, r5c17, r5c18, r5c19, r5c20, r5c21, r5c22, r5c23, r5c24, r5c25, r5c26, r5c27, r5c28, r5c29, r5c30,
                r5c31;

    GrayCell blockr4c8(.pg(r4c8), .pg0(Cin), .pgo(r5c8));
    GrayCell blockr4c9(.pg(r4c9), .pg0(r2c1), .pgo(r5c9));

    GrayCell blockr4c10(.pg(r4c10), .pg0(r3c2), .pgo(r5c10));
    GrayCell blockr4c11(.pg(r4c11), .pg0(r3c3), .pgo(r5c11));
    GrayCell blockr4c12(.pg(r4c12), .pg0(r4c4), .pgo(r5c12));
    GrayCell blockr4c13(.pg(r4c13), .pg0(r4c5), .pgo(r5c13));
    GrayCell blockr4c14(.pg(r4c14), .pg0(r4c6), .pgo(r5c14));
    GrayCell blockr4c15(.pg(r4c15), .pg0(r4c7), .pgo(r5c15));

    BlackCell blockr4c16(.pg(r4c16), .pg0(r4c8), .pgo(r5c16));
    BlackCell blockr4c17(.pg(r4c17), .pg0(r4c9), .pgo(r5c17));
    BlackCell blockr4c18(.pg(r4c18), .pg0(r4c10), .pgo(r5c18));
    BlackCell blockr4c19(.pg(r4c19), .pg0(r4c11), .pgo(r5c19));
    BlackCell blockr4c20(.pg(r4c20), .pg0(r4c12), .pgo(r5c20));
    BlackCell blockr4c21(.pg(r4c21), .pg0(r4c13), .pgo(r5c21));
    BlackCell blockr4c22(.pg(r4c22), .pg0(r4c14), .pgo(r5c22));
    BlackCell blockr4c23(.pg(r4c23), .pg0(r4c15), .pgo(r5c23));
    BlackCell blockr4c24(.pg(r4c24), .pg0(r4c16), .pgo(r5c24));
    BlackCell blockr4c25(.pg(r4c25), .pg0(r4c17), .pgo(r5c25));
    BlackCell blockr4c26(.pg(r4c26), .pg0(r4c18), .pgo(r5c26));
    BlackCell blockr4c27(.pg(r4c27), .pg0(r4c19), .pgo(r5c27));
    BlackCell blockr4c28(.pg(r4c28), .pg0(r4c20), .pgo(r5c28));
    BlackCell blockr4c29(.pg(r4c29), .pg0(r4c21), .pgo(r5c29));
    BlackCell blockr4c30(.pg(r4c30), .pg0(r4c22), .pgo(r5c30));
    BlackCell blockr4c31(.pg(r4c31), .pg0(r4c23), .pgo(r5c31));


/* FIFTH ROW */

    wire r6c16;
    wire r6c17;
    wire r6c18;
    wire r6c19;
    wire r6c20;
    wire r6c21;
    wire r6c22;
    wire r6c23;
    wire r6c24;  
    wire r6c25; 
    wire r6c26;
    wire r6c27;
    wire r6c28;
    wire r6c29;
    wire r6c30;  
    wire r6c31;
     

    GrayCell blockr5c16(.pg(r5c16), .pg0(Cin), .pgo(r6c16));
    GrayCell blockr5c17(.pg(r5c17), .pg0(r2c1), .pgo(r6c17));
    GrayCell blockr5c18(.pg(r5c18), .pg0(r3c2), .pgo(r6c18));
    GrayCell blockr5c19(.pg(r5c19), .pg0(r3c3), .pgo(r6c19));
    GrayCell blockr5c20(.pg(r5c20), .pg0(r4c4), .pgo(r6c20));
    GrayCell blockr5c21(.pg(r5c21), .pg0(r4c5), .pgo(r6c21));
    GrayCell blockr5c22(.pg(r5c22), .pg0(r4c6), .pgo(r6c22));
    GrayCell blockr5c23(.pg(r5c23), .pg0(r4c7), .pgo(r6c23)); 
    GrayCell blockr5c24(.pg(r5c24), .pg0(r5c8), .pgo(r6c24));
    GrayCell blockr5c25(.pg(r5c25), .pg0(r5c9), .pgo(r6c25));
    GrayCell blockr5c26(.pg(r5c26), .pg0(r5c10), .pgo(r6c26));
    GrayCell blockr5c27(.pg(r5c27), .pg0(r5c11), .pgo(r6c27));
    GrayCell blockr5c28(.pg(r5c28), .pg0(r5c12), .pgo(r6c28));
    GrayCell blockr5c29(.pg(r5c29), .pg0(r5c13), .pgo(r6c29));
    GrayCell blockr5c30(.pg(r5c30), .pg0(r5c14), .pgo(r6c30));
    GrayCell blockr5c31(.pg(r5c31), .pg0(r5c15), .pgo(r6c31)); 


/* finally */

    xor_32 xor32_1(.A({r6c31, r6c30, r6c29, r6c28, r6c27, r6c26, r6c25, r6c24, r6c23, r6c22, r6c21,
                      r6c20, r6c19, r6c18, r6c17,r6c16, r5c15, r5c14, r5c13, r5c12, r5c11, r5c10,
                      r5c9, r5c8, r4c7, r4c6, r4c5, r4c4, r3c3, r3c2, r2c1, Cin}),
                  .B({r1c32[1],r1c31[1],r1c30[1], r1c29[1],r1c28[1],r1c27[1],
                      r1c26[1],r1c25[1],r1c24[1], r1c23[1],r1c22[1],r1c21[1],
                      r1c20[1],r1c19[1],r1c18[1], r1c17[1],r1c16[1],r1c15[1],
                      r1c14[1], r1c13[1],r1c12[1],r1c11[1],r1c10[1],r1c9[1],r1c8[1],r1c7[1],
                      r1c6[1], r1c5[1],r1c4[1],r1c3[1],r1c2[1],r1c1[1]}),
                  .S(S));


    GrayCell genCout(.pg(r1c32), .pg0(r6c31), .pgo(Cout));
  
endmodule