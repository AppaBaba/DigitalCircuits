//Simple ALU
//`timescale 1ns/100ps
module salu(operanda,operandb,mux,result);
    
    //inputs,outputs and wires
    input [7:0] operanda,operandb;
    input [3:0] mux;
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
         'h0 : r = op1 + op2;    //Add
         'h1 : r = op1 - op2;    //Sub
         'h2 : r = op1 * op2;    //Mul
         'h3 : r = op1 / op2;    //Div
         'h4 : r = ~op1;         //NOT
         'h5 : r = op1 & op2;    //AND
         'h6 : r = op1 | op2;    //OR
         'h7 : r = ~(op1 & op2); //NAND 
         'h8 : r = ~(op1 | op2); //NOR                
         'h9 : r = op1 ^ op2;    //XOR
         'hA : r = op1 << 1;     //Logical shift left
         'hB : r = op1 >> 1;     //Logical shift right
        endcase 
    end
    
endmodule