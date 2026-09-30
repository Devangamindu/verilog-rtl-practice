`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2025 10:37:30
// Design Name: 
// Module Name: demux1by8_s
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


module demux1by8_s(
    input y,s0,s1,s2,
    output a,b,c,d,e,f,g,h
    );
    demux1by4_s d1(.y(y),.s0(s0),.s1(s0),.a(w1),.b(0),.c(0),.d(w2));
     demux1by4_s d2(.y(w1),.s0(s1),.s1(s2),.a(a),.b(b),.c(c),.d(d));
      demux1by4_s d3(.y(w2),.s0(s1),.s1(s2),.a(e),.b(f),.c(g),.d(h));
endmodule
