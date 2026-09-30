`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 13:40:27
// Design Name: 
// Module Name: swap_without_temp
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


module swap_without_temp(
    input clk,rst,
    output reg [3:0] a1,a2
    );
 always @(posedge clk or posedge rst)
   begin
   if(rst==1'b1)
    begin
     a1<=4'b1010;
     a2<=4'b1110;
   end
   else
     begin
     a1<=a2;
     a2<=a1;
    end
   end
endmodule
