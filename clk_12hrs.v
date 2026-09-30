`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2026 09:59:28
// Design Name: 
// Module Name: clk_12hrs
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


module clk_12hrs(
    input clk,reset,ena,
    output reg pm,
    output reg [7:0] hh,mm,ss);

always @(posedge clk) begin
    if (reset) begin
        hh <= 8'h12;
        mm <= 8'h00;
        ss <= 8'h00;
        pm <= 0;
    end
    else if (ena) begin
        if (ss == 8'h59) begin
            ss <= 8'h00;
            if (mm == 8'h59) begin
                mm <= 8'h00;
               if (hh == 8'h11) begin
    hh <= 8'h12;
    pm <= ~pm;      
end
else if (hh == 8'h12)
    hh <= 8'h01;
else if (hh[3:0] == 9) begin
    hh[3:0] <= 0;
    hh[7:4] <= hh[7:4] + 1;
end
else
    hh[3:0] <= hh[3:0] + 1;
            end
            else begin
                if (mm[3:0] == 9) begin
                    mm[3:0] <= 0;
                    mm[7:4] <= mm[7:4] + 1;
                end
                else
                    mm[3:0] <= mm[3:0] + 1;
            end
        end
        else begin
            if (ss[3:0] == 9) begin
                ss[3:0] <= 0;
                ss[7:4] <= ss[7:4] + 1;
            end
            else
                ss[3:0] <= ss[3:0] + 1;
        end
    end
end

endmodule