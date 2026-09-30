`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 22:56:00
// Design Name: 
// Module Name: bcd
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


module bcd(
    input [3:0] a,b,
    input cin,
    output reg [3:0] sum,
    output reg cout
    );
  reg [4:0]sum1;
  always @(*) begin
  sum1<=a+b+cin;
  if(sum1>9)
    begin
    sum<=sum1+6;
    cout=1'b0;
    end
   else
    sum<=sum1;
    cout<=1'b0;
  end  
endmodule
