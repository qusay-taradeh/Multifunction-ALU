module Mux8x1_1212508 #(parameter n = 4)(C,op1,op2,op3,op4,op5,op6,op7,op8,O);
input [2:0]C;
input signed [n:0]op1,op3,op4; //op : operation
input signed [n+2:0]op2;
input signed [n-1:0]op5,op6,op7,op8;
output reg signed [n+2:0]O; //O : output

always @(*)
begin
case(C) //sets the operation.
3'b000 : O = op1;
3'b001 : O = op2;
3'b010 : O = op3;
3'b011 : O = op4;
3'b100 : O = op5;
3'b101 : O = op6;
3'b110 : O = op7;
3'b111 : O = op8;
endcase
end
endmodule
