`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2026 11:02:48
// Design Name: 
// Module Name: p_en_casex
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


module p_en_casex(
    input [3:0] a,
    output reg [1:0]y
    );
 always @(*)
    begin
      casex(a)
         4'b0001:y=2'b00;
         4'b001x:y=2'b01;
         4'b01xx:y=2'b10;
         4'b1xxx:y=2'b11;
         default:y=2'bxx;
      endcase
    end
endmodule
