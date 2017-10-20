module tb_RegisterBlock;
reg [31:0] pcin;
reg [31:0] inpcout;
reg [31:0] instin;
reg rw;
reg [4:0] inRs;
reg [4:0] inRt;
reg [4:0] inRd;
reg [31:0] aluresult;

wire [31:0] dataout1;
wire [31:0] dataout2;
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
RegisterBlock inst_reg(clk,rw,inRs,inRt,inRd,aluresult,dataout1,dataout2);

initial begin
pcin=32'b00000000000000000000000000000000;
$monitor("pcout=%d inRs=%d dataout1=%d ", pcout,inRs,dataout1);
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

if(opcode==6'b000000)
begin
inRs=Rs;
inRt=Rt;
inRd=Rd;
end
else begin
inRs=Rs;
inRt=Rs;
end

end
endmodule