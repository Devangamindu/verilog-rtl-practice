`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 16:03:12
// Design Name: 
// Module Name: mod15_initialcout
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


module mod15_initialcout(
    input clk,rst,
    output reg [3:0] cout
    );
initial cout=4'b0000;
always @(posedge clk)
 begin
  if(rst==1'b1||cout==4'b1111)
     cout=4'b0000;
  else
    cout<=cout+1;
  
    
 end
endmodule
