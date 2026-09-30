`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2026 11:22:14
// Design Name: 
// Module Name: one_hot_fsm
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


module one_hot_fsm (
 input [5:0] y,
  input w,
   output Y1,
    output Y3 );
 assign Y1=w&(y[0]);
 assign Y3=~w &(y[1]|y[2]|y[4]|y[5]);
 endmodule