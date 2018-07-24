`timescale 1ns / 1ps

module COUNTER(
    i_CLK,
    i_EN,
    o_TOGGLE_1HZ
    );
    
    input i_CLK, i_EN;
    output o_TOGGLE_1HZ;
    
    reg [15:0] counter;
        
    initial
    begin
        counter = 0;
    end
    
    always @(posedge i_CLK or negedge i_EN)
    begin
        if(i_EN == 1'b0)
            counter <= 0;
        else
            counter <= counter + 1;
    end
    
    assign o_TOGGLE_1HZ = counter[15];
    
endmodule