`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2025 14:21:38
// Design Name: 
// Module Name: mux2by1_s
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


module mux2by1_s(
    input a,b,s,
    output y1
    );
    wire w1,w2;
    andgat_s a1(.a(a),.b(~s),.y(w1));
    andgat_s a2(.a(b),.b(s),.y(w2));
    or o1(y1,w1,w2);
endmodule
