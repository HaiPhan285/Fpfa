module ArrMult_4bit_tb();
reg [3:0] a_tb, b_tb;
wire [7:0] prod_tb;

arrMult_4bit uut(.a(a_tb), .b(b_tb), .prod(prod_tb));


//do for the gtkwave and the waveform
initial begin
    $dumpfile("arrMult_4_tb.vcd");
    $dumpvars(0, ArrMult_4bit_tb);
end

initial begin
    a_tb = 4'b1101;
    b_tb = 4'b1001;
    #10
    a_tb = 4'b0110;
    b_tb = 4'b1011;
    #10
    a_tb = 4'b0001;
    b_tb = 4'b0000;
    #10
    a_tb = 4'b1111;
    b_tb = 4'b0101;
    #10
    a_tb = 4'b0100;
    b_tb = 4'b1010;
    #10
    a_tb = 4'b1001;
    b_tb = 4'b0111;
    #10
   
    
    a_tb = 4'b0000;
    b_tb = 4'b0000;
    #10
    a_tb = 4'b1101;
    b_tb = 4'b1001;
    #10
    a_tb = 4'b1010;
    b_tb = 4'b0010;
    #10
    a_tb = 4'b1111;
    b_tb = 4'b1111;
    #10
  
    $finish;
    

end
endmodule