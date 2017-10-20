//indataout1,indataout2 gets values from output of register block
//inopcode,infunct gets values from decoder
module ALU(clk,indataout1,indataout2,inopcode,infunct,aluresult,rw);
input clk;
input [31:0] indataout1;
input [31:0] indataout2;
input [5:0] inopcode;
input [5:0] infunct;
output [31:0] aluresult;
output rw;
reg rw;
reg [31:0] aluresult;
wire [31:0] resultofadd;
wire [31:0] resultofsub;
wire [31:0] resultofand;
wire [31:0] resultofor;
wire carryout;
//initial begin
//$monitor("indataout1=%d indataout2=%d res=%d",indataout1,indataout2,aluresult);
//$monitor("inopcode=%d infunct=%d res=%d",inopcode,infunct,aluresult);
//end

ADDER adder(indataout1,indataout2,carryout,resultofadd,1'b0);
SUBTRACTOR sub(indataout1,indataout2,carryout,resultofsub,1'b0);
ANDER ander(resultofand,indataout1,indataout2); 
ORER orer(resultofor,indataout1,indataout2);

//reg [31:0] temp_dataout1;
//reg [31:0] temp_dataout2;
//wire [31:0] resultofsub1;
//wire carryout1;
//SUBTRACTOR sub1(temp_dataout1, temp_dataout2, carryout1, resultofsub1, 1'b0);

always @ (*) 
    case (inopcode) 
        6'b000000:begin    
            if(infunct==6'b100000)
            begin
                rw=1'b0; //since this loop iterate forever hence, for proper operation, rw should be reset, once it is set
                aluresult=resultofadd;
                rw=1'b1;
            end
            
            if(infunct==6'b100010)
            begin
                rw=1'b0;
                //if(carryout==1'b1)
                //begin
                //temp_dataout1=32'b00000000000000000000000000000000;
                //temp_dataout2=resultofsub;
                //end
                //aluresult=carryout?resultofsub1:resultofsub;
                aluresult=resultofsub;
                rw=1'b1;
            end
            
            if(infunct==6'b100100)
            begin
                rw=1'b0;
                aluresult=resultofand;
                rw=1'b1;
            end
            
            if(infunct==6'b100101)
            begin
                rw=1'b0;
                aluresult=resultofor;
                rw=1'b1;
            end
        end
    endcase



endmodule