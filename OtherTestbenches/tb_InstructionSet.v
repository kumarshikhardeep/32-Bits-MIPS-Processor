module tb_InstructionSet();
reg [31:0] pcin;
reg [31:0] inpcout;

wire [31:0] pcout;
wire [31:0] inst;

clock inst_clk(clk);
PC inst_pc(pcout,pcin,clk);
InstructionSet inst_ins(clk, inst, inpcout);

initial begin
pcin=32'b00000000000000000000000000000000;
$monitor("pcin=%d pcout=%d inst=%d ", pcin,pcout,inst);
#20
$finish;
end

always @(negedge clk)
begin 
pcin = pcin+1;

end

always @(*)
begin
inpcout=pcout;
end

endmodule