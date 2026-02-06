`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 06:18:06
// Design Name: 
// Module Name: Melay_Nonoverlap_1101_tb
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


module Melay_Nonoverlap_1101_tb();
reg in,clk,rst;
wire out;



Melay_Nonoverlap_1101 dut (.in(in) , .rst(rst) , .clk(clk) , .out(out));

initial begin
    clk=1'b0;
    rst=1'b1;
    #10 rst=1'b0;
end

initial begin
    forever #5 clk=~clk;
end

initial begin
     @(posedge clk)in=1'b0;
     @(posedge clk)in=1'b1;
     @(posedge clk)in=1'b0;
     @(posedge clk)in=1'b1;
     @(posedge clk)in=1'b1;
     @(posedge clk)in=1'b0;
     @(posedge clk)in=1'b1;
     @(posedge clk)in=1'b0;
     @(posedge clk)in=1'b1;
     @(posedge clk)in=1'b1;
     @(posedge clk)in=1'b0;
     @(posedge clk)in=1'b1;
     @(posedge clk)in=1'b0;
     @(posedge clk)in=1'b1;
     #10 $finish;
end
endmodule
