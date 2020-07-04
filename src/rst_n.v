//Timescale
`timescale 1 ns / 1 ps
//------------------------------------------------//
//module:rst_n
module rst_n(
	input clk_25m,
	output rst_n
);

/*************************************************/
//生成复位信号的计数器，采用时许逻辑语言描述
	reg [7:0]rst_cnt;
	
	always@(posedge clk_25m)
		begin
			if(rst_cnt==8'd50)
				begin
					rst_cnt<=8'd50;
				end
			else
				begin
					rst_cnt <= rst_cnt + 1'd1;
				end
		end

//生成复位信号，采用逻辑语言描述，包括条件逻辑运算符、关系运算符、赋值运算符，有效复位时间大约为4秒钟
//实际应用中，有效复位时间根据实际需要进行设定，个人认为没必要这么长时间，此处只是为了实验效果需要。
	assign rst_n = ((rst_cnt>8'd20) && (rst_cnt<8'd30)) ? 1'd0 : 1'd1;

//------------------------------------------------//
//endmodule	
endmodule
