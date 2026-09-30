`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 12:05:30
// Design Name: 
// Module Name: fulladder_df
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


module fulladder_df(
    input a,b,c,
    output s,carry
    );
    assign s=a^b^c;
    assign carry=(a&b)|(b&c)|(c&a);
endmodule
