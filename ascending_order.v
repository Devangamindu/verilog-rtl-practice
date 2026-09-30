`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2026 11:39:38
// Design Name: 
// Module Name: ascending_order
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


module ascending_order(
    input [3:0] a,b,c,d,
    output [3:0] w,x,y,z
    );
 wire [3:0]ab_min,ab_max,ac_max,ac_min,bd_max,bd_min,cd_max,cd_min;
 assign ab_min=(a<b)?a:b;
 assign ab_max=(a<b)?b:a;
 assign cd_min=(c<d)?c:d;
 assign cd_max=(c<d)?d:c;
 assign ac_min=(ab_min<cd_min)?ab_min:cd_min;
 assign ac_max=(ab_min<cd_min)?cd_min:ab_min;
 assign bd_min=(ab_max<cd_max)?ab_max:cd_max;
 assign bd_max=(ab_max<cd_max)?cd_max:ab_max;
 assign x=(ac_max<bd_min)?ac_max:bd_min;
 assign y=(ac_max<bd_min)?bd_min:ac_max;
 assign w=ac_min;
 assign z=bd_max;
 
endmodule
