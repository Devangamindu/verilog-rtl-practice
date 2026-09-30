`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 10:11:35
// Design Name: 
// Module Name: LFSR
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


module LFSR(
    input clk,
    input reset,    
    output reg [4:0] q
); 
    always @(posedge clk) begin
        if(reset)
            q<=5'h1;
        else
            begin
                q[4]<=q[0]^1'b0;
                q[3]<=q[4];
                q[2]<=q[3]^q[0];
                q[1]<=q[2];
                q[0]<=q[1];
            end
        
    end
endmodule