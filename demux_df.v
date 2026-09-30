`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 13:17:21
// Design Name: 
// Module Name: demux_df
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


module demux_df(
    input y,s0,s1,
    output a,b,c,d
    );
    assign a=(~s1 & ~s0)?y:0;
    assign b=(~s1 & s0)?y:0;
    assign c=(s1 & ~s0)?y:0;
    assign d=(s1 & s0)?y:0;
endmodule
