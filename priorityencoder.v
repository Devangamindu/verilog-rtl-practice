`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2025 09:19:56
// Design Name: 
// Module Name: priorityencoder
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


module priority_encoder_8x3 (
    input  [7:0] D,
    output [2:0] Y,
    output       V
);
assign V = |D;   
assign Y = (D[7]) ? 3'b111 :
           (D[6]) ? 3'b110 :
           (D[5]) ? 3'b101 :
           (D[4]) ? 3'b100 :
           (D[3]) ? 3'b011 :
           (D[2]) ? 3'b010 :
           (D[1]) ? 3'b001 :
           (D[0]) ? 3'b000 :
                    3'b000;  
endmodule