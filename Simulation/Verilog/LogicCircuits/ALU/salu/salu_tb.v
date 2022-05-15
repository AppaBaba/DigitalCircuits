module salu_tb;

    // Inputs
    reg [7:0] opA;
    reg [7:0] opB;
    reg [2:0] Mux;

    // Outputs
    wire [7:0] Result;

    // testing salu
    salu SALU ( .operanda(opA), .operandb(opB), .mux(Mux), .result(Result));

    initial begin
      $dumpfile("wave.vcd");
      $dumpvars(); 
      $monitor("simtime=%g,opA=%b,opB=%b,Mux=%b,Result=%b",$time,opA,opB,Mux,Result);
      // Apply inputs.
        opA = 8'b01101010;
        opB = 8'b00111011;
        // Multiplex
        Mux = 0; #10;
        Mux = 1; #10;
        Mux = 2; #10;
        Mux = 3; #10;
        Mux = 4; #10;
        Mux = 5; #10;
        Mux = 6; #10;
        Mux = 7; #10;
        //#10 $finish;
    end
      
endmodule