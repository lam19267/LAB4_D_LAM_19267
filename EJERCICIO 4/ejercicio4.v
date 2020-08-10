module gateLevel1(input wire A, B, C, output wire Y);

  wire n1, n2, n3, a1, a2, a3;

  not (n1, A);
  not (n2, B);
  not (n3, C);
  and (a1, n1, n3);
  and (a2, A, C);
  and (a3, A, n2);
  or  (Y, a1, a2, a3);

endmodule

module gateLevel2(input wire A, B, C, output wire Y);

  wire n1, n2, n3, a1, a2, a3;
  not (n2, B);
  or  (Y, n2);

endmodule

module gateLevel3(input wire A, B, C, D, output wire Y);

  wire n1, n2, n3, n4, a1, a2, a3, a4, a5, a6, a7, a8;
  not (n1, A);
  not (n2, B);
  not (n3, C);
  not (n4, D);
  and (a1, n1, n2, n3, n4);
  and (a2, n1, n2, C, D);
  and (a3, n1, B, n3, D);
  and (a4, n1, B, C, n4);
  and (a5, A, B, n3, n4);
  and (a6, A, B, C, D);
  and (a7, A, n2, n3, D);
  and (a8, A, n2, C, n4);
  or  (Y, a1, a2, a3, a4, a5, a6, a7, a8);

endmodule


module gateLevel4(input wire A, B, C, D, output wire Y);

  wire n1, a1, a2, a3;
  not (n1, D);
  and (a1, B, D);
  and (a2, A, n1);
  and (a3, A, C);
  or  (Y, a1, a2, a3);

endmodule

module operator1(input wire A, B, C, D, output wire Y);

  assign Y = (~B & ~C & ~D)|(A & ~C)|(A & ~B)|(A & ~D);

endmodule


module operator2(input wire A, B, C, output wire Y);

  assign Y = (~B|A|C);

endmodule

module operator3(input wire A, B, C, D, output wire Y);

  assign Y = (~C & D)| B | (A & D);

endmodule

module operator4(input wire A, B, C, output wire Y);

  assign Y = (~A&~C) | B;

endmodule
