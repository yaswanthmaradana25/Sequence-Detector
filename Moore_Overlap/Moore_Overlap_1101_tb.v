`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2026 20:07:20
// Design Name: 
// Module Name: Moore_Overlap_1101_tb
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


module Moore_Overlap_1101_tb();
    reg in,clk,rst;
    wire out;
    
    Moore_Overlap_1101 dut(.in(in) , .clk(clk) , .rst(rst) , .out(out));
    
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
        @(posedge clk)in=1'b1;
        @(posedge clk)in=1'b1;
        @(posedge clk)in=1'b1;
        @(posedge clk)in=1'b0;
        @(posedge clk)in=1'b1;
        @(posedge clk)in=1'b0;
        @(posedge clk)in=1'b1;
        #10 $finish;
    end
endmodule