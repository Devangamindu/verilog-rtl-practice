`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 14:23:29
// Design Name: 
// Module Name: mod8
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


module mod8(
    input clk,rst,
    output reg [3:0]cout
    );
    always @(posedge clk)
      begin
        if(rst==1'b1)
          cout<=4'b0000;
        else if
         
           (cout==4'b1000)
             cout<=4'b0000;
           else
            cout<=cout+1;
               
      end
endmodule