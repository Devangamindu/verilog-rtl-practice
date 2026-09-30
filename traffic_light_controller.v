
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2026 10:31:41
// Design Name: 
// Module Name: traffic_light_controller
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


module traffic_light_controller(
    input clk,
    input rst,
    output reg A_red, A_yellow, A_green,
    output reg B_red, B_yellow, B_green
);
localparam S0 = 2'b00; // A green
localparam S1 = 2'b01; // A yellow
localparam S2 = 2'b10; // B green
localparam S3 = 2'b11; // B yellow
reg [1:0] state, next_state;
reg [4:0] timer;
always @(posedge clk ) begin
    if (rst) begin
        state <= S0;
        timer <= 0;
    end else begin
        state <= next_state;
        timer <= timer + 1;
    end
end
always @(*) begin
    next_state = state;
    case (state)
        S0: if (timer == 15) next_state = S1;
        S1: if (timer == 5)  next_state = S2;
        S2: if (timer == 15) next_state = S3;
        S3: if (timer == 5)  next_state = S0;
    endcase
end
always @(*) begin
    A_red=0; A_yellow=0; A_green=0;
    B_red=0; B_yellow=0; B_green=0;
    case (state)
        S0: begin
            A_green = 1;B_red   = 1;
        end
        S1: begin
            A_yellow = 1;B_red    = 1;
        end
        S2: begin
            A_red   = 1;B_green = 1;
        end
        S3: begin
            A_red    = 1;B_yellow = 1;
        end
    endcase
end
endmodule
