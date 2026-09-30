`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 22:06:57
// Design Name: 
// Module Name: binary_to_gray
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


module binary_to_gray(
    input [3:0] b,
    output [3:0] g
    );
  assign g[3]=b[3];
  assign g[2]=b[2]^b[3];
  assign g[1]=b[2]^b[1];
  assign g[0]=b[1]^b[0];
endmodule
