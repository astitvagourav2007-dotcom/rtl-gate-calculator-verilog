module tb;
reg [7:0] A,B;
reg [1:0] opcode;
wire [15:0] result;
wire overflow,div_by_zero;
calculator_rtl DUT(.A(A),.B(B),.opcode(opcode),.result(result),.overflow(overflow),.div_by_zero(div_by_zero));
initial begin
$dumpfile("test.vcd");$dumpvars;
A=10;B=5;opcode=2'b00;#10;$display("ADD %0d+%0d=%0d",A,B,result);
A=10;B=5;opcode=2'b01;#10;$display("SUB %0d-%0d=%0d",A,B,result);
A=10;B=5;opcode=2'b10;#10;$display("MUL %0d*%0d=%0d",A,B,result);
A=10;B=5;opcode=2'b11;#10;$display("DIV %0d/%0d=%0d",A,B,result);
$finish;
end
endmodule
