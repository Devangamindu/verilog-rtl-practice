`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 11:16:29
// Design Name: 
// Module Name: fulladd
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


module fulladd(
    input [2:0] a,
    output reg [1:0]s
    );
always @(*)
  begin
    case(a)
      3'b000:s=2'b00;
      3'b001:s=2'b10;
      3'b010:s=2'b10;
      3'b011:s=2'b01;
      3'b100:s=2'b10;
      3'b101:s=2'b01;
      3'b110:s=2'b01;
      3'b111:s=2'b11;
    endcase
  end
endmodule
