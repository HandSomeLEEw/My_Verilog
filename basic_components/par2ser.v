`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/17 21:08:26
// Design Name: 
// Module Name: par2ser
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


module par2ser
# (parameter WITDTH = 8)
(
input [WITDTH-1:0] d,
input clk,rst,en,
output q
    );
reg [WIDTH-2:0] temp;
reg q;

always @(posedge clk or posedge rst) 
begin 
	if(rst) begin
		{temp,q}<= 0;
	end 
	else 
	begin
		if(en) begin
			{temp,q}<= d;
		end
		else begin
		 	{temp,q}<= {1'd0,temp};
		end
	end
end
endmodule
