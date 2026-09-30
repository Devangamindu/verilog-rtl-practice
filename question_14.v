`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 10:32:58
// Design Name: 
// Module Name: question_14
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
//14.Design RTL for an 8-bit register:
//clr = 1 → clear register
//load = 1 → load input data
//Else → hold value
//Priority: clr > load > hold.

module question_14(
input clr,clk,load,
input [7:0]din,
output reg [7:0]dout
    );
always @(posedge clk) begin
  if(clr==1'b1)
    dout=8'b00000000;
  else if(load==1'b1)
     dout=din;
  else
      dout=dout;

end
endmodule
