`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2026 19:42:14
// Design Name: 
// Module Name: SISO
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


module SISO(
    input clk,rst,din,
    output reg dout
    );
 reg [3:0] temp;
 always @(posedge clk)
   begin
     if (rst==1'b1)
       begin
         temp <=4'b0000;
         dout<=1'b0;
       end
     else
       begin
         dout<=temp[3];
         temp[3]<=temp[2];
         temp[2]=temp[1];
         temp[1]=temp[0];
         temp[0]=din;
       end
   end
endmodule
