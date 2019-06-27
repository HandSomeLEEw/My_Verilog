`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/24 18:55:31
// Design Name: 
// Module Name: bubblesort_normal
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


module bubblesort_normal(ra,rb,rc,rd,a,b,c,d);
    output [3:0] ra,rb,rc,rd;
    input [3:0] a,b,c,d;
    reg [3:0] ra,rb,rc,rd;
    reg [3:0] va,vb,vc,vd;
    always @( a or b or c or d)
        begin
            
           {va,vb,vc,vd} = {a,b,c,d};
            sort2(va,vc);
            sort2(vb,vd);
            sort2(vc,vd);
            sort2(vb,vc);
            {ra,rb,rc,rd} = {va,vb,vc,vd};
        end
 task sort2;
    inout [3:0] x,y;
    reg [3:0] tmp;
    if(x>y)
        begin
            tmp = x;
            x=y;
            y=tmp;
        end
 endtask
endmodule
