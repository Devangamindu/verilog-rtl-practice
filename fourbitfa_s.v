`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2025 12:28:04
// Design Name: 
// Module Name: fourbitfa_s
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


module fourbitfa_s(
    input [3:0] a,b,
    input c,
    output [3:0] sum,
    output carry
    );
    wire w1,w2,w3;
    fulladder f1(.a(a[0]),.b(b[0]),.c(c),.sum(sum[0]),.carry(w1));
     fulladder f2(.a(a[1]),.b(b[1]),.c(w1),.sum(sum[1]),.carry(w2));
      fulladder f3(.a(a[2]),.b(b[2]),.c(w2),.sum(sum[2]),.carry(w3));
       fulladder f4(.a(a[3]),.b(b[3]),.c(w3),.sum(sum[3]),.carry(carry));
     
endmodule
