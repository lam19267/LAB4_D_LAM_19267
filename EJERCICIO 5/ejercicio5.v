module gateLevel1(input wire A, B, C, output wire Y);

  wire n1, n2, n3, a1, a2, a3;

  not (n1, A);
  not (n2, B);
  not (n3, C);
  and (a1, A, n2, n3);
  and (a2, A, n2, C);
  and (a3, A, B, C);
  or  (Y, a1, a2, a3);

endmodule

module operator1(input wire A, B, C, output wire Y);

  assign Y = (A&~B&~C)|(A&~B&C)|(A&B&C);

endmodule

module gateLevel2(input wire A, B, C, output wire Y);

  wire n1, n2, n3, a1, a2, a3, a4, a5;

  not (n1, A);
  not (n2, B);
  not (n3, C);
  or (a1, A, B, B);
  or (a2, A, B, n3);
  or (a3, A, n2, C);
  or (a4, A, n2, n3);
  or (a5, n1, n2, C);
  and (Y, a1, a2, a3, a4, a5);

endmodule

module operator2(input wire A, B, C, output wire Y);

  assign Y = (A|B|C)&(A|B|~C)&(A|~B|C)&(A|~B|~C)&(~A|~B|C) ;

endmodule

module gateLevel3(input wire A, B, C, output wire Y);

  wire n1, n2, n3, a1, a2;

  not (n2, B);
  and (a1, A, n2);
  and (a2, A, C);
  or  (Y, a1, a2);

endmodule

module operator3(input wire A, B, C, output wire Y);

  assign Y = (A&~B)|(A&C) ;

endmodule
