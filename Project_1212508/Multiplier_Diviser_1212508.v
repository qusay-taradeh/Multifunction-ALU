module Multiplier_Diviser_1212508 #(parameter n = 4)(selection,X,Y,result);
input selection; //selection : determines process is multiply if it equals 0 or division if it equals 1. 
input signed [n:0]X,Y; //X and Y are numbers in nBit.
output reg signed [n+2:0]result; //result of multiply or division.

always@(*)
begin
case(selection)
1'b0 : result = X * Y;
1'b1 : result = X / Y;
endcase
end
endmodule
