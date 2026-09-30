`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 18:12:27
// Design Name: 
// Module Name: mod_6_counter
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


module mod_6_counter(
    input clk,rst,
    output reg [2:0] count
    );
 always @(posedge clk)
   begin
     if(rst==1'b1)
       count<=3'b000;
     else
        count<=count+1;
          if(count==5)
             count<=3'b000; 
   end
endmodule
