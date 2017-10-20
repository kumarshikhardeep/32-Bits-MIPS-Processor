//output of instruction set ie. 'inst' is the input to decoder as 'instin'
module decoder(clk, opcode,Rs,Rt,Rd,funct,address,instin);

input clk;
input [31:0] instin;
output [5:0] opcode;
output [4:0] Rs;
output [4:0] Rt;
output [4:0] Rd;
output [5:0] funct;
output [15:0] address;
reg [4:0] Rs;
reg [4:0] Rt;
reg [4:0] Rd;
reg [5:0] funct;
reg [15:0] address;

//initial begin
//$monitor("%d %d %d",Rs,Rt,Rd);
//end

assign opcode=instin[31:26];

always @ (instin)
    case(opcode)    
        6'b000000: begin
            Rs=instin[25:21];
            Rt=instin[20:16];
            Rd=instin[15:11];
            //not considering shamt
            funct=instin[5:0];
        end
        
        default: begin
            Rs=instin[25:21];
            Rt=instin[20:16];
            address=instin[15:0];
        end
    
    endcase
	
endmodule

