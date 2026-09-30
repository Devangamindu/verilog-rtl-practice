`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2026 13:14:07
// Design Name: 
// Module Name: LUT_3input
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


module LUT_3input (
    input clk,enable,S,A,B,C,
    output reg Z ); 
    reg [7:0]q;
    always @(posedge clk)begin
        if(enable)
            q<={q[6:0],S};
        else
            q<=q;
    end
    always @(*) begin
        case({A,B,C})
            3'b000:Z=q[0];
            3'b001:Z=q[1];
            3'b010:Z=q[2];
            3'b011:Z=q[3];
            3'b100:Z=q[4];
            3'b101:Z=q[5];
            3'b110:Z=q[6];
            3'b111:Z=q[7];
        endcase
    end
   endmodule