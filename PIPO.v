`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2026 22:58:38
// Design Name: 
// Module Name: PIPO
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


module PIPO(
    input clk,rst,
    input [3:0] din,
    output reg [3:0] dout
    );
always @(posedge clk)
   begin
     if (rst==1'b1)
       dout<=4'b0000;
     else
       begin
         dout[3]=dout[2];
          dout[2]=dout[1];
          dout[1]=dout[0];
          dout[0]=din;
       end
   end 
endmodule
