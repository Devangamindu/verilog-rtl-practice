`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 17:33:37
// Design Name: 
// Module Name: question_11
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
// 11.Write RTL code for a register Q such that:
//If rst = 1 → Q = 0
//Else if E = 1 and B = 0 → Q = Q + 1
//Else if E = 1 and B = 1 → Q = Q - 1
//Else → Q holds previous value

//////////////////////////////////////////////////////////////////////////////////


module question_11(
    input rst,enable,clk,b,
    output reg [3:0] q
    );
 always @(posedge clk)
   begin
     if(rst==1'b1)
       q=4'b0000;
      else if(enable==1'b1 &&b==1'b0)
          q=q+1;
       else if(enable==1'b1 &&b==1'b1)
          q=q-1;
       else
         q<=q;
          
   end
endmodule
