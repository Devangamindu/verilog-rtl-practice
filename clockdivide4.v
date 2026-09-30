///////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2026 21:29:33
// Design Name: 
// Module Name: clockdivide4
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


module clockdivide4(
    input clk,rst,
    output reg clkout
    );
    reg count;
initial begin
count<=1'b0;
end
 always @(posedge clk)
   begin
     if(rst==1'b1)
       clkout=1'b0;
     else
        count=count+1;
        if(count%2==0)
          clkout=~clkout;
        else
          clkout=clkout;
   end
 
endmodule
