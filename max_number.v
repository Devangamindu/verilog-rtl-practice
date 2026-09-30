`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2026 13:52:24
// Design Name: 
// Module Name: max_number
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


module max_number(
    input [2:0] a,b,c,d,
    output reg [2:0] max
    );
 reg [2:0] max1,max2;
 always @(*) begin
   if(a>b)
      max1=a;
   else 
     max1=b;
    if (c>d)
      max2=c;
    else
      max2=d;
   if(max1>max2)
     max=max1;
   else
     max=max2;
 end
endmodule
