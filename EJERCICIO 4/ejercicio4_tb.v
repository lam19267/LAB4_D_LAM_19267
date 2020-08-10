module testbench();

  reg a1, b1, c1, a2, b2, c2, a3, b3, c3, d3, a4, b4, c4, d4, a5, b5, c5, d5, a6, b6, c6, a7, b7, c7, d7, a8, b8, c8;
  wire Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8;

  gateLevel1   G1(a1, b1, c1, Y1);
  gateLevel2   G2(a2, b2, c2, Y2);
  gateLevel3   G3(a3, b3, c3, d3, Y3);
  gateLevel4   G4(a4, b4, c4, d4, Y4);
  operator1    O1(a5, b5, c5, d5, Y5);
  operator2    O2(a6, b6, c6, Y6);
  operator3    O3(a7, b7, c7, d7, Y7);
  operator4    O4(a8, b8, c8, Y8);

//Ejercicio 1 Tabla 1
  initial begin
    $display("Ejercicio 1 Tabla 1");
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

//Ejercicio 1 Tabla 2
  initial begin
    #8
    $display("");
    $display("Ejercicio 1 Tabla 2");
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

  //Ejercicio 1 Tabla 3
    initial begin
      #16
      $display("");
      $display("Ejercicio 1 Tabla 3");
      $display("A B C D | Y3");
      $display("--------|---");
      $monitor("%b %b %b %b | %b", a3, b3, c3, d3, Y3);
         a3 = 0; b3 = 0; c3 = 0; d3 = 0;
      #1 a3 = 0; b3 = 0; c3 = 0; d3 = 1;
      #1 a3 = 0; b3 = 0; c3 = 1; d3 = 0;
      #1 a3 = 0; b3 = 0; c3 = 1; d3 = 1;
      #1 a3 = 0; b3 = 1; c3 = 0; d3 = 0;
      #1 a3 = 0; b3 = 1; c3 = 0; d3 = 1;
      #1 a3 = 0; b3 = 1; c3 = 1; d3 = 0;
      #1 a3 = 0; b3 = 1; c3 = 1; d3 = 1;
      #1 a3 = 1; b3 = 0; c3 = 0; d3 = 0;
      #1 a3 = 1; b3 = 0; c3 = 0; d3 = 1;
      #1 a3 = 1; b3 = 0; c3 = 1; d3 = 0;
      #1 a3 = 1; b3 = 0; c3 = 1; d3 = 1;
      #1 a3 = 1; b3 = 1; c3 = 0; d3 = 0;
      #1 a3 = 1; b3 = 1; c3 = 0; d3 = 1;
      #1 a3 = 1; b3 = 1; c3 = 1; d3 = 0;
      #1 a3 = 1; b3 = 1; c3 = 1; d3 = 1;


    end

    //Ejercicio 1 Tabla 4
      initial begin
        #32
        $display("");
        $display("Ejercicio 1 Tabla 4");
        $display("A B C D | Y4");
        $display("--------|---");
        $monitor("%b %b %b %b | %b", a4, b4, c4, d4, Y4);
           a4 = 0; b4 = 0; c4 = 0; d4 = 0;
        #1 a4 = 0; b4 = 0; c4 = 0; d4 = 1;
        #1 a4 = 0; b4 = 0; c4 = 1; d4 = 0;
        #1 a4 = 0; b4 = 0; c4 = 1; d4 = 1;
        #1 a4 = 0; b4 = 1; c4 = 0; d4 = 0;
        #1 a4 = 0; b4 = 1; c4 = 0; d4 = 1;
        #1 a4 = 0; b4 = 1; c4 = 1; d4 = 0;
        #1 a4 = 0; b4 = 1; c4 = 1; d4 = 1;
        #1 a4 = 1; b4 = 0; c4 = 0; d4 = 0;
        #1 a4 = 1; b4 = 0; c4 = 0; d4 = 1;
        #1 a4 = 1; b4 = 0; c4 = 1; d4 = 0;
        #1 a4 = 1; b4 = 0; c4 = 1; d4 = 1;
        #1 a4 = 1; b4 = 1; c4 = 0; d4 = 0;
        #1 a4 = 1; b4 = 1; c4 = 0; d4 = 1;
        #1 a4 = 1; b4 = 1; c4 = 1; d4 = 0;
        #1 a4 = 1; b4 = 1; c4 = 1; d4 = 1;


      end

      //Ejercicio 2 Tabla 1
        initial begin
          #48
          $display("");
          $display("Ejercicio 2 Tabla 1");
          $display("A B C D | Y5");
          $display("--------|---");
          $monitor("%b %b %b %b | %b", a5, b5, c5, d5, Y5);
             a5 = 0; b5 = 0; c5 = 0; d5 = 0;
          #1 a5 = 0; b5 = 0; c5 = 0; d5 = 1;
          #1 a5 = 0; b5 = 0; c5 = 1; d5 = 0;
          #1 a5 = 0; b5 = 0; c5 = 1; d5 = 1;
          #1 a5 = 0; b5 = 1; c5 = 0; d5 = 0;
          #1 a5 = 0; b5 = 1; c5 = 0; d5 = 1;
          #1 a5 = 0; b5 = 1; c5 = 1; d5 = 0;
          #1 a5 = 0; b5 = 1; c5 = 1; d5 = 1;
          #1 a5 = 1; b5 = 0; c5 = 0; d5 = 0;
          #1 a5 = 1; b5 = 0; c5 = 0; d5 = 1;
          #1 a5 = 1; b5 = 0; c5 = 1; d5 = 0;
          #1 a5 = 1; b5 = 0; c5 = 1; d5 = 1;
          #1 a5 = 1; b5 = 1; c5 = 0; d5 = 0;
          #1 a5 = 1; b5 = 1; c5 = 0; d5 = 1;
          #1 a5 = 1; b5 = 1; c5 = 1; d5 = 0;
          #1 a5 = 1; b5 = 1; c5 = 1; d5 = 1;


        end

        //Ejercicio 2 Tabla 2
          initial begin
            #64
            $display("");
            $display("Ejercicio 2 Tabla 2");
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

          //Ejercicio 2 Tabla 3
            initial begin
              #72
              $display("");
              $display("Ejercicio 2 Tabla 3");
              $display("A B C D | Y7");
              $display("--------|---");
              $monitor("%b %b %b %b | %b", a7, b7, c7, d7, Y7);
                 a7 = 0; b7 = 0; c7 = 0; d7 = 0;
              #1 a7 = 0; b7 = 0; c7 = 0; d7 = 1;
              #1 a7 = 0; b7 = 0; c7 = 1; d7 = 0;
              #1 a7 = 0; b7 = 0; c7 = 1; d7 = 1;
              #1 a7 = 0; b7 = 1; c7 = 0; d7 = 0;
              #1 a7 = 0; b7 = 1; c7 = 0; d7 = 1;
              #1 a7 = 0; b7 = 1; c7 = 1; d7 = 0;
              #1 a7 = 0; b7 = 1; c7 = 1; d7 = 1;
              #1 a7 = 1; b7 = 0; c7 = 0; d7 = 0;
              #1 a7 = 1; b7 = 0; c7 = 0; d7 = 1;
              #1 a7 = 1; b7 = 0; c7 = 1; d7 = 0;
              #1 a7 = 1; b7 = 0; c7 = 1; d7 = 1;
              #1 a7 = 1; b7 = 1; c7 = 0; d7 = 0;
              #1 a7 = 1; b7 = 1; c7 = 0; d7 = 1;
              #1 a7 = 1; b7 = 1; c7 = 1; d7 = 0;
              #1 a7 = 1; b7 = 1; c7 = 1; d7 = 1;


            end

            //Ejercicio 2 Tabla 4
              initial begin
                #80
                $display("");
                $display("Ejercicio 2 Tabla 4");
                $display("A B C | Y8");
                $display("------|------");
                $monitor("%b %b %b | %b", a8, b8, c8, Y8);
                   a8 = 0; b8 = 0; c8 = 0;
                #1 a8 = 0; b8 = 0; c8 = 1;
                #1 a8 = 0; b8 = 1; c8 = 0;
                #1 a8 = 0; b8 = 1; c8 = 1;
                #1 a8 = 1; b8 = 0; c8 = 0;
                #1 a8 = 1; b8 = 0; c8 = 1;
                #1 a8 = 1; b8 = 1; c8 = 0;
                #1 a8 = 1; b8 = 1; c8 = 1;
              end

  initial
    #97 $finish;

  initial begin
    $dumpfile("ejercicio4_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
