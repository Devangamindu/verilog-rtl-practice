`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2025 08:37:23
// Design Name: 
// Module Name: demux1by2_s
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


module demux1by2_s(
    input y,s,
    output a,b
    );
    and1_s a1(.a(y),.b(~s),.y(a));
    and1_s a2(.a(y),.b(s),.y(b));
endmodule
