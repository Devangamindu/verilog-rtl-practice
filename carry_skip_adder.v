`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2026 10:12:51
// Design Name: 
// Module Name: carry_skip_adder
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


module carry_skip_adder(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output carry
    );
    wire [3:0]c,p;
    wire skip;
    assign p=a^b;
    fulladder_df f1(.a(a[0]),.b(b[0]),.c(cin),.s(sum[0]),.carry(c[0]));
    fulladder_df f2(.a(a[1]),.b(b[1]),.c(c[0]),.s(sum[1]),.carry(c[1]));
    fulladder_df f3(.a(a[2]),.b(b[2]),.c(c[1]),.s(sum[2]),.carry(c[2]));
    fulladder_df f4(.a(a[3]),.b(b[3]),.c(c[2]),.s(sum[3]),.carry(c[3]));
    and a1(s,p[0],p[1],p[2],p[3]);
    mux_df m1(.a(c[3]),.b(cin),.s(skip),.y(carry));
endmodule
