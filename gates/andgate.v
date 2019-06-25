`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/11 15:44:42
// Design Name: 
// Module Name: andgate
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


module andgate
#(parameter WIDTH = 8)
(
    input [(WIDTH-1):0] a,
    input [(WIDTH-1):0] b,
    output  [(WIDTH-1):0] c
    );
    
    assign c = a & b;//two input andgate
endmodule
