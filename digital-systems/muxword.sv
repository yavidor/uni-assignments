module mux2to1 (
    output logic O,
    input  logic A,
    input  logic B,
    input  logic S
);

endmodule
module mux2to1_2 (
    output logic [1:0] O,
    input logic [1:0] A,
    input logic [1:0] B,
    input logic S
);
  //    logic O0 = mux2to1(A[0], B[0], S);
  //    logic O1 = mux2to1(A[0], B[0], S);
  mux2to1 mux0 (
      .O(O[0]),
      .A(A[0]),
      .B(B[0]),
      .S(S)
  );
  mux2to1 mux1 (
      .O(O[1]),
      .A(A[1]),
      .B(B[1]),
      .S(S)
  );
  // O = {mux0, mux1};
endmodule

module mux2to1_32 (
    output logic [31:0] O,
    input logic [31:0] A,
    input logic [31:0] B,
    input logic S
);
  genvar i;
  generate
    for (i = 0; i < 32; i++) begin
      mux2to1 mux_inst (
          .O(O[i]),
          .S(S),
          .A(A[i]),
          .B(B[i])
      );
    end
  endgenerate
endmodule
