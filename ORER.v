module ORER(resultofor,dataout1,dataout2);
input [31:0] dataout1;
input [31:0] dataout2;
output [31:0] resultofor;
//initial begin
//$monitor("dataout1=%d dataout2=%d resultofor=%d",dataout1,dataout2,resultofor);
//end
or or0(resultofor[0],dataout1[0], dataout2[0]);
or or1(resultofor[1],dataout1[1], dataout2[1]);
or or2(resultofor[2],dataout1[2], dataout2[2]);
or or3(resultofor[3],dataout1[3], dataout2[3]);
or or4(resultofor[4],dataout1[4], dataout2[4]);
or or5(resultofor[5],dataout1[5], dataout2[5]);
or or6(resultofor[6],dataout1[6], dataout2[6]);
or or7(resultofor[7],dataout1[7], dataout2[7]);
or or8(resultofor[8],dataout1[8], dataout2[8]);
or or9(resultofor[9],dataout1[9], dataout2[9]);
or or10(resultofor[10],dataout1[10], dataout2[10]);
or or11(resultofor[11],dataout1[11], dataout2[11]);
or or12(resultofor[12],dataout1[12], dataout2[12]);
or or13(resultofor[13],dataout1[13], dataout2[13]);
or or14(resultofor[14],dataout1[14], dataout2[14]);
or or15(resultofor[15],dataout1[15], dataout2[15]);
or or16(resultofor[16],dataout1[16], dataout2[16]);
or or17(resultofor[17],dataout1[17], dataout2[17]);
or or18(resultofor[18],dataout1[18], dataout2[18]);
or or19(resultofor[19],dataout1[19], dataout2[19]);
or or20(resultofor[20],dataout1[20], dataout2[20]);
or or21(resultofor[21],dataout1[21], dataout2[21]);
or or22(resultofor[22],dataout1[22], dataout2[22]);
or or23(resultofor[23],dataout1[23], dataout2[23]);
or or24(resultofor[24],dataout1[24], dataout2[24]);
or or25(resultofor[25],dataout1[25], dataout2[25]);
or or26(resultofor[26],dataout1[26], dataout2[26]);
or or27(resultofor[27],dataout1[27], dataout2[27]);
or or28(resultofor[28],dataout1[28], dataout2[28]);
or or29(resultofor[29],dataout1[29], dataout2[29]);
or or30(resultofor[30],dataout1[30], dataout2[30]);
or or31(resultofor[31],dataout1[31], dataout2[31]);

endmodule