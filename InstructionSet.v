//output of PC ie. pcout is the input to instruction set as 'inpcout'
module InstructionSet(clk, inst, inpcout);
input clk;
output [31:0] inst;
input [31:0] inpcout;
reg [31:0] inst;
reg [31:0] instmem [31:0];

initial begin
instmem[0]=32'b00000000000000010001000000100000; //ADD
instmem[1]=32'b00000000011001000010100000100010; //SUB
instmem[2]=32'b00000000110001110100000000100100; //AND
instmem[3]=32'b00000001001010100101100000100101; //OR
instmem[4]=32'b10001100000000010000000000000101; //LOAD
instmem[5]=32'b10101100000000010000000000000001; //STORE
instmem[6]=32'b00010000000000110000000000001110; //BRANCH
instmem[20]=32'b00000000000000010000000000000011;//FINISH
end

always @ (inpcout)
begin
inst=instmem[inpcout];
end

endmodule