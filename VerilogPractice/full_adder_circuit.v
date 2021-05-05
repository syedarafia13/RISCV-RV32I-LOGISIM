`timescale 1ns/1ps
module full_adder_circuit(
     a_i, b_i, cin_i,              //input
     sum_o, cout_o                //output
);
input wire a_i , b_i , cin_i;
output wire sum_o , cout_o;

wire fa1,fa2,fa3;

xor xor1(fa1,a_i,b_i);
and and1(fa2,a_i,b_i);
xor xor2(sum_o,fa1,cin_i);
and and2(fa3,fa1,cin_i);
or or1(cout_o,fa3,fa2);

endmodule
