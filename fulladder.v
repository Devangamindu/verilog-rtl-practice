`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2025 11:59:23
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input a,b,c,
    output sum,carry
    );
    wire w1,w2,w3;
    halfadder h1(.a(a),.b(b),.s(w1),.c(w2));
    halfadder h2(.a(w1),.b(c),.s(sum),.c(w3));
    or o1(carry,w2,w3);
endmodule
