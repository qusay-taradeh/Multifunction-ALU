module ALU_Behavioral_1212508 #(parameter n = 4)(C,X,Y,O);
input [2:0]C;
input signed [n-1:0]X,Y;
output reg signed [n+2:0]O;

always @(*)
begin
case(C)
3'b000 : O = (X + Y)/2;
3'b001 : O = 2 *(X+Y);
3'b010 : O = (X/2) + Y;
3'b011 : O = X - (Y/2);
3'b100 : O = ~(X&Y);
3'b101 : O = ~X;
3'b110 : O = ~(X|Y);
3'b111 : O = X^Y;
endcase
end
endmodule
