`timescale 1ns / 1ps
 
module mux2to1 (
    input a,
    input b,
    input sel,
    output out
);
    //condition 
    /*same as
    *always_comb begin
        if(sel)
            out = a;
        else
            out = b;
    */
    assign out = (sel) ? a:b;


endmodule