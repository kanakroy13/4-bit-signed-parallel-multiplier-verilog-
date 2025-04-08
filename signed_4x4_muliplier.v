module signed_4x4_multiplier(
    input  [3:0] A, // 4-bit signed input A
    input  [3:0] B, // 4-bit signed input B
    output [7:0] Z  // 8-bit signed output Z (product)
);

    wire [3:0] PP0, PP1, PP2, PP3; // Partial products
    wire C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13; // Carry wires
    wire S1, S2, S3, S4, S5, S6;     // Sum wires 
  
  assign PP0 = A & {4{B[0]}};
    assign PP1 = A & {4{B[1]}};
    assign PP2 = A & {4{B[2]}};
    assign PP3 = A & {4{B[3]}};

    // Stage 1
    assign Z[0] = PP0[0];
    HalfAdder HA1 (PP0[1], PP1[0], Z[1], C1);
    FullAdder FA1 (PP0[2], PP1[1], C1, S1, C2);
    FullAdder FA2 (~&(PP0[3]), PP1[2], C2, S2, C3);
    FullAdder FA3 (~&(PP1[3]),1'b1, C3, S3, C4);

    HalfAdder HA2 (S1, PP2[0], Z[2], C5);
    FullAdder FA4 (S2, PP2[1], C5, S4, C6);
    FullAdder FA5 (S3, PP2[2], C6, S5, C7);
    FullAdder FA6 (~&(PP2[3]), C4, C7, S6, C8);

    // Stage 3
    HalfAdder HA3 (S4,~&(PP3[0]), Z[3], C9);
    FullAdder FA7 (S5, ~&(PP3[1]), C9, Z[4], C10);
    FullAdder FA8 (S6, ~&(PP3[2]), C10, Z[5], C11);
    FullAdder FA9 (PP3[3], C8, C11, Z[6], C12);
    HalfAdder HA4 ( 1'b1, C12, Z[7],C13);

endmodule
