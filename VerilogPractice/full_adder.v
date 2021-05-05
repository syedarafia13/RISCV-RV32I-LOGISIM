`timescale 1ns/1ps

module full_adder(            //start code of full adder module
    a,b,cin,                  //input
    sum,cout                  //output
);
input wire a,b,cin;
output wire sum,cout;

assign sum = (a ^ b) ^ cin;     //sum bit
assign cout = ((a & b) | (b & cin) | (a & cin)); //carry bit

endmodule                    //end code of full adder module