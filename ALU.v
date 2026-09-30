`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2025 18:44:13
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [3:0]a,b,
    output [31:0] Y
    );
  assign Y[3:0]=a|b;
  assign Y[7:4]=a&b;
  assign Y[11:8]=a+b;
  assign Y[15:12]=a-b;
  assign Y[19:16]=a==b;
  assign Y[23:20]=a && b;
  assign Y[27:24]=a<b;
  assign Y[31:28]=a>b;
endmodule
