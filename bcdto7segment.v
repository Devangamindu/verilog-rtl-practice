`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2025 21:00:11
// Design Name: 
// Module Name: bcdto7segment
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


module bcdto7segment(
    input [3:0] a,
    output reg [6:0] y
    );
    always @(*) begin
    case(a)
      4'b0000:y=7'b0111111;
      4'b0001:y=7'b0000110;
      4'b0010:y=7'b1101101;
      4'b0011:y=7'b1111001;
      4'b0100:y=7'b1110010;
      4'b0101:y=7'b1011011;
       4'b0110:y=7'b1011111;
        4'b0111:y=7'b0110001;
         4'b1000:y=7'b1111111;
          4'b1001:y=7'b1111011;
          default:y=7'b0000000;
    endcase
    
    end
    
endmodule
