module tb_adder;
reg [31:0] dataout1;
reg [31:0] dataout2;
reg carryin;
wire [31:0] resultofadd;
wire carryout;
ADDER ad(dataout1,dataout2,carryout,resultofadd,carryin);
initial begin
dataout1=32'b00000000000000000000000000000001;
dataout2=32'b00000000000000000000000000000010;
carryin=1'b0;
$monitor("dataout1=%d dataout2=%d res=%d",dataout1,dataout2,resultofadd);
$finish;
end
endmodule