`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 01:03:40
// Design Name: 
// Module Name: mux41
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


module mux41
#(parameter WIDTH = 8)
(
input [WIDTH-1:0] a1,a2,a3,a4,
input [1:0] s,
output [WIDTH-1:0] y 
    );
reg [WIDTH-1:0] y;

always @(*) begin 
case (s)
	2'b00: y = a1;
	2'b01: y = a2;
	2'b10: y = a3;
	2'b11: y = a4;
	default : y = 0/* default */;
endcase
end
endmodule
