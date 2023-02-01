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
//ģ��ʱ���ź�
initial clk = 1;
always #10 clk = !clk;//�ӳ�10ns��תһ�Σ�һ�����ھ���20ns

//ģ�⸴λ
initial begin
	rst_n = 0;//��λ��Ч
	#200
	rst_n = 1;//��λ����λ��Ч����������������
	#6009   //0~255һ�����ڣ�ÿ�������20ns,20*256=5120,ֻҪ����5120���Ͱ���һ�����ڡ�
	//9��20ns�У������鿴��λ�ź���һ��clk�����ڵı仯��
	//���ۣ��첽��λ��rst_n=0ʱ�ͱ仯��ͬ����λ��clk�����ص�ʱ���⵽rst_n=0ʱ�ű仯��
	rst_n = 0;
	#300
	rst_n = 1;
	#3000
	$stop; //ֹͣ����#3000��ӷֺ��޷�ֹͣ��������always #10 clk = !clk;��������
end
endmodule
