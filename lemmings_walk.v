`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2026 10:06:06
// Design Name: 
// Module Name: lemmings_walk
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lemmings_walk(
    input clk,
    input areset,    
    input bump_left,
    input bump_right,
    output walk_left,
    output walk_right);  

    parameter LEFT=0, RIGHT=1;
    reg state, next_state;

    always @(*) begin
        case(state)
           LEFT:next_state=bump_left?RIGHT:LEFT;
            RIGHT:next_state=bump_right?LEFT:RIGHT;
        endcase
    end

    always @(posedge clk, posedge areset) begin
        if(areset)
            state=LEFT;
        else
            state=next_state;
    end
    assign walk_left = (state == LEFT);
    assign walk_right = (state == RIGHT);

endmodule
