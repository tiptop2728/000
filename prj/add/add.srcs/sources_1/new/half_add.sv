`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/31 22:25:37
// Design Name: 
// Module Name: half_add
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


module half_add(a, b, sum, cout);

    input a, b;
    output sum, cout;
    
    assign cout = a & b;
    assign sum = a ^ b;
    
endmodule
