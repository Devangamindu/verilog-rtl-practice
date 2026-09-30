
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 19:01:28
// Design Name: 
// Module Name: odd_or_even
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


module odd_or_even(
    input [3:0] a,
    output reg even,odd
    );
 always @(*) begin
   if(a%2==0)
    begin
     even=1'b1;
     odd=1'b0;
     end
   else
    begin
     odd=1'b1;
     even=1'b0;
    end
 end
endmodule
