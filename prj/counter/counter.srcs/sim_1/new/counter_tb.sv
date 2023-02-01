`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/01 14:05:51
// Design Name: 
// Module Name: counter_tb
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
module counter_tb;
	reg clk;
	reg rst_n;
	wire [7:0] count;
counter counter_inst(
	.clk(clk),
	.rst_n(rst_n),
	.count(count)
);
//模拟时钟信号
initial clk = 1;
always #10 clk = !clk;//延迟10ns跳转一次，一个周期就是20ns

//模拟复位
initial begin
	rst_n = 0;//复位有效
	#200
	rst_n = 1;//置位，复位无效，计数器正常计数
	#6009   //0~255一个周期，每个数间隔20ns,20*256=5120,只要大于5120，就包含一个周期。
	//9在20ns中，用来查看复位信号在一个clk周期内的变化。
	//结论：异步复位在rst_n=0时就变化。同步复位在clk上升沿的时候检测到rst_n=0时才变化。
	rst_n = 0;
	#300
	rst_n = 1;
	#3000
	$stop; //停止。在#3000后加分号无法停止整个程序，always #10 clk = !clk;还在运行
end
endmodule
