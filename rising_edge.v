`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 16:51:43
// Design Name: 
// Module Name: rising_edge
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


module rising_edge(
    input clk,sig,
    output y
    );
      reg sig_d;
 always @(posedge clk )
   begin
     sig_d<=sig;
   end
     assign y=sig&~sig_d;
    endmodule
