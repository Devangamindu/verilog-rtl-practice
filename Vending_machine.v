`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2026 11:44:26
// Design Name: 
// Module Name: Vending_machine
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


module Vending_machine(
input clk,reset,product_available,
input [3:0] money,         
input [1:0] product_id,  
output reg dispense_product,insufficient,invalid,
output reg [3:0] return_change
    );
   reg [3:0]balance,cost; 
 reg [2:0]state;   
parameter idle=0,insert=1,select=2,check=3,dispense=4,return=5;
always @(posedge clk or posedge reset ) begin
  if(reset)begin
     state<=idle;
     balance<=0;
   end
   else begin
      case(state)
        idle:begin
        balance<=0;
        state<=insert;
        end
      insert: begin
        if(money>0) begin
          balance<=balance+money;
          state<=select;
        end
      end
      select:begin
        if(select)
          state<=check;
      end
      check: begin
        case(product_id)
          2'b00:cost=5;
          2'b01:cost=8;
          2'b10:cost=10;
          2'b11:cost=15;
      endcase
      if(! product_available)
        invalid<=1;
       else if(balance<cost)
         insufficient<=1;
       else
         insufficient<=0;
         state<=dispense;
      end   
      dispense:begin
      dispense_product<=1;
       return_change<=balance-cost;
       state<=return;
       end
       return:begin
         dispense_product<=0;
         state<=idle;
       end
      endcase
      end
      end
endmodule