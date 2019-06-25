`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 19:28:40
// Design Name: 
// Module Name: buadder
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


module buadder
#(parameter L = 4)
	(
input signed [L-1:0] a,b,
output signed [L-1:0] sum 
    );

assign sum = a + b;
endmodule
