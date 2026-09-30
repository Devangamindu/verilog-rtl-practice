`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2025 08:41:36
// Design Name: 
// Module Name: demux1by4_s
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


module demux1by4_s(
    input y,s0,s1,
    output a,b,c,d
    );
    wire w1,w2;
    demux1by2_s d1(.y(y),.s(s0),.a(w1),.b(w2));
    demux1by2_s d2(.y(w1),.s(s1),.a(a),.b(b));
    demux1by2_s d3(.y(w2),.s(s1),.a(c),.b(d));
endmodule
