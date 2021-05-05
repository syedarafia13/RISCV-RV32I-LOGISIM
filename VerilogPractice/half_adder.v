`timescale 1ns/1ps

module half_adder(         //start code of half adder module
     a,b,                  //inputs
     sum,carry             //outputs
);

 input wire a,b;
 output wire sum,carry;

 assign sum = a ^ b;        //sum bit
 assign carry = a & b;      //carry bit

endmodule                 //end code of half adder module

