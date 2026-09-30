`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 16:49:34
// Design Name: 
// Module Name: sisoinitial
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


module sisoinitial(
    input clk,rst,din,
    output reg dout
    );
reg [3:0] temp;
initial temp=4'b0000;
always @(posedge clk)
begin
  if(rst==1'b1)
   begin
    temp<=4'b0000;
    dout=1'b0;
   end
   else
     temp[0]=din;
     temp[1]=temp[0];
     temp[2]=temp[1];
     temp[3]=temp[2];
     dout=temp[3];
end
endmodule
