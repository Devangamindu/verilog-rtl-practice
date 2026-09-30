`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2026 11:20:21
// Design Name: 
// Module Name: p_en_casez
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
module p_en_casez(
    input [3:0] a,
    output reg [1:0]y
    );
 always @(*)
    begin
      casez(a)
         4'b0001:y=2'b00;
         4'b001z:y=2'b01;
         4'b01zz:y=2'b10;
         4'b1zzz:y=2'b11;
         default:y=2'bxx;
      endcase
    end
endmodule

