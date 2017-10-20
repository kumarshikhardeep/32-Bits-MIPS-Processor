//inopcode gets value from decoder
//inextendout gets velue from sign extend block
//indataout2 gets value from register block
module MemoryBlock(inopcode,inextendout,indataout2,memout);
input [5:0] inopcode;
input [31:0] inextendout;
input [31:0] indataout2;
output [31:0] memout;
reg [31:0] memout;
reg [31:0] memdata [64:0];

initial begin
    memdata[0]=32'b00000000000000000000000000000001;
    memdata[1]=32'b00000000000000000000000000000010;
    memdata[2]=32'b00000000000000000000000000000011;
    memdata[3]=32'b00000000000000000000000000000100;
    memdata[4]=32'b00000000000000000000000000000101;
    memdata[5]=32'b00000000000000000000000000000110;
    memdata[6]=32'b00000000000000000000000000000111;
    memdata[7]=32'b00000000000000000000000000001000;
    memdata[8]=32'b00000000000000000000000000001001;
    memdata[9]=32'b00000000000000000000000000001010;
    memdata[10]=32'b00000000000000000000000000001011;
    memdata[11]=32'b00000000000000000000000000001100;
end

always @ (indataout2 or inextendout or inopcode)
begin
    if(inopcode==6'b101011)//store
    begin
        memdata[inextendout]=indataout2;
    end
	
    if(inopcode==6'b100011)//load
    begin
        memout=memdata[inextendout];
    end
end
endmodule