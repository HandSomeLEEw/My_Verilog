`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/12 17:26:27
// Design Name: 
// Module Name: seven_seg_LED
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


module seven_seg_LED(
input [3:0] num1,num2,
input cin,clk,
output reg [7:0] an,
output [6:0] gout,
output cout
    );
reg a1,a2,a3,a4,b1,b2,b3,b4;
reg [6:0] gout;
reg [1:0] pos;
wire [3:0] sum;
reg [3:0] gin;
reg [10:0] segclk;

// adderview ad(.a1(num1[0]),.a2(num1[1]),.a3(num1[2]),.a4(num1[3]),
// 			.b1(num2[0]),.b2(num2[1]),.b3(num2[2]),.b4(num2[3]),
// 			.cin(cin),.s1(sum[0]),.s2(sum[1]),.s3(sum[2]),.s4(sum[3]),.cout(cout));

always @(*) 
begin 
	case (pos)
		2'b00: an =8'b1111_1110; 
		2'b01: an =8'b0111_1111;
		2'b10: an =8'b1011_1111;
		2'b11: an =8'b1111_1111;
		default;
	endcase
end

always @(posedge clk) 
begin
	segclk=segclk+1; 
	if(segclk[10]==1) 
	begin
		segclk=0;
		case (pos)
			2'b00:
				begin
					pos=2'b01;
					gin=num1;
				end
			2'b01:
				begin
					pos=2'b10;
					gin=num2;
				end
			2'b10:
				begin
					pos=2'b11;
					gin=sum;
				end
			2'b11:
				begin
					pos=2'b00;
				end
			default ;
		endcase
	end
end

always @(*) 
begin 
	case (gin)
		4'h0:gout=7'b000_0001;
		4'h1:gout=7'b100_1111;
		4'h2:gout=7'b001_0010;
		4'h3:gout=7'b000_0110;
		4'h4:gout=7'b100_1100;
		4'h5:gout=7'b010_0100;
		4'h6:gout=7'b010_0000;
		4'h7:gout=7'b000_1111;
		4'h8:gout=7'b000_0000;
		4'h9:gout=7'b000_1100;
		4'ha:gout=7'b000_1000;
		4'hb:gout=7'b110_0000;
		4'hc:gout=7'b111_0010;
		4'hd:gout=7'b100_0010;
		4'he:gout=7'b011_0000;
		4'hf:gout=7'b011_1000;
		default :gout=7'b111_1111;
	endcase
end
endmodule
