`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2026 10:04:22
// Design Name: 
// Module Name: PAL_design
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


module PAL_design(
    input a,b,c,d,
    output x,y,z
    );
    wire [6:0]i;
    assign i[0]=~a&c&~d;
    assign i[1]=a&b&d;
    assign i[2]=~a&~c&~d&b;
    assign i[3]=~b&c;
    assign i[4]=a&~c&~d;
    assign i[5]=~a&~c&~d&~b;
    assign i[6]=a&~d;
    assign x=i[1]|i[3]|i[5];
    assign y=i[0]|i[2]|i[4];
     assign z=i[0]|i[1]|i[3]|i[6];
endmodule
