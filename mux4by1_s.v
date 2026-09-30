`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2025 14:34:00
// Design Name: 
// Module Name: mux4by1_s
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


module mux4by1_s(
    input a,b,c,d,s0,s1,
    output y
    );
    wire w1,w2;
    mux2by1_s m1(.a(a),.b(b),.s(s1),.y1(w1));
    mux2by1_s m2(.a(c),.b(d),.s(s1),.y1(w2));
    mux2by1_s m3(.a(w1),.b(w2),.s(s0),.y1(y));
endmodule
