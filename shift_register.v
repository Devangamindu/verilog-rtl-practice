`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2026 19:37:37
// Design Name: 
// Module Name: shift_register
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
// 15.Write RTL for a 4-bit shift register:
//If dir = 1 → right shift
//If dir = 0 → left shift
//en = 0 → hold value.

//////////////////////////////////////////////////////////////////////////////////


module shift_register(
    input [3:0] n,
    input dir,en,clk,
    output reg [3:0] y
    );
  always @(posedge clk) begin
    if(en==0)
      y<=y;
     else if(dir==1)
         y=n>>1;
     else
          y=n<<1;
  end 
endmodule
