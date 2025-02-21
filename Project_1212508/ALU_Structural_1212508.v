module ALU_Structural_1212508 #(parameter n = 4)(C,X,Y,O);
input [2:0]C;
input signed [n-1:0]X,Y;
output signed [n+2:0]O;
wire [n:0]w,w1;
wire [n-1:0]w2,w3;
wire [n:0]op1,op3,op4; 
wire [n+2:0]op2;
wire [n-1:0]op5,op6,op7,op8;

//Operation 1 : (X+Y)/2.
Adder_Subtracter_1212508 #(4) addOp1(1'b0,X,Y,w);
Multiplier_Diviser_1212508 #(4) divOp1(1'b1,w,4'd2,op1);
//Operation 2 : 2*(X+Y).
Adder_Subtracter_1212508 #(4) addOp2(1'b0,X,Y,w1);
Multiplier_Diviser_1212508 #(4) mulOp(1'b0,w1,4'd2,op2);
//Operation 3 : (X/2)+Y.
Multiplier_Diviser_1212508 #(4) divOp2(1'b1,X,4'd2,w2);
Adder_Subtracter_1212508 #(4) addOp3(1'b0,w2,Y,op3);
//Operation 4 : X-(Y/2).
Multiplier_Diviser_1212508 #(4) divOp3(1'b1,Y,4'd2,w3);
Adder_Subtracter_1212508 #(4) subOp(1'b1,X,w3,op4);
//Operation 5 : X NAND Y.
Operator_1212508 #(4) NAND(C[1:0],X,Y,op5);
//Operation 6 : NOT(X).
Operator_1212508 #(4) NOT(C[1:0],X,Y,op6);
//Operation 7 : X NOR Y.
Operator_1212508 #(4) NOR(C[1:0],X,Y,op7);
//Operation 8 : X XOR Y.
Operator_1212508 #(4) XOR(C[1:0],X,Y,op8);
//Processing the selected operation.
Mux8x1_1212508 #(4) Operation(C[2:0],op1,op2,op3,op4,op5,op6,op7,op8,O[n+2:0]);

endmodule
