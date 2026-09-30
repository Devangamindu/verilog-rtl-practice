`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2026 15:56:16
// Design Name: 
// Module Name: comparator_3bit
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


module comparator_3bit(
    input [2:0] a,b,
    output reg agtb,aeqb,altb
    );
 initial begin
 agtb=0;
 aeqb=0;
 altb=0;
 end
 always @(*)
   begin
     if(a==b)
      begin
       aeqb=1;
       agtb=0;
       altb=0;
      end
     else if(a>b)
        begin
         aeqb=0;
       agtb=1;
       altb=0;
        end
     else
       begin
       aeqb=0;
       agtb=0;
       altb=1;
       end
       
   end
endmodule
