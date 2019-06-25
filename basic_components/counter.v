`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/27 21:49:14
// Design Name: 
// Module Name: counter
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


module counter
#(parameter max = 9)
(
input wire clk,rst,start, 
output reg ov     
); 
reg[3:0] cnt, cnt_next; 
always@(cnt or start) 
if(start)  begin     
	if(cnt<max)         
		cnt_next = cnt+1; 
	else         
		cnt_next = 0; 
end       
 
always@(posedge clk or negedge rst)      
if(!rst)         
	cnt<=0;     
else         
	cnt<=cnt_next; 
 
always@(cnt)     
if(cnt==max)         
	ov=1;     
else         
	ov=0;
endmodule
