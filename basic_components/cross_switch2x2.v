`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 01:51:30
// Design Name: 
// Module Name: cross_switch2x2
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


module cross_switch2x2
#(parameter WIDTH = 8)
(
input [WIDTH-1:0] a,b,
input s1,s2,
output [WIDTH-1:0] x,y
    );

	assign x = (s1==0)? b:a;
	assign y = (s2==0)? b:a;

endmodule
