`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2026 13:31:14
// Design Name: 
// Module Name: downcounter
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


module downcounter(
    input clk,rst,
    output reg [3:0] count
    );
    always @(posedge clk)
      begin
        if(rst==1'b1)
          count<=4'b1111;
        else
           begin
             if(count==4'b0000)
               count<=4'b1111;
             else  
                count<=count-1;
           end
      end
endmodule
