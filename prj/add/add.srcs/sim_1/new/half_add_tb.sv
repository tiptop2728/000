`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2023/01/31 22:28:21
// Design Name:
// Module Name: half_add_tb
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
module half_add_tb;

    reg a, b;
    wire    sum;
    wire 	cout;
    
    half_add DUT(
        .a(a),
        .b(b),
        .sum(sum),
        .cout(cout)
    );
    initial begin
        a = 1; b = 0;
        #20ns
        a = 1; b = 1;
        #20ns
        a = 0; b = 0;
        #20ns
        a = 0; b = 1;
        #20ns;
     end

 endmodule
