`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2026 13:05:47
// Design Name: 
// Module Name: average
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


module average(
    input [3:0] a,b,c,d,e,f,
    output [7:0] average
    );
    wire [7:0]sum;
   assign sum=a+b+c+d+e+f;
   assign average =sum/6;
 
endmodule
