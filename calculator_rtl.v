
module calculator_rtl(input [7:0] A,B,input [1:0] opcode,output reg [15:0] result,output reg overflow,output reg div_by_zero);
wire [15:0] ext_A={8'b0,A};wire [15:0] ext_B={8'b0,B};
always@(*)begin
overflow=0;div_by_zero=0;result=0;
case(opcode)
2'b00:begin result=ext_A+ext_B;overflow=result[8];end
2'b01:begin if(A>=B)result=ext_A-ext_B;else begin result=ext_B-ext_A;overflow=1;end end
2'b10:begin result=ext_A*ext_B;overflow=|result[15:8];end
2'b11:begin if(B==0)begin div_by_zero=1;result=16'hFFFF;end else result=ext_A/ext_B;end
endcase
end
endmodule
