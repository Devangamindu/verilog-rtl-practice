`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 23:24:37
// Design Name: 
// Module Name: swapping
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


module swapping(
    input [3:0]a_in,b_in,
    output [3:0]a_out,b_out
    );
  assign a_out=a_in+b_in;
endmodule
