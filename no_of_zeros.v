`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2026 13:50:02
// Design Name: 
// Module Name: no_of_zeros
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


module no_of_zeros(
    input [7:0] n,
    output reg [3:0] count
    );
  integer i;
  always @(*)begin
  count=0;
   for(i=0;i<=7;i=i+1)
   begin
    if(n[i]==1'b0)
      count=count+1;
    end
    end
endmodule
