//Timescale
`timescale 1 ns / 1 ps
//------------------------------------------------//
//module:led_ctrl
module led_ctrl(
	input clk_25m,
	input rst_n,
	
	output fpga_led
);

/*************************************************/
//利用计数器实现一个定时器，定时为1s
	reg [31:0]time_cnt;
	
	always@(posedge clk_25m or negedge rst_n)
		begin
			if(!rst_n)
				begin
					time_cnt <= 32'd0;
				end
			else
				begin
					if(time_cnt==32'd24999999)
						begin
							time_cnt <= 32'd0;///计数器清零
						end
					else
						begin
							time_cnt <= time_cnt + 1'd1;//计数器自加1
						end
				end
		end

	wire time_sig = (time_cnt==32'd24999999) ? 1'd1 : 1'd0;//定时器信号

/*************************************************/
//利用定时器信号触发led事件
	reg fpga_led_r;
	
	always@(posedge time_sig or negedge rst_n)
		begin
			if(!rst_n)
				begin
					fpga_led_r <= 1'd1;
				end
			else
				begin
					fpga_led_r <= ~fpga_led_r;
				end
		end

	assign fpga_led = fpga_led_r;
	
//------------------------------------------------//
//endmodule	
endmodule
