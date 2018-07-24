`timescale 1ns / 1ps

module TOP(
    i_CLK,
    i_EN,
    o_LED
    );
    
    input i_CLK, i_EN;
    output [1:0] o_LED;
    
    wire w_TOGGLE_1HZ;
        
    COUNTER c1 (
        .i_CLK(i_CLK),
        .i_EN(i_EN),
        .o_TOGGLE_1HZ(w_TOGGLE_1HZ)
        );
        
    CONTROL_LED c2 (
        .i_input(w_TOGGLE_1HZ),
        .o_LED(o_LED)
        );
    
endmodule
