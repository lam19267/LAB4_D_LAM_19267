module testbench();

  reg a1, b1, c1, a2, b2, c2, a3, b3, c3, a4, b4, c4, a5, b5, c5, a6, b6, c6;
  wire Y1, Y2, Y3, Y4, Y5, Y6;

  gateLevel1   G1(a1, b1, c1, Y1);
  operator1   O1(a2, b2, c2, Y2);
  gateLevel2 G2(a3, b3, c3 , Y3);
  operator2   O2(a4, b4, c4, Y4);
  gateLevel3 G3(a5, b5, c5 , Y5);
  operator3   O3(a6, b6, c6, Y6);




  //Ejercicio 5 SOP gateleveling modelling
    initial begin
      $display("Ejercicio 5 SOP GATE LEVEL MODELLING");
      $display("A B C | Y1");
      $display("------|---");
      $monitor("%b %b %b | %b", a1, b1, c1, Y1);
         a1 = 0; b1 = 0; c1 = 0;
      #1 a1 = 0; b1 = 0; c1 = 1;
      #1 a1 = 0; b1 = 1; c1 = 0;
      #1 a1 = 0; b1 = 1; c1 = 1;
      #1 a1 = 1; b1 = 0; c1 = 0;
      #1 a1 = 1; b1 = 0; c1 = 1;
      #1 a1 = 1; b1 = 1; c1 = 0;
      #1 a1 = 1; b1 = 1; c1 = 1;
    end

    //Ejercicio 5 SOP BEHAVIOUR MODELLING
      initial begin
        #8
        $display("");
        $display("Ejercicio 5 SOP BEHAVIOUR MODELLING ");
        $display("A B C | Y2");
        $display("------|------");
        $monitor("%b %b %b | %b", a2, b2, c2, Y2);
           a2 = 0; b2 = 0; c2 = 0;
        #1 a2 = 0; b2 = 0; c2 = 1;
        #1 a2 = 0; b2 = 1; c2 = 0;
        #1 a2 = 0; b2 = 1; c2 = 1;
        #1 a2 = 1; b2 = 0; c2 = 0;
        #1 a2 = 1; b2 = 0; c2 = 1;
        #1 a2 = 1; b2 = 1; c2 = 0;
        #1 a2 = 1; b2 = 1; c2 = 1;
      end

      //Ejercicio 5 POS gateleveling modelling
        initial begin
          #16
          $display("Ejercicio 5 POS GATE LEVEL MODELLING");
          $display("A B C | Y3");
          $display("------|---");
          $monitor("%b %b %b | %b", a3, b3, c3, Y3);
             a3 = 0; b3 = 0; c3 = 0;
          #1 a3 = 0; b3 = 0; c3 = 1;
          #1 a3 = 0; b3 = 1; c3 = 0;
          #1 a3 = 0; b3 = 1; c3 = 1;
          #1 a3 = 1; b3 = 0; c3 = 0;
          #1 a3 = 1; b3 = 0; c3 = 1;
          #1 a3 = 1; b3 = 1; c3 = 0;
          #1 a3 = 1; b3 = 1; c3 = 1;
        end

        //Ejercicio 5 POS BEHAVIOUR MODELLING
          initial begin
            #24
            $display("");
            $display("Ejercicio 5 POS BEHAVIOUR MODELLING ");
            $display("A B C | Y4");
            $display("------|------");
            $monitor("%b %b %b | %b", a4, b4, c4, Y4);
               a4 = 0; b4 = 0; c4 = 0;
            #1 a4 = 0; b4 = 0; c4 = 1;
            #1 a4 = 0; b4 = 1; c4 = 0;
            #1 a4 = 0; b4 = 1; c4 = 1;
            #1 a4 = 1; b4 = 0; c4 = 0;
            #1 a4 = 1; b4 = 0; c4 = 1;
            #1 a4 = 1; b4 = 1; c4 = 0;
            #1 a4 = 1; b4 = 1; c4 = 1;
          end




    //Ejercicio 5 MAP KARNAUGH gateleveling modelling
      initial begin
        #32
        $display("Ejercicio 5 MAP KARNAUGH GATE LEVEL MODELLING");
        $display("A B C | Y5");
        $display("------|---");
        $monitor("%b %b %b | %b", a5, b5, c5, Y5);
           a5 = 0; b5 = 0; c5 = 0;
        #1 a5 = 0; b5 = 0; c5 = 1;
        #1 a5 = 0; b5 = 1; c5 = 0;
        #1 a5 = 0; b5 = 1; c5 = 1;
        #1 a5 = 1; b5 = 0; c5 = 0;
        #1 a5 = 1; b5 = 0; c5 = 1;
        #1 a5 = 1; b5 = 1; c5 = 0;
        #1 a5 = 1; b5 = 1; c5 = 1;
      end

      //Ejercicio 5 MAP KARNAUGH BEHAVIOUR MODELLING
        initial begin
          #40
          $display("");
          $display("Ejercicio 5 MAP KARNAUGH BEHAVIOUR MODELLING ");
          $display("A B C | Y6");
          $display("------|------");
          $monitor("%b %b %b | %b", a6, b6, c6, Y6);
             a6 = 0; b6 = 0; c6 = 0;
          #1 a6 = 0; b6 = 0; c6 = 1;
          #1 a6 = 0; b6 = 1; c6 = 0;
          #1 a6 = 0; b6 = 1; c6 = 1;
          #1 a6 = 1; b6 = 0; c6 = 0;
          #1 a6 = 1; b6 = 0; c6 = 1;
          #1 a6 = 1; b6 = 1; c6 = 0;
          #1 a6 = 1; b6 = 1; c6 = 1;
        end

      initial
      #97 $finish;

    initial begin
      $dumpfile("ejercicio5_tb.vcd");
      $dumpvars(0, testbench);
    end

endmodule
