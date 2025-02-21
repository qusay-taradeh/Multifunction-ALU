module Adder_Subtracter_1212508 #(parameter n = 4)(C_In,X,Y,result);
input C_In; //determines if the operation sum or sub.
input signed [n-1:0]X,Y; //inputs of the system.
output reg signed [n:0]result; //

always @(*)
begin
case(C_In)
1'b0 : result = X+Y;
1'b1 : result = X-Y;
endcase
end
endmodule
