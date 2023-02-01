`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/01 11:13:47
// Design Name: 
// Module Name: full_add_tb
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
module full_add_tb;
	reg a;
	reg b;
	reg cin;
	wire cout;
	wire sum;
	
    full_add DUT(
        .a(a),
        .b(b),
        .cin(cin),
        .cout(cout),
        .sum(sum)
    );

    initial begin
        a = 0; b = 0; cin = 0;
        #20
        a = 0; b = 0; cin = 1;
        #20
        a = 0; b = 1; cin = 0;
        #20
        a = 0; b = 1; cin = 1;
        #20
        
        a = 1; b = 0; cin = 0;
        #20
        a = 1; b = 0; cin = 1;
        #20
        a = 1; b = 1; cin = 0;
        #20
        a = 1; b = 1; cin = 1;
        #20;
    end

endmodule
