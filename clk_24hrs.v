`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2026 10:33:08
// Design Name: 
// Module Name: clk_24hrs
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


module clk_24hrs(
    input clk,rst,
    output reg [4:0]hrs,
    output reg [5:0]min,
    output reg [5:0]sec
    );
  always @(posedge clk or posedge rst)
  begin
    if(rst) begin
      hrs<=0;
      min<=0;
      sec<=0;
    end
    else begin
      if(sec==59)
         sec<=0;
        else
          sec<=sec+1;
        if(min==59)
           min<=0;
          else
            min<=min+1;
           if(hrs==23)
             hrs<=0;
            else
              hrs<=hrs+1;
         end   
 end
endmodule
