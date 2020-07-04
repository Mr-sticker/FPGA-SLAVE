//spi_memory:根据RAM读写时序实现spi数据存储
module spi_memory(
	input clk_25m,
	input rst_n,
	
	input pll_150m,
	input spi_cs,
	input spi_tx_en,//spi发送数据时的字节数据读取时钟
	input spi_rx_en,//spi接收数据时的字节数据写入时钟
	input [7:0]receive_byte,
	output [7:0]send_byte,
	
	input cs_start,
	input cs_end,
	input cs_delay,

	output error
);

//------------------------------------------------//
parameter rx_idle_state = 8'd255,
			rx_judge_state = 8'd0,//判断是哪条指令
			rx_wr_length_state = 8'd1,//锁存写数据长度信息
			rx_wr_add_state = 8'd2,//锁存写数据的首地址信息，并产生写数据对应的RAM地址
			rx_rd_ledgth_state = 8'd3,//锁存读数据的长度信息
			rx_rd_add_state = 8'd4;//锁存读数据的首地址信息，并产生读数据对应的RAM地址
			
//接收状态机
reg [7:0]rx_state;
reg [7:0]order;

reg [15:0]wr_length_r = 16'd0;
reg [15:0]wr_address_r = 16'd0;
reg [15:0]rd_length_r = 16'd0;
reg [15:0]rd_address_r = 16'd0;
reg [11:0]wr_cnt;
reg [11:0]rd_cnt;

reg wr_en_r;
reg rd_en_r;

reg error_r;
reg [7:0]rx_cnt;

