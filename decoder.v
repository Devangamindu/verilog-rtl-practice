`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2025 09:20:51
// Design Name: 
// Module Name: decoder
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


module decoder(
    input  [2:0] din,     
    output [7:0] dout      
);
assign dout[0] = (~din[2]) & (~din[1]) & (~din[0]);
assign dout[1] = (~din[2]) & (~din[1]) &  (din[0]);
assign dout[2] = (~din[2]) &  (din[1]) & (~din[0]);
assign dout[3] = (~din[2]) &  (din[1]) &  (din[0]);
assign dout[4] =  (din[2]) & (~din[1]) & (~din[0]);
assign dout[5] =  (din[2]) & (~din[1]) &  (din[0]);
assign dout[6] =  (din[2]) &  (din[1]) & (~din[0]);
assign dout[7] =  (din[2]) &  (din[1]) &  (din[0]);

endmodule
