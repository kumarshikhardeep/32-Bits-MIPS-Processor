//'address' part of instruction gets into 'extendedin' and this module gives extended address of 32 bits as 'extendedout'
module SignExtend(extendedin,extendedout);
input [15:0] extendedin;
output [31:0] extendedout;
assign extendedout[15:0]=extendedin[15:0];
assign extendedout[31:16]=1'b0;
endmodule