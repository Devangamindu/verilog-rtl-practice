`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2025 12:01:03
// Design Name: 
// Module Name: fourbitadder_and_subtractor
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


module fourbitadder_and_subtractor(
    input [3:0] a,b,
    input m,
    output [3:0] sum,
    output cout
    );
    wire [3:0]b_xor;
    wire c1,c2,c3;
 xorgate_s x0(.a(b[0]),.b(m),.y(b_xor[0]));
 xorgate_s x1(.a(b[1]),.b(m),.y(b_xor[1]));
 xorgate_s x2(.a(b[2]),.b(m),.y(b_xor[2]));
 xorgate_s x3(.a(b[3]),.b(m),.y(b_xor[3]));
 fulladder f0(.a(a[0]),.b(b_xor[0]),.c(m),.sum(sum[0]),.carry(c1));
 fulladder f1(.a(a[1]),.b(b_xor[1]),.c(m),.sum(sum[1]),.carry(c2));
 fulladder f2(.a(a[2]),.b(b_xor[2]),.c(m),.sum(sum[2]),.carry(c3));
 fulladder f3(.a(a[3]),.b(b_xor[3]),.c(m),.sum(sum[3]),.carry(cout));
endmodule
