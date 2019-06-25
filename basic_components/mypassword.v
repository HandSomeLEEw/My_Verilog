`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/07 12:24:42
// Design Name: 
// Module Name: mypassword
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


module mypassword
#(parameter S0 = 3'b000,S1 = 3'b001,S2 = 3'b010,S3 = 3'b011)
(
input [7:0] fs,//输入初始密码
input [3:0] s,//输入密码的按钮
input clk,rst,//时钟及复位信号
output hope//输出信号
//output [2:0] cstage,nstage
    );

reg [2:0] cstage,nstage;
reg [1:0] f1,f2,f3,f4;
reg [1:0] pass;//输入密码值
wire hope;

//assign {f1,f2,f3,f4} = fs;

always @(*) begin //将初始密码赋值给四个两位的reg，便于后续比较
	{f1,f2,f3,f4} = fs;
end

always @(posedge clk or posedge rst ) begin //通过输入密码的按钮状态来选择输入密码pass的值
	if(rst) 
		pass = 2'b00;
	else begin
		case (s)
			4'b1000:pass = 2'b00;

			4'b0100:pass = 2'b01;

			4'b0010:pass = 2'b10;

			4'b0001:pass = 2'b11;
			default : pass = 2'b00/* default */;
		endcase
	end 
end

always @(posedge clk or posedge rst) //状态初始化及转移
begin 
	if(rst) 
	begin
		cstage<=S0;
	end 
	else 
	begin
		cstage<=nstage;
	end
end

always @(*) //状态选择
begin
	case (cstage)
		S0: begin
			if(pass==f1) nstage=S1;
			else nstage=S0; 
		end // S0:
		S1: begin
			if(pass==f2) nstage=S2;
			else nstage=S0;
		end // S1:
		S2: begin
			if(pass==f3) nstage=S3;
			else nstage=S0;
		end // S2:
		S3: begin
			if(pass==f4) begin
				nstage=S0;
			end
			else nstage<=S0;
		end // S3:
		default : nstage=S0/* default */;
	endcase
end

assign hope=(cstage==S3)?1:0;//输出判定
endmodule
