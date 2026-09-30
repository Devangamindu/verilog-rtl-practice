`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2025 12:22:46
// Design Name: 
// Module Name: mux2_s
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


module mux2_s(
    input s,a,b,
    output y1
    );
    wire w1,w2;
    and_s a1(w1,a,~s);
    and_s a2(w2,b,s);
    or o1(y1,w1,w2);
endmodule
