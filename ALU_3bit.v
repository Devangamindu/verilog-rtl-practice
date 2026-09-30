`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2026 16:16:49
// Design Name: 
// Module Name: ALU_3bit
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


module ALU_3bit(
    input [2:0] a,b,
    input [1:0]opcode,
    output reg [3:0] add,sub,out_and,out_or
    );
  initial begin
  add=4'b0000;
  sub=4'b0000;
  out_and=1'b0;
  out_or=1'b0;
  end
 always @(*)
   begin
     case(opcode)
       2'b00:add=a+b;
       2'b01:sub=a-b;
       2'b10:out_and=a&b;
       2'b11:out_or=a|b;
     endcase
   end
endmodule
