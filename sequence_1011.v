
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2026 17:01:56
// Design Name: 
// Module Name: sequence_1011
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

//mealy overlapping
module sequence_1011(
    input clk,rst,din,
    output reg found
    );
 localparam idle=0;
 localparam s1=1;
 localparam s10=2;
 localparam s101=3;
 reg [3:0]p_state,n_state;
 always @(posedge clk)
 begin
   if(rst)
    p_state<=idle;
   else
    p_state<=n_state;
 end
 always @(*)
 begin
 found=1'b0;
   case(p_state)
     idle:
       begin
         if(din==1'b1)
           n_state=s1;
         else
           n_state=idle;
       end
     s1:
       begin
         if(din==1'b1)
           n_state=s1;
         else
           n_state=s10;
       end
     s10:
       begin
         if(din==1'b0)
           n_state=idle;
         else
           n_state=s101;
           end
     s101:
         begin
          if(din==1'b0)
             n_state=s1;
          else
            n_state=s10;
         end
      default:n_state=idle;
        endcase
         if(p_state==s10)
          found=1'b1;
         else 
         found=1'b0;
         
         
      end

endmodule

