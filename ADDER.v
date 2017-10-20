module ADDER(dataout1,dataout2,carryout,resultofadd,carryin);
input [31:0] dataout1;
input [31:0] dataout2;
input carryin;
output [31:0] resultofadd;
output carryout;

//initial begin
//$monitor("dataout1=%d dataout2=%d resultofadd=%d",dataout1,dataout2,resultofadd);
//end

OneBitAdder adder0(dataout1[0],dataout2[0],carryout0,resultofadd[0],carryin);
OneBitAdder adder1(dataout1[1],dataout2[1],carryout1,resultofadd[1],carryout0);
OneBitAdder adder2(dataout1[2],dataout2[2],carryout2,resultofadd[2],carryout1);
OneBitAdder adder3(dataout1[3],dataout2[3],carryout3,resultofadd[3],carryout2);
OneBitAdder adder4(dataout1[4],dataout2[4],carryout4,resultofadd[4],carryout3);
OneBitAdder adder5(dataout1[5],dataout2[5],carryout5,resultofadd[5],carryout4);
OneBitAdder adder6(dataout1[6],dataout2[6],carryout6,resultofadd[6],carryout5);
OneBitAdder adder7(dataout1[7],dataout2[7],carryout7,resultofadd[7],carryout6);
OneBitAdder adder8(dataout1[8],dataout2[8],carryout8,resultofadd[8],carryout7);
OneBitAdder adder9(dataout1[9],dataout2[9],carryout9,resultofadd[9],carryout8);
OneBitAdder adder10(dataout1[10],dataout2[10],carryout10,resultofadd[10],carryout9);
OneBitAdder adder11(dataout1[11],dataout2[11],carryout11,resultofadd[11],carryout10);
OneBitAdder adder12(dataout1[12],dataout2[12],carryout12,resultofadd[12],carryout11);
OneBitAdder adder13(dataout1[13],dataout2[13],carryout13,resultofadd[13],carryout12);
OneBitAdder adder14(dataout1[14],dataout2[14],carryout14,resultofadd[14],carryout13);
OneBitAdder adder15(dataout1[15],dataout2[15],carryout15,resultofadd[15],carryout14);
OneBitAdder adder16(dataout1[16],dataout2[16],carryout16,resultofadd[16],carryout15);
OneBitAdder adder17(dataout1[17],dataout2[17],carryout17,resultofadd[17],carryout16);
OneBitAdder adder18(dataout1[18],dataout2[18],carryout18,resultofadd[18],carryout17);
OneBitAdder adder19(dataout1[19],dataout2[19],carryout19,resultofadd[19],carryout18);
OneBitAdder adder20(dataout1[20],dataout2[20],carryout20,resultofadd[20],carryout19);
OneBitAdder adder21(dataout1[21],dataout2[21],carryout21,resultofadd[21],carryout20);
OneBitAdder adder22(dataout1[22],dataout2[22],carryout22,resultofadd[22],carryout21);
OneBitAdder adder23(dataout1[23],dataout2[23],carryout23,resultofadd[23],carryout22);
OneBitAdder adder24(dataout1[24],dataout2[24],carryout24,resultofadd[24],carryout23);
OneBitAdder adder25(dataout1[25],dataout2[25],carryout25,resultofadd[25],carryout24);
OneBitAdder adder26(dataout1[26],dataout2[26],carryout26,resultofadd[26],carryout25);
OneBitAdder adder27(dataout1[27],dataout2[27],carryout27,resultofadd[27],carryout26);
OneBitAdder adder28(dataout1[28],dataout2[28],carryout28,resultofadd[28],carryout27);
OneBitAdder adder29(dataout1[29],dataout2[29],carryout29,resultofadd[29],carryout28);
OneBitAdder adder30(dataout1[30],dataout2[30],carryout30,resultofadd[30],carryout29);
OneBitAdder adder31(dataout1[31],dataout2[31],carryout,resultofadd[31],carryout30);

endmodule