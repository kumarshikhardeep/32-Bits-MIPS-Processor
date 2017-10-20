module tb_PC();

reg [31:0] pcin;

wire [31:0] pcout;


clock inst_clk(clk);
PC inst_pc(pcout,pcin,clk);
initial begin
pcin=32'b00000000000000000000000000000000;
$monitor("%d %d ", pcin,pcout);
#20
$finish;
end
always @(negedge clk)
begin
 
pcin = pcin+1;
end



endmodule