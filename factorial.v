`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2026 12:20:43
// Design Name: 
// Module Name: factorial
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


module factorial(
    input [3:0] n,
    output reg [15:0] factorial
    );
  integer i;
  always @(*) begin
    factorial=1;
    if(n==0 || n==1)
      factorial=1;
    else 
      for(i=1;i<=n;i=i+1)
        factorial=factorial*i;
  end
endmodule
