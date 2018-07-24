`timescale 1ns / 1ps

module TOP_tb();
    reg r_CLK, r_EN;
    wire [1:0] w_LED;
    
    TOP t0 (
        .i_CLK(r_CLK),
        .i_EN(r_EN),
        .o_LED(w_LED)
        );
    
    initial
    begin
        #0      r_CLK = 1'b0;
                r_EN = 1'b0;
        #10     r_EN = 1'b1;
    end
    
    always
        #15258  r_CLK = ~r_CLK;
        
endmodule
