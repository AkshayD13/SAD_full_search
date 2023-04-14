module pg_32(A, B, pg31, pg30, pg29, pg28, pg27, pg26, pg25, pg24, pg23, pg22, pg21, pg20, pg19, pg18, pg17, pg16, pg15, pg14, pg13, pg12, pg11, pg10, pg9, pg8, pg7, pg6, pg5, pg4, pg3, pg2, pg1, pg0);
    input [31:0] A, B;
    output [1:0] pg31, pg30, pg29, pg28, pg27, pg26, pg25, pg24, pg23, pg22, pg21, pg20, pg19, pg18, pg17, pg16, pg15, pg14, pg13, pg12, pg11, pg10, pg9, pg8, pg7, pg6, pg5, pg4, pg3, pg2, pg1, pg0;

integer i;
wire [31:0]andout,xorout;
assign andout[0]=A[0]&B[0];
assign andout[1]=A[1]&B[1];
assign andout[2]=A[2]&B[2];
assign andout[3]=A[3]&B[3];
assign andout[4]=A[4]&B[4];
assign andout[5]=A[5]&B[5];
assign andout[6]=A[6]&B[6];
assign andout[7]=A[7]&B[7];
assign andout[8]=A[8]&B[8];
assign andout[9]=A[9]&B[9];
assign andout[10]=A[10]&B[10];
assign andout[11]=A[11]&B[11];
assign andout[12]=A[12]&B[12];
assign andout[13]=A[13]&B[13];
assign andout[14]=A[14]&B[14];
assign andout[15]=A[15]&B[15];
assign andout[16]=A[16]&B[16];
assign andout[17]=A[17]&B[17];
assign andout[18]=A[18]&B[18];
assign andout[19]=A[19]&B[19];
assign andout[20]=A[20]&B[20];
assign andout[21]=A[21]&B[21];
assign andout[22]=A[22]&B[22];
assign andout[23]=A[23]&B[23];
assign andout[24]=A[24]&B[24];
assign andout[25]=A[25]&B[25];
assign andout[26]=A[26]&B[26];
assign andout[27]=A[27]&B[27];
assign andout[28]=A[28]&B[28];
assign andout[29]=A[29]&B[29];
assign andout[30]=A[30]&B[30];
assign andout[31]=A[31]&B[31];

assign xorout[0]=A[0]^B[0];
assign xorout[1]=A[1]^B[1];
assign xorout[2]=A[2]^B[2];
assign xorout[3]=A[3]^B[3];
assign xorout[4]=A[4]^B[4];
assign xorout[5]=A[5]^B[5];
assign xorout[6]=A[6]^B[6];
assign xorout[7]=A[7]^B[7];
assign xorout[8]=A[8]^B[8];
assign xorout[9]=A[9]^B[9];
assign xorout[10]=A[10]^B[10];
assign xorout[11]=A[11]^B[11];
assign xorout[12]=A[12]^B[12];
assign xorout[13]=A[13]^B[13];
assign xorout[14]=A[14]^B[14];
assign xorout[15]=A[15]^B[15];
assign xorout[16]=A[16]^B[16];
assign xorout[17]=A[17]^B[17];
assign xorout[18]=A[18]^B[18];
assign xorout[19]=A[19]^B[19];
assign xorout[20]=A[20]^B[20];
assign xorout[21]=A[21]^B[21];
assign xorout[22]=A[22]^B[22];
assign xorout[23]=A[23]^B[23];
assign xorout[24]=A[24]^B[24];
assign xorout[25]=A[25]^B[25];
assign xorout[26]=A[26]^B[26];
assign xorout[27]=A[27]^B[27];
assign xorout[28]=A[28]^B[28];
assign xorout[29]=A[29]^B[29];
assign xorout[30]=A[30]^B[30];
assign xorout[31]=A[31]^B[31];
assign pg0 = {xorout[0], andout[0]};
assign pg1 = {xorout[1], andout[1]};
assign pg2 = {xorout[2], andout[2]};
assign pg3 = {xorout[3], andout[3]};
assign pg4 = {xorout[4], andout[4]};
assign pg5 = {xorout[5], andout[5]};
assign pg6 = {xorout[6], andout[6]};
assign pg7 = {xorout[7], andout[7]};
assign pg8 = {xorout[8], andout[8]};
assign pg9 = {xorout[9], andout[9]};
assign pg10 = {xorout[10], andout[10]};
assign pg11 = {xorout[11], andout[11]};
assign pg12 = {xorout[12], andout[12]};
assign pg13 = {xorout[13], andout[13]};
assign pg14 = {xorout[14], andout[14]};
assign pg15 = {xorout[15], andout[15]};
assign pg16 = {xorout[16], andout[16]};
assign pg17 = {xorout[17], andout[17]};
assign pg18 = {xorout[18], andout[18]};
assign pg19 = {xorout[19], andout[19]};
assign pg20 = {xorout[20], andout[20]};
assign pg21 = {xorout[21], andout[21]};
assign pg22 = {xorout[22], andout[22]};
assign pg23 = {xorout[23], andout[23]};
assign pg24 = {xorout[24], andout[24]};
assign pg25 = {xorout[25], andout[25]};
assign pg26 = {xorout[26], andout[26]};
assign pg27 = {xorout[27], andout[27]};
assign pg28 = {xorout[28], andout[28]};
assign pg29 = {xorout[29], andout[29]};
assign pg30 = {xorout[30], andout[30]};
assign pg31 = {xorout[31], andout[31]};

endmodule