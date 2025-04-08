// Half Adder module
module HalfAdder (
    input  A, B,
    output Sum, Carry
);
    assign Sum = A ^ B;
    assign Carry = A & B;
endmodule

