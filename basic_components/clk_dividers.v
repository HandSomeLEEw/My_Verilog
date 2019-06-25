`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 22:05:14
// Design Name: 
// Module Name: clk_dividers
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


module clk_dividers
#(parameter N = 2) 
( 
	input wire clk,rst, 
	output reg clk_out     
);      
reg [7:0]counter; 
always @(posedge clk or posedge rst)  
if (!rst)   
	counter <= 0;  
else if (counter == N-1)   
	counter <= 0;  
else    
	counter <= counter + 1; 
 
always @(posedge clk or posedge rst)  
if (!rst)   
	clk_out <= 0;  
else if (counter == N-1)   
	clk_out <= ~clk_out; 
 
endmodule
