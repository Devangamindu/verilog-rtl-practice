`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2025 13:08:30
// Design Name: 
// Module Name: muxx_df
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


module muxx_df(
    input s0,s1,a,b,c,d,
    output y
    );
    assign y=s0?(s1?d:c):(s1?b:a);
endmodule
