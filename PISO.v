`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2026 19:53:59
// Design Name: 
// Module Name: PISO
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


module PISO(
    input clk,rst,
    input [3:0] din,
    output reg dout
    );
reg [3:0]temp;
always @(posedge clk)
  begin
    if(rst==1'b1)
      begin
        temp<=din;
        dout<=1'b0;
      end
    else
      begin
        dout<=temp[3];
         temp[3]<=temp[2];
         temp[2]=temp[1];
         temp[1]=temp[0];
        
      end
   end
endmodule
