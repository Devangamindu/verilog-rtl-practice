`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2026 10:28:12
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(
    input [3:0] a,b,
    input cin,
    output [3:0]sum,
    output cout
    );
  wire c1,c2,c3;
  full_adder f1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(c1));
  full_adder f2(.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.carry(c2));
  full_adder f3(.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.carry(c3));
  full_adder f4(.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.carry(cout));
endmodule
