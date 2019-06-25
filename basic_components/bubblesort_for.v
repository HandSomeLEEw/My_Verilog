`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/24 19:49:53
// Design Name: 
// Module Name: bubblesort_for
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


module bubblesort_for(a1,a2,a3,a4,a5,a6,a7,a8,x1,x2,x3,x4,x5,x6,x7,x8);
output [3:0] a1,a2,a3,a4,a5,a6,a7,a8;
input [3:0] x1,x2,x3,x4,x5,x6,x7,x8;

reg [3:0] a1,a2,a3,a4,a5,a6,a7,a8;
reg [3:0] Myarray [7:0];
   
    task bbsort;
    integer i,j;
    output [3:0] a1,a2,a3,a4,a5,a6,a7,a8;
    input [3:0] x1,x2,x3,x4,x5,x6,x7,x8;
    
    reg [3:0] a1,a2,a3,a4,a5,a6,a7,a8;
    reg [3:0] Myarray [7:0];
    reg [3:0] tmp;
    
    begin
     Myarray[0] = x1;
     Myarray[1] = x2;
     Myarray[2] = x3;
     Myarray[3] = x4;
     Myarray[4] = x5;
     Myarray[5] = x6;
     Myarray[6] = x7;
     Myarray[7] = x8;
     
     for(i=0;i<7;i=i+1)
        begin
            for(j=i+1;j<8;j=j+1)
                begin
                    if(Myarray[i]>Myarray[j])
                        begin
                            tmp = Myarray[j];
                            Myarray[j] = Myarray[i];
                            Myarray[i] =tmp;
                        end
                end
        end
        a1 = Myarray[0];
        a2 = Myarray[1];
        a3 = Myarray[2];
        a4 = Myarray[3];
        a5 = Myarray[4];
        a6 = Myarray[5];
        a7 = Myarray[6];
        a8 = Myarray[7];
    end
    endtask
    
    always @ (*)
    begin
    bbsort(a1,a2,a3,a4,a5,a6,a7,a8,x1,x2,x3,x4,x5,x6,x7,x8);
    end
endmodule
