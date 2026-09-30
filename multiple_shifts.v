`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2026 09:59:04
// Design Name: 
// Module Name: multiple_shifts
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


module multiple_shifts(
    input clk,
    input load,
    input ena,
    input [1:0] amount,
    input [63:0] data,
    output reg [63:0] q); 
    
    always@(posedge clk)begin
        if(load)
            q <= data;
        else if(ena) begin
            case(amount)
                2'b00: q <= {q[62:0],1'b0};
                2'b01: q <= {q[55:0],8'd0};
                2'b10: q <= {q[63],q[63:1]};
                2'b11: q <= {{8{q[63]}},q[63:8]};
                default: q<= q;
            endcase
        end else
            q <= q;
    end

endmodule