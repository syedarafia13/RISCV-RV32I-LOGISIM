`timescale 1ns/1ps
module full_adder_tb;

initial begin             //start code of full adder module
    $dumpfile("test.vcd");
    $dumpvars(0,full_adder_tb);
end

reg a_tb,b_tb,cin_tb;     //inputs
wire sum_tb,cout_tb;      //outputs

full_adder full_adder1(
    .a(a_tb),
    .b(b_tb),
    .cin(cin_tb),
    .sum(sum_tb),
    .cout(cout_tb)
);
initial begin              //intialize inputs
    a_tb = 1'b0;
    b_tb = 1'b0;
    cin_tb = 1'b0;
    # 5;                  //take 5 ns to finish step
    a_tb = 1'b0;
    b_tb = 1'b0;
    cin_tb = 1'b1;
    # 5;
    a_tb = 1'b0;
    b_tb = 1'b1;
    cin_tb = 1'b0;
    # 5;
    a_tb = 1'b0;
    b_tb = 1'b1;
    cin_tb = 1'b1;
    # 5;
    a_tb = 1'b1;
    b_tb = 1'b1;
    cin_tb = 1'b0;
    # 5;
    a_tb = 1'b1;
    b_tb = 1'b0;
    cin_tb = 1'b1;
    # 5;
    a_tb = 1'b1;
    b_tb = 1'b1;
    cin_tb = 1'b0;
    # 5;
    a_tb = 1'b1;
    b_tb = 1'b1;
    cin_tb = 1'b1;
    # 5;
    $finish;
end
endmodule                 //end code of full adder module
