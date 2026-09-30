`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2026 10:34:40
// Design Name: 
// Module Name: mux4by1_case
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


module mux4by1_case(
    input a,b,c,d,
    input [1:0] s,
    output reg y
    );
 always @(*)
   case(s)
     2'b00:y=a;
     2'b01:y=b;
     2'b10:y=c;
     2'b11:y=d;
   endcase   
endmodule
