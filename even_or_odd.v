`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 18:57:27
// Design Name: 
// Module Name: even_or_odd
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


module even_or_odd(
    input [3:0] a,
    output reg even,odd
    );
  always @(*) begin
    if(a%2==0)
      even=1'b1;
    else
      odd=1'b1;
  end
endmodule
