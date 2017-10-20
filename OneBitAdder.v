module OneBitAdder(d1,d2,carryout,onebitadd,carryin);
input d1;
input d2;
input carryin;
output onebitadd;
output carryout;
//initial begin
//$monitor("d1=%d d2=%d res=%d carry=%d",d1,d2,resultofadd,carryout);
//end
wire xorout,andout1,andout2;
//for full adder:
//sum=A xor B xor Cin
//carry=(A and B) or (Cin and(A xor B)) 
xor xor1(xorout, d1, d2);
xor xor2(onebitadd, carryin, xorout);
and and1(andout1, d1, d2);
and and2(andout2, xorout, carryin);
or or1(carryout, andout1, andout2);

endmodule

