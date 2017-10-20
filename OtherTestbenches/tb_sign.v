module tb_sign;
reg [15:0] signin;
wire [31:0] signout;
SignExtend s(signin,signout);
initial begin
$monitor("signin=%b signout=%b",signin,signout);
signin=16'b1110000000000000;
$finish;
end
endmodule