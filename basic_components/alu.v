`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/01 15:56:04
// Design Name: 
// Module Name: alu
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


module alu(
input [31:0] a,
input [7:0] b,
input [2:0] s,
output [31:0] o,
output zero
    );

reg [31:0] temp;
reg [31:0] o;

assign a=32'h0000_0001;

always @(s) begin
	temp={24'h0,b};
	case (s)
		3'b000:o=a+temp;

		3'b001:o=temp-a;

		3'b010:o=a&temp;

		3'b011:o=a|temp;

		3'b100:o=~temp;
	
		default :o=32'h0000_0000 /* default */;
	endcase

	assign zero = (y == 32'd0);
end
endmodule
