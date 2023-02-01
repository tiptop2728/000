`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/01 12:40:38
// Design Name: 
// Module Name: full_add4
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
module full_add4(// ¿¼ÂÇ½øÎ»
	input [3:0] a,
	input [3:0] b,
	input cin,
	output [3:0] sum,
	output cout
);
wire cout0;
wire cout1;
wire cout2;
wire cout3;
full_add full_add1_inst1(
	.a(a[0]),
	.b(b[0]),
	.cin(cin),
	.cout(cout0),
	.sum(sum[0])
);
full_add full_add1_inst2(
	.a(a[1]),
	.b(b[1]),
	.cin(cout0),
	.cout(cout1),
	.sum(sum[1])
);
full_add full_add1_inst3(
	.a(a[2]),
	.b(b[2]),
	.cin(cout1),
	.cout(cout2),
	.sum(sum[2])
);
full_add full_add1_inst4(
	.a(a[3]),
	.b(b[3]),
	.cin(cout2),
	.cout(cout3),
	.sum(sum[3])
);

//assign sum = {sum[3],sum[2],sum[1],sum[0]};
assign sum = sum;
assign cout = cout3;

endmodule
