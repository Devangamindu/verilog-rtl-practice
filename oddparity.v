`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2026 22:17:11
// Design Name: 
// Module Name: oddparity
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


module oddparity(
    input [7:0] a,
    output y
    );
  assign y=~(a[0]^a[1]^a[2]^a[3]^a[4]^a[5]^a[6]^a[7]);
endmodule
