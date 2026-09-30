`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 18:21:03
// Design Name: 
// Module Name: sequence_111
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
//moore overlapping

module sequence_111(
    input clk,rst,din,
    output reg found
    );
localparam idle=0;
localparam s1=1;
localparam s11=2;
localparam s111=3;
reg [1:0]p_state,n_state;
always @(posedge clk)
 begin
   if(rst==1'b1)
     p_state=idle;
   else
     p_state=n_state;
 end
 always @(*)
   begin
     found=1'b0;
      n_state=p_state;
      case(p_state)
        idle:n_state=(din)?s1:idle;
        s1:n_state=(din)?s11:idle;
        s11:n_state=(din)?s111:idle;
        s111:
             begin
               if(din==1'b1)
                begin
                 n_state=s111;
                 found=1'b1;
                end
                else
                  n_state=idle;
                  found=1'b1;
             end
          
      endcase
    end
endmodule
