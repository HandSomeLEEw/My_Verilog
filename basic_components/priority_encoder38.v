`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 09:43:35
// Design Name: 
// Module Name: priority_encoder38
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


module priority_encoder38(
input [7:0] a
output [2:0] s
    );

	assign s = a[7] ? 3'd7 : a[6] ? 3'd6 :
			   a[5] ? 3'd5 : a[4] ? 3'd4 :
			   a[3] ? 3'd3 : a[2] ? 3'd2 :
			   a[1] ? 3'd1 : a[0] ? 3'd0 : 3'd0;

// reg [2:0] s;
// always @(*) begin 
// 	casex (s)
// 		3'b0000_0001 : s = 3'b000;
// 		3'b0000_001x : s = 3'b001;
// 		3'b0000_01xx : s = 3'b010;
// 		3'b0000_1xxx : s = 3'b011;
// 		3'b0001_xxxx : s = 3'b100;
// 		3'b001x_xxxx : s = 3'b101;
// 		3'b01xx_xxxx : s = 3'b110;
// 		3'b1xxx_xxxx : s = 3'b111;
// 		default : s = 3'b000/* default */;
// 	endcase
// end
endmodule
