`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 19:59:50
// Design Name: 
// Module Name: Moore_Overlap_1101
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


module Moore_Overlap_1101(
                             input in,clk,rst,
                             output reg out);
                             
reg [2:0] present_state , next_state;
parameter S0=3'b000 , S1=3'b001 , S2=3'b010 , S3=3'b011 , S4=3'b100;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        present_state <= S0;
    end
    else begin
        present_state <= next_state;
    end
end

always @(in , present_state) begin
    case(present_state)
        S0 : begin
            next_state = in ? S1 : S0;
        end
        S1 : begin
            next_state = in ? S2 : S0;
        end
        S2 : begin
            next_state = in ? S2 : S3;
        end
        S3 : begin
            next_state = in ? S4 : S0;
        end
        S4 : begin
            next_state = in ? S2 : S0;
        end
        default : begin
            next_state=S0;
        end
    endcase
end

always @(present_state) begin
    case(present_state) 
        S0:begin out =0 ;end
        S1:begin out =0 ;end
        S2:begin out =0 ;end
        S3:begin out =0 ;end
        S4:begin out =1 ;end
        default: begin out =0;end
    endcase
end
endmodule
