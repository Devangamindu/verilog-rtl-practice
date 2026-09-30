`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2026 13:01:09
// Design Name: 
// Module Name: mod15
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


module mod15(
    input clk,rst,
    output reg [3:0]cout
    );
    always @(posedge clk)
      begin
        if(rst==1'b1)
          cout<=4'b0000;
        else
             cout<=cout+1;
          
      end
endmodule