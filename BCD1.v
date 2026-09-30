`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2026 11:06:35
// Design Name: 
// Module Name: BCD1
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


module BCD1(
    input [3:0] a,b,
    input cin,
    output [3:0] sum,
    output carry
    );
    wire c1;
    wire [3:0]sum1;
    wire [3:0]bcd;
  ripple_carry_adder r1(.a(a),.b(b),.cin(cin),.sum(sum1),.cout(c1));
  assign bcd=(c1||(sum1>4'd9))?4'b0110:4'b0000;
  ripple_carry_adder r2(.a(sum1),.b(bcd),.cin(1'b0),.sum(sum),.cout(carry));
endmodule
