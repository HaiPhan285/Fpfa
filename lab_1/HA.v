`timescale 1ns / 1ps

module HA(
    input a,
    input b,
    output c_out,
    output sum
);
    //{} is concatenation which mean combine all the signal into one larger value
    assign {c_out, sum} = a + b;

endmodule