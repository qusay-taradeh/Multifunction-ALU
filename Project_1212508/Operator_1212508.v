module Operator_1212508 #(parameter n = 4)(selection,X,Y,result);
input [1:0]selection; //selection : selects the operation.
input signed [n-1:0]X,Y; //numbers that we need to test between them.
output reg signed [n-1:0]result; // result of the operation.

always @(*)
begin
if (selection == 2'b00) //sets the result equals X NAND Y operation.
begin
result = ~(X&Y);
end

if (selection == 2'b01) //sets the result equals NOT(X).
begin
result = ~X;
end

if (selection == 2'b10) //sets the result equals X NOR Y operation.
begin
result = ~(X|Y);
end

if (selection == 2'b11) //sets the result equals X XOR Y operation.
begin
result = X^Y;
end

end
endmodule
