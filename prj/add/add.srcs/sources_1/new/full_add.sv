`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/01 10:47:22
// Design Name: 
// Module Name: full_add
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
module full_add(a, b, cin, sum, cout);

    input a, b, cin;
    output sum, cout;
    
    wire cout1, cout2;
    wire sum1;
    
    half_add half_add_inst1(
        .a(a),
        .b(b),
        .sum(sum1),
        .cout(cout1)
    );
    
    half_add half_add_inst2(
        .a(sum1),
        .b(cin),
        .sum(sum),
        .cout(cout2)
    );
    
    assign cout = cout1 | cout2;
    
endmodule
