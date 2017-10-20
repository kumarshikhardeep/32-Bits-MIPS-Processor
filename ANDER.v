module ANDER(resultofand,dataout1,dataout2);
input [31:0] dataout1;
input [31:0] dataout2;
output [31:0] resultofand;
//initial begin
//$monitor("dataout1=%d dataout2=%d resultofand=%d",dataout1,dataout2,resultofand);
//end

and and0(resultofand[0],dataout1[0], dataout2[0]);
and and1(resultofand[1],dataout1[1], dataout2[1]);
and and2(resultofand[2],dataout1[2], dataout2[2]);
and and3(resultofand[3],dataout1[3], dataout2[3]);
and and4(resultofand[4],dataout1[4], dataout2[4]);
and and5(resultofand[5],dataout1[5], dataout2[5]);
and and6(resultofand[6],dataout1[6], dataout2[6]);
and and7(resultofand[7],dataout1[7], dataout2[7]);
and and8(resultofand[8],dataout1[8], dataout2[8]);
and and9(resultofand[9],dataout1[9], dataout2[9]);
and and10(resultofand[10],dataout1[10], dataout2[10]);
and and11(resultofand[11],dataout1[11], dataout2[11]);
and and12(resultofand[12],dataout1[12], dataout2[12]);
and and13(resultofand[13],dataout1[13], dataout2[13]);
and and14(resultofand[14],dataout1[14], dataout2[14]);
and and15(resultofand[15],dataout1[15], dataout2[15]);
and and16(resultofand[16],dataout1[16], dataout2[16]);
and and17(resultofand[17],dataout1[17], dataout2[17]);
and and18(resultofand[18],dataout1[18], dataout2[18]);
and and19(resultofand[19],dataout1[19], dataout2[19]);
and and20(resultofand[20],dataout1[20], dataout2[20]);
and and21(resultofand[21],dataout1[21], dataout2[21]);
and and22(resultofand[22],dataout1[22], dataout2[22]);
and and23(resultofand[23],dataout1[23], dataout2[23]);
and and24(resultofand[24],dataout1[24], dataout2[24]);
and and25(resultofand[25],dataout1[25], dataout2[25]);
and and26(resultofand[26],dataout1[26], dataout2[26]);
and and27(resultofand[27],dataout1[27], dataout2[27]);
and and28(resultofand[28],dataout1[28], dataout2[28]);
and and29(resultofand[29],dataout1[29], dataout2[29]);
and and30(resultofand[30],dataout1[30], dataout2[30]);
and and31(resultofand[31],dataout1[31], dataout2[31]);

endmodule