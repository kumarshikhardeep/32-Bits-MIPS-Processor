module tb_decoder;
reg [31:0] pcin;
reg [31:0] inpcout;
reg [31:0] instin;

wire [5:0] opcode;
wire [4:0] Rs;
wire [4:0] Rt;
wire [4:0] Rd;
wire [5:0] funct;
wire [15:0] address;
wire [31:0] pcout;
wire [31:0] inst;

clock inst_clk(clk);
PC inst_pc(pcout,pcin,clk);
InstructionSet inst_ins(clk, inst, inpcout);
decoder inst_decoder(clk, opcode,Rs,Rt,Rd,funct,address,instin);

initial begin
pcin=32'b00000000000000000000000000000000;
$monitor("pcout=%d Rs=%d Rt=%d Rd=%d ", pcout,Rs,Rt,Rd);
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
instin=inst;
end

endmodule