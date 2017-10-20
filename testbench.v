module testbench;
reg [31:0] pcin;
reg [31:0] inpcout;
reg [31:0] instin;
reg inrw;
reg [4:0] inRs;
reg [4:0] inRt;
reg [4:0] inRd;
reg [31:0] inaluresult;
reg [31:0] indataout1;
reg [31:0] indataout2;
reg [5:0] inopcode;
reg [5:0] infunct;
reg [15:0] extendedin;
reg [31:0] inextendout;
reg [31:0] inmemout;
//reg d1,d2,carryin;

wire [31:0] aluresult;
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
wire [31:0] extendedout;
wire [31:0] memout;
wire [31:0] newpc;
//wire [31:0] resultofadd;
//wire [31:0] resultofsub;
//wire [31:0] resultofand;
//wire [31:0] resultofor;
//wire onebitadd;
//wire [31:0] rofadd;

clock inst_clk(clk);
PC inst_pc(pcout,pcin,clk);
InstructionSet inst_ins(clk, inst, inpcout);
decoder inst_decoder(clk, opcode,Rs,Rt,Rd,funct,address,instin);
RegisterBlock inst_reg(clk,rw,inRs,inRt,inRd,aluresult,dataout1,dataout2,inmemout,inopcode);
ALU inst_alu(clk,indataout1,indataout2,inopcode,infunct,aluresult,rw);
SignExtend inst_sign(extendedin,extendedout);
MemoryBlock inst_mem(inopcode,inextendout,indataout2,memout);
Branch inst_branch(inopcode,inpcout,inextendout,newpc);

//ADDER adder(dataout1,dataout2,carryout,resultofadd,1'b0);
//SUBTRACTOR sub(indataout1,indataout2,carryout,resultofsub,1'b0);
//ANDER ander(resultofand,indataout1,indataout2); 
//ORER orer(resultofor,indataout1,indataout2);
//OneBitAdder inst_one(d1,d2,carryout,onebitadd,carryin);

initial begin
    pcin=32'b00000000000000000000000000000000;
	//$display("-------------Instructions--------------");
	//#2
	//$monitor("PC=%d : %b",pcout,inst);
	//#20 
	$display("-------------Registers-----------------\n");
	$display("00000000000000000000000000000011");
	$display("00000000000000000000000000000000");
	$display("00000000000000000000000000000100");
	$display("00000000000000000000000000000111");
	$display("00000000000000000000000000000110");
	$display("00000000000000000000000000000111");
	$display("00000000000000000000000000001000");
	$display("00000000000000000000000000001000");
	$display("00000000000000000000000000010010");
	$display("00000000000000000000000000011000");
	$display("00000000000000000000000000001100");
	$display("00000000000000000000000000001010");
	$display("00000000000000000000000000001001");
	$display("00000000000000000000000000001110");
	$display("00000000000000000000000000001111");
	$display("");
	$display("--------------Memory Data---------------\n");
	$display("00000000000000000000000000000001");
	$display("00000000000000000000000000000010");
	$display("00000000000000000000000000000011");
	$display("00000000000000000000000000000100");
	$display("00000000000000000000000000000101");
	$display("00000000000000000000000000000110");
	$display("00000000000000000000000000000111");
	$display("00000000000000000000000000001000");
	$display("00000000000000000000000000001001");
	$display("00000000000000000000000000001010");
	$display("00000000000000000000000000001011");
	$display("00000000000000000000000000001100");
	$display("");
	$display("------Execution Starts------------------\n");
    $monitor("PC=%2d Inst=%b Rs=%2d Rt=%2d Address=%b Result=%2d MemoryOut=%2b \n", pcout,inst,indataout1,indataout2,address,inaluresult,memout);
    //$monitor("Rt=%d address=%d mem=%d",indataout2,inextendout,memout);
    #16
    $finish;
end

always @(negedge clk)
begin 
    pcin = newpc;
end

always @(*)
begin
inpcout=pcout;
instin=inst;
inopcode=opcode;
infunct=funct;
    if(opcode==6'b000000)
    begin
        inRs=Rs;
        inRt=Rt;
        inRd=Rd;
        indataout1=dataout1;
        indataout2=dataout2;
        inaluresult=aluresult;
        inrw=rw;
    end
    
    else begin
        inRs=Rs;
        inRt=Rs;
        extendedin=address;
        inextendout=extendedout;
        inmemout=memout;
    end

end
endmodule