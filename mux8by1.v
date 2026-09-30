`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2025 08:13:22
// Design Name: 
// Module Name: mux8by1
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


module mux8by1(
    input a,b,c,d,e,f,g,h,s0,s1,s2,
    output y
    );
    wire w1,w2;
    mux4by1_s m1(.a(a),.b(b),.c(c),.d(d),.s0(s2),.s1(s1),.y(w1));
    mux4by1_s m2(.a(e),.b(f),.c(g),.d(h),.s0(s2),.s1(s1),.y(w2));
    mux4by1_s m3(.a(w1),.b(0),.c(0),.d(w2),.s0(s0),.s1(s0),.y(y));
endmodule
