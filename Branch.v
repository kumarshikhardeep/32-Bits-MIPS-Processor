//inopcode gets value from decoder
//inpcout gets value from PC
//if the instruction is branching instruction then add the offset to pc else increment the pc by 1 and forward the updated value to input of program counter
module Branch(inopcode,inpcout,inextendout,newpc);
input [5:0] inopcode;
input [31:0] inpcout;
input [31:0] inextendout;
output [31:0] newpc;
reg [31:0] newpc;

always @ (inpcout)
begin
    if(inopcode==6'b000100)
    begin
        newpc=inpcout+inextendout-1;
    end
    else
    begin
        newpc=inpcout+1;
    end
end
endmodule