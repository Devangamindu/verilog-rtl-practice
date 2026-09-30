`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2026 18:50:14
// Design Name: 
// Module Name: CSA
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


module CSA(
    input [3:0]a,b,
    input c,
    output [3:0] sum,
    output carry
    );
   wire c0,c1,c2,c3,c4,c5,c6,c7,s0,s1,s2,s3,s4,s5,s6,s7;
 fulladder_df f1(.a(a[0]),.b(b[0]),.c(1'b0),.s(s0),.carry(c0));
 fulladder_df f2(.a(a[1]),.b(b[1]),.c(c0),.s(s1),.carry(c1));
 fulladder_df f3(.a(a[2]),.b(b[2]),.c(c1),.s(s2),.carry(c2));
 fulladder_df f4(.a(a[3]),.b(b[3]),.c(c2),.s(s3),.carry(c3));
 fulladder_df f5(.a(a[0]),.b(b[0]),.c(1'b1),.s(s4),.carry(c4));
 fulladder_df f6(.a(a[1]),.b(b[1]),.c(c4),.s(s5),.carry(c5));
 fulladder_df f7(.a(a[2]),.b(b[2]),.c(c5),.s(s6),.carry(c6));
 fulladder_df f8(.a(a[3]),.b(b[3]),.c(c6),.s(s7),.carry(c7));
 mux_df m1(.a(c3),.b(c7),.s(c),.y(carry));
 mux_df m2(.a(s0),.b(s4),.s(c),.y(sum[0]));
 mux_df m3(.a(s1),.b(s5),.s(c),.y(sum[1]));
 mux_df m4(.a(s2),.b(s6),.s(c),.y(sum[2]));
 mux_df m5(.a(s3),.b(s7),.s(c),.y(sum[3]));
 
endmodule
