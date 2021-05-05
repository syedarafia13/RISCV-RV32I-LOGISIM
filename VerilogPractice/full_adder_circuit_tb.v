`timescale 1ns/1ps
module full_adder_circuit_tb;  //start code of full adder module

initial begin             
    $dumpfile("test.vcd");
    $dumpvars(0,full_adder_circuit_tb);
end

reg a_i_tb, b_i_tb, cin_i_tb;
wire sum_o_tb, cout_o_tb;

full_adder_circuit full_adder_circuit1(
      .a_i(a_i_tb),
      .b_i(b_i_tb),
      .cin_i(cin_i_tb),
      .sum_o(sum_o_tb),
      .cout_o(cout_o_tb)
);
initial begin              //intialize inputs
    a_i_tb = 1'b0;
    b_i_tb = 1'b0;
    cin_i_tb = 1'b0;
    # 5;                  //take 5 ns to finish step
    a_i_tb = 1'b0;
    b_i_tb = 1'b0;
    cin_i_tb = 1'b1;
    # 5;
    a_i_tb = 1'b0;
    b_i_tb = 1'b1;
    cin_i_tb = 1'b0;
    # 5;
    a_i_tb = 1'b0;
    b_i_tb = 1'b1;
    cin_i_tb = 1'b1;
    # 5;
    a_i_tb = 1'b1;
    b_i_tb = 1'b1;
    cin_i_tb = 1'b0;
    # 5;
    a_i_tb = 1'b1;
    b_i_tb = 1'b0;
    cin_i_tb = 1'b1;
    # 5;
    a_i_tb = 1'b1;
    b_i_tb = 1'b1;
    cin_i_tb = 1'b0;
    # 5;
    a_i_tb = 1'b1;
    b_i_tb = 1'b1;
    cin_i_tb = 1'b1;
    # 5;
    $finish;
end
endmodule                 //end code of full adder module