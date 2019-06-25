`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/03 14:19:46
// Design Name: 
// Module Name: my1101
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


module my1101
#(parameter S0 = 3'b000,S1 = 3'b001,S2 = 3'b010,S3 = 3'b011,S4 = 3'b100)
(
input pin,
input clk,rst,
output flag
    );
reg flag;
reg [2:0] cstage,nstage;

always @(posedge clk or posedge rst) 
begin 
	if(rst) 
	begin
		cstage<=S0;
		flag<=0;
	end 
	else 
	begin
		cstage<=nstage;
	end
end

always @(pin or cstage) 
begin
	case (cstage)
		S0: begin
			if(pin==1) nstage=S1;
			else nstage=S0; 
		end // S0:
		S1: begin
			if(pin==1) nstage=S2;
			else nstage=S0;
		end // S1:
		S2: begin
			if(pin==0) nstage=S3;
			else nstage=S2;
		end // S2:
		S3: begin
			flag<=1;
			if(pin==1) begin
				nstage=S4;
			end
			else nstage<=S0;
		end // S3:
		S4: begin
			flag<=1;
			if(pin==1) nstage=S2;
			else nstage=S0;
		end // S4:
		default : nstage=S0/* default */;
	endcase
end
endmodule
