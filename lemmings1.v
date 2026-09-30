`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2026 10:12:39
// Design Name: 
// Module Name: lemmings1
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


module lemmings1(
    input clk,
    input areset,   
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah ); 
 reg [1:0]cs,ns;
    parameter l=2'b00,r=2'b01,f_l=2'b10,f_r=2'b11;
    always @(posedge clk or posedge areset) begin
        if(areset)
            cs=l;
        else
            cs=ns;
    end
    always @(*)begin
        case(cs)
            l:ns=~ground?f_l:(bump_left?r:l);
            r:ns=~ground?f_r:(bump_right?l:r);
            f_l:ns=ground?l:f_l;
            f_r:ns=ground?r:f_r;
        endcase
    end
    assign walk_left=cs==l;
    assign walk_right=cs==r;
    assign aaah=(cs==f_l)|(cs==f_r);
endmodule
