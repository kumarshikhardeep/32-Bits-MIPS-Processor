module SUBTRACTOR (dataout1,dataout2,carryout,resultofsub,carryin);
input [31:0] dataout1;
input [31:0] dataout2;
input carryin;
output carryout;
output [31:0] resultofsub;
//initial begin
//$monitor("dataout1=%d dataout2=%d temp=%d res=%d",dataout1,dataout2,temp,resultofsub);
//end
wire [31:0] temp;

//for A-B:
//Add A with 2's compliment of B
//for calculating 2's compliment of B, calculate 1's compliment of B and add 1 to it
//for calculating 1's compliment of B; XOR each bit of B with 1
//finally Add A,B,1 (give carryin as 1)

xor xor0(temp[0], dataout2[0], 1'b1);
xor xor1(temp[1], dataout2[1], 1'b1);
xor xor2(temp[2], dataout2[2], 1'b1);
xor xor3(temp[3], dataout2[3], 1'b1);
xor xor4(temp[4], dataout2[4], 1'b1);
xor xor5(temp[5], dataout2[5], 1'b1);
xor xor6(temp[6], dataout2[6], 1'b1);
xor xor7(temp[7], dataout2[7], 1'b1);
xor xor8(temp[8], dataout2[8], 1'b1);
xor xor9(temp[9], dataout2[9], 1'b1);
xor xor10(temp[10], dataout2[10], 1'b1);
xor xor11(temp[11], dataout2[11], 1'b1);
xor xor12(temp[12], dataout2[12], 1'b1);
xor xor13(temp[13], dataout2[13], 1'b1);
xor xor14(temp[14], dataout2[14], 1'b1);
xor xor15(temp[15], dataout2[15], 1'b1);
xor xor16(temp[16], dataout2[16], 1'b1);
xor xor17(temp[17], dataout2[17], 1'b1);
xor xor18(temp[18], dataout2[18], 1'b1);
xor xor19(temp[19], dataout2[19], 1'b1);
xor xor20(temp[20], dataout2[20], 1'b1);
xor xor21(temp[21], dataout2[21], 1'b1);
xor xor22(temp[22], dataout2[22], 1'b1);
xor xor23(temp[23], dataout2[23], 1'b1);
xor xor24(temp[24], dataout2[24], 1'b1);
xor xor25(temp[25], dataout2[25], 1'b1);
xor xor26(temp[26], dataout2[26], 1'b1);
xor xor27(temp[27], dataout2[27], 1'b1);
xor xor28(temp[28], dataout2[28], 1'b1);
xor xor29(temp[29], dataout2[29], 1'b1);
xor xor30(temp[30], dataout2[30], 1'b1);
xor xor31(temp[31], dataout2[31], 1'b1);

ADDER adder333(dataout1,temp,carryout,resultofsub,1'b1);

endmodule