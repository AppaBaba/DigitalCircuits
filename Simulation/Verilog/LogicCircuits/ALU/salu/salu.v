//Simple ALU
//`timescale 1ns/100ps
module salu(operanda,operandb,mux,result);
    
    //inputs,outputs and wires
    input [7:0] operanda,operandb;
    input [2:0] mux;
    output [7:0] result;
    wire [7:0] op1,op2;
    reg [7:0] r;
    
    //variables for operations
    assign op1 = operanda;
    assign op2 = operandb;
    //Assign the output 
    assign result = r;

    always @(mux or op1 or op2)
    begin
        case (mux)
         0 : r = op1 + op2;    //Add
         1 : r = op1 - op2;    //Sub
         2 : r = ~op1;         //NOT
         3 : r = op1 & op2;    //AND
         4 : r = op1 | op2;    //OR
         5 : r = ~(op1 & op2); //NAND 
         6 : r = ~(op1 | op2); //NOR                
         7 : r = op1 ^ op2;    //XOR
        endcase 
    end
    
endmodule