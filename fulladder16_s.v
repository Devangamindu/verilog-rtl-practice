`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2025 11:39:04
// Design Name: 
// Module Name: fulladder16_s
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


module fulladder16_s(
    input [15:0]a,b,
    input c,
    output [15:0]sum1,
    output carry1
    );
    wire w1,w2,w3;
    fourbitfa_s fa1(.a(a[3:0]),.b(b[3:0]),.c(c),.sum(sum1[3:0]),.carry(w1));
    fourbitfa_s fa2(.a(a[7:4]),.b(b[7:4]),.c(w1),.sum(sum1[7:4]),.carry(w2));
    fourbitfa_s fa3(.a(a[11:8]),.b(b[11:8]),.c(w2),.sum(sum1[11:8]),.carry(w3));
    fourbitfa_s fa4(.a(a[15:12]),.b(b[15:12]),.c(w3),.sum(sum1[15:12]),.carry(carry1));
endmodule
