`timescale 1ns/1ps
module half_adder_tb;

initial begin             //start code of half adder module
    $dumpfile("test.vcd");
    $dumpvars(0,half_adder_tb);
end

reg a_tb,b_tb;             //inputs
wire sum_tb,carry_tb;      //outputs

half_adder half_adder1(
    .a(a_tb),
    .b(b_tb),
    .sum(sum_tb),
    .carry(carry_tb)
);
initial begin              //intialize inputs
    a_tb = 1'b0;
    b_tb = 1'b0;
    # 5;                  //take 5 ns to finish step
    a_tb = 1'b0;
    b_tb = 1'b1;
    # 5;
    a_tb = 1'b1;
    b_tb = 1'b0;
    # 5;
    a_tb = 1'b1;
    b_tb = 1'b1;
    # 40;
    $finish;
end
endmodule                 //end code of half adder module

