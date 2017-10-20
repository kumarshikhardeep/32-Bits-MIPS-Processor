//inrw gets 1 if instruction is any write instruction
//inRs,inRt,inRd,inopcode gets values from decoder
//inaluresult gets the result from alu
//inmemout gets value from Memory Block
module RegisterBlock(clk,inrw,inRs,inRt,inRd,inaluresult,dataout1,dataout2,inmemout,inopcode);
input inrw,clk;
input [4:0] inRs;
input [4:0] inRt;
input [4:0] inRd;
input [31:0] inaluresult;
input [31:0] inmemout;
input [5:0] inopcode;
output [31:0] dataout1;
output [31:0] dataout2;
reg [31:0] dataout1;
reg [31:0] dataout2;

reg [31:0] regdata [31:0];
initial begin
    regdata[0]=32'b00000000000000000000000000000011;
    regdata[1]=32'b00000000000000000000000000000000;
    regdata[2]=32'b00000000000000000000000000000100;
    regdata[3]=32'b00000000000000000000000000000111;
    regdata[4]=32'b00000000000000000000000000000110;
    regdata[5]=32'b00000000000000000000000000000111;
    regdata[6]=32'b00000000000000000000000000001000;
    regdata[7]=32'b00000000000000000000000000001000;
    regdata[8]=32'b00000000000000000000000000011000;
    regdata[9]=32'b00000000000000000000000000010010;
    regdata[10]=32'b00000000000000000000000000001100;
    regdata[11]=32'b00000000000000000000000000001010;
    regdata[12]=32'b00000000000000000000000000001001;
    regdata[13]=32'b00000000000000000000000000001110;
    regdata[14]=32'b00000000000000000000000000001111;
end


always @ (inRd or inRs or inRt or inaluresult)
begin
dataout1=regdata[inRs];
dataout2=regdata[inRt];
    if(inrw==1'b1)
    begin
        regdata[inRd]=inaluresult;
    end
	
    if(inopcode==6'b100011)
    begin
        regdata[inRt]=inmemout;
    end
//$monitor("%d %d ",dataout1,dataout2);
end


endmodule