always@(posedge spi_rx_en or negedge rst_n or posedge spi_cs)
	begin
		if((!rst_n)||(spi_cs))
			begin
				rx_state <= rx_idle_state;
				wr_en_r <= 1'd0;
				rd_en_r <= 1'd0;
				rx_cnt <= 8'd0;
				wr_cnt <= 12'd0;
				rd_cnt <= 12'd0;
			end
		else
			begin
				case(rx_state)
					rx_idle_state:begin//空闲状态，匹配伪命令时钟
						rx_state <= rx_judge_state;
					end
					rx_judge_state:begin//接收指令字节，判断指令含义分配跳转状态机状态
						case(receive_byte)	
							8'h01:begin//存储指令编码（获取设备状态）
								order <= receive_byte;
							end
							8'h02:begin//存储指令编码，跳转状态（写数据的长度信息）
								rx_state <= rx_wr_length_state;
								order <= receive_byte;
							end
							8'h04:begin//存储指令编码，跳转状态（写数据的地址信息）
								rx_state <= rx_wr_add_state;
								order <= receive_byte;
							end
							8'h05:begin//存储指令编码，跳转状态（读数据的长度信息）
								rx_state <= rx_rd_ledgth_state;
								order <= receive_byte;
							end
							8'h07:begin//存储指令编码，跳转状态（读数据的地址信息）
								rx_state <= rx_rd_add_state;
								order <= receive_byte;
							end
							default:;
						endcase
					end
					rx_wr_length_state:begin//获取写数据长度信息，高字节在前，低字节在后
						case(rx_cnt)
							8'd0:begin
								wr_length_r[15:8] <= receive_byte;
								rx_cnt <= rx_cnt + 1'd1;
							end
							8'd1:begin
								wr_length_r <= {wr_length_r[15:8],receive_byte};
							end	
							default:begin
							end
						endcase		
					end
		
					rx_wr_add_state:begin//获取写数据地址信息，高字节在前，低字节在后，并产生RAM的写地址信息
						case(rx_cnt)
							8'd0:begin
								wr_address_r[15:8] <= receive_byte;
								rx_cnt <= rx_cnt + 1'd1;
							end
							8'd1:begin
								wr_address_r <= {wr_address_r[15:8],receive_byte};
								rx_cnt <= rx_cnt + 1'd1;
								wr_en_r <= 1'd1;
							end	
							8'd2:begin
								wr_address_r <= wr_address_r + 1'd1;
								if(wr_cnt==wr_length_r-1'd1)
									begin
										wr_cnt <= 12'h00;
										rx_cnt <= rx_cnt + 1'd1;
										wr_en_r <= 1'd0;
									end
								else
									begin
										wr_cnt <= wr_cnt + 1'd1;
									end						
							end
							default:begin
							end
						endcase	
					end

					rx_rd_ledgth_state:begin//获取读数据长度信息，高字节在前，低字节在后
						case(rx_cnt)
							8'd0:begin
								rd_length_r[15:8] <= receive_byte;
								rx_cnt <= rx_cnt + 1'd1;
							end
							8'd1:begin
								rd_length_r <= {rd_length_r[15:8],receive_byte};
							end	
							default:begin
							end
						endcase		
					end
					
					rx_rd_add_state:begin//获取读数据地址信息，高字节在前，低字节在后，并产生RAM的读地址信息
						case(rx_cnt)
							8'd0:begin
								rd_address_r[15:8] <= receive_byte;
								rx_cnt <= rx_cnt + 1'd1;
							end
							8'd1:begin
								rd_address_r <= {rd_address_r[15:8],receive_byte};
								rx_cnt <= rx_cnt + 1'd1;
								rd_en_r <= 1'd1;
							end
							8'd2:begin
								rd_address_r <= rd_address_r + 1'd1;
								if(rd_cnt==rd_length_r-1'd1)
									begin
										rd_cnt <= 12'h00;
										rx_cnt <= rx_cnt + 1'd1;
										rd_en_r <= 1'd0;
									end
								else
									begin
										rd_cnt <= rd_cnt + 1'd1;
									end
							end		
							default:;			
						endcase
					end

				endcase
			end
	end
	
//------------------------------------------------//
//判断写数据是否正确，评定方法为判断写数据计算的校验值是否与发送校验值相等
always@(posedge cs_end or negedge rst_n)
	begin
		if(!rst_n)
			begin
				error_r <= 1'd0;
			end
		else
			begin
				if(order==8'h04)
					begin
						if(receive_byte==crc_out)
							begin
								error_r <= 1'd0;
							end
						else
							begin
								error_r <= 1'd1;
							end
					end
				else
					begin
						error_r <= error_r;
					end
			end	
	end
	
assign error = error_r;

//------------------------------------------------//
//crc_d8:对spi接收数据进行校验
crc_d8 u1(
	.data_in(receive_byte),
	.crc_en(1'd1),
	.crc_out(crc_out),
	.rst(spi_cs),
	.clk(spi_rx_en)
);

wire [7:0]crc_out;

//------------------------------------------------//
//parameter
parameter tx_idle_state = 8'd255,
			tx_judge_state = 8'd0,//判断发送哪条指令的数据
			tx_device_state = 8'd1,//发送设备ID
			tx_error_state = 8'd2;//发送错误状态

//发送状态机
reg [7:0]tx_state;
reg [7:0]send_byte_r;

always@(posedge spi_tx_en or negedge rst_n or posedge spi_cs)
	begin
		if((!rst_n)||(spi_cs))
			begin
				tx_state <= tx_idle_state;
				send_byte_r <= 8'h00; 
			end
		else
			begin
				case(tx_state)
					tx_idle_state:begin
						tx_state <= tx_judge_state;
					end
					tx_judge_state:begin
						case(receive_byte)
							8'h01:begin//器件ID
								send_byte_r <= 8'h01;
								tx_state <= tx_device_state;
							end
							8'h08:begin//通信错误标志
								send_byte_r <= error_r;
								tx_state <= tx_error_state;
							end
							default:;						
						endcase
					end
					tx_device_state:begin//器件ID
						send_byte_r <= 8'h01;
					end
					tx_error_state:begin//通信错误标志
						send_byte_r <= error_r;
					end
					default:;
				endcase
			end
	end
	
//------------------------------------------------//
//spi_ram
//负责存储SPI通信的数据（具体的存储位置可通过spi命令寄存器设置）
spi_ram u0(	
	.wrclock(spi_rx_en),
	.wren(wr_en),
	.wraddress(wr_address),
	.data(receive_byte),
	
	.rdclock(spi_tx_en),
	.rden(rd_en),	
	.rdaddress(rd_address),
	.q(data_out)
);
wire [7:0]data_out;

wire wr_en = wr_en_r;
wire [11:0]wr_address = wr_address_r;

wire rd_en = rd_en_r;
wire [11:0]rd_address = rd_address_r;

assign send_byte = ((order==8'h01) || (order==8'h08)) ? send_byte_r : 8'hzz;
assign send_byte = (order==8'h07) ? data_out : 8'hzz;

//------------------------------------------------//
endmodule
