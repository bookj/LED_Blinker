`timescale 1ns / 1ps

module CONTROL_LED(
    i_input,
    o_LED
    );
    
    input i_input;
    output [1:0] o_LED;
        
    // reg Q;
        
    // always @(i_input)
    // begin
    //     Q = i_input;
    // end
    
    assign o_LED[0] = Q;
    assign o_LED[1] = ~Q;
    
endmodule