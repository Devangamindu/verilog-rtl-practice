`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2026 23:11:19
// Design Name: 
// Module Name: carry_save_adder
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


module carry_save_adder(
    input [3:0] a,b,c,
    output [4:0]sum,
    output carry
    );
    wire [3:0] c1,s1,c2; 
 fulladder_df f1(.a(a[0]),.b(b[0]),.c(c[0]),.s(sum[0]),.carry(c1[0]));
 fulladder_df f2(.a(a[1]),.b(b[1]),.c(c[1]),.s(s1[1]),.carry(c1[1]));
 fulladder_df f3(.a(a[2]),.b(b[2]),.c(c[2]),.s(s1[2]),.carry(c1[2]));
 fulladder_df f4(.a(a[3]),.b(b[3]),.c(c[3]),.s(s1[3]),.carry(c1[3]));
 fulladder_df f5(.a(c1[0]),.b(s1[1]),.c(1'b0),.s(sum[1]),.carry(c2[1]));
 fulladder_df f6(.a(c1[1]),.b(s1[2]),.c(c2[1]),.s(sum[2]),.carry(c2[2]));
 fulladder_df f7(.a(c1[2]),.b(s1[3]),.c(c2[2]),.s(sum[3]),.carry(c2[3]));
 fulladder_df f8(.a(c1[3]),.b(1'b0),.c(c2[3]),.s(sum[4]),.carry(carry));
 endmodule
