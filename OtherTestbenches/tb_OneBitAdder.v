module tb_OneBitAdder;
reg d1;
reg d2;
reg carryin;
wire onebitadd;
wire carryout;
OneBitAdder o(d1,d2,carryout,onebitadd,carryin);
initial begin
$monitor("d1=%b d2=%b carryin=%b onebitadd=%b carryout=%b",d1,d2,carryin,onebitadd,carryout);
d1=1'b0;
d2=1'b0;
carryin=1'b0;
#5 d2=1'b1;
#5 d1=1'b1;
$finish;
end
endmodule