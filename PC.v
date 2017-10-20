//pcin is input to program counter
//pcout is output to program counter
module PC(pcout,pcin,clk);
output [31:0] pcout;
input [31:0] pcin;
input clk;
reg [31:0] pcout;


always @ (pcin)
begin
    pcout=pcin;
end
endmodule
