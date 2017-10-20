module clock(clkout);
output clkout;
reg    clkout;

initial begin
    clkout = 1'b0;
end

always
begin
    clkout = #1 ~clkout;
end
endmodule
