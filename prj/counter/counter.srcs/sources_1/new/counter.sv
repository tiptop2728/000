`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/01 14:04:27
// Design Name: 
// Module Name: counter
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
module counter(
	input clk,
	input rst_n,
	output reg [7:0] count
);

//异步复位

always@(posedge clk,negedge rst_n)begin
	if(rst_n == 0)
		count <= 8'd0;
	else
		if(count < 255)
			count <= count + 8'd1;
		else
			count <= 8'd0;
end

//同步复位
//always@(posedge clk)begin
//	if(rst_n == 0)
//		count <= 8'd0;
//	else
//		if(count < 255)
//			count <= count + 8'd1;
//		else
//			count <= 8'd0;			
//end

endmodule
