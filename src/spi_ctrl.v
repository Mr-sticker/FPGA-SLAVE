//spi通信控制模块，主要是模拟SPI通信时序，实现SPI通信，采用11模式通信。 
module spi_ctrl(
	input clk_25m,
	input rst_n,
	
	input cs_clk,
	input spi_clk,
	input spi_cs,
	input spi_mosi,
	output spi_miso,
	
	output cs_start,
	output cs_end,
	output cs_delay,
	
	output spi_tx_en,//spi发送数据时的字节数据读取时钟
	output spi_rx_en,//spi接收数据时的字节数据写入时钟
	output [7:0]receive_byte,
	input [7:0]send_byte		
);

//------------------------------------------------//
//提取上升沿与下降沿
reg cs_start1,cs_start2,cs_start3;

always@(posedge clk_25m or negedge rst_n)
	begin
		if(!rst_n)
			begin
				cs_start1 <= 1'd1;
				cs_start2 <= 1'd1;
				cs_start3 <= 1'd1;
			end
		else
			begin
				cs_start1 <= spi_cs;
				cs_start2 <= cs_start1;
				cs_start3 <= cs_start2;
			end
	end

assign cs_start = (!cs_start1) & cs_start2;
assign cs_end = (!cs_start2) & cs_start1;

assign cs_delay = spi_cs;
//------------------------------------------------//
////////////////按字节接收SPI发送过来的数据//////////////
/*接收模块*/
reg [3:0]receive_state;
reg [7:0]data_in;
reg [7:0]receive_byte_r;

reg spi_rx_en_r;
		
always@(posedge spi_clk or negedge rst_n or posedge cs_delay)
	begin
		if((!rst_n)||(cs_delay))
		begin
			receive_state <= 4'd0;
			receive_byte_r <= 8'd0;
			data_in <= 8'd0;
			
			spi_rx_en_r <= 1'd0;
		end
		else //低时钟时可以利用提取沿的方式
		begin
			case(receive_state)   //从高位开始接收数据，每8个spi_clk时钟接收一个Byte
				4'd0:begin
					receive_state <= receive_state + 1'd1;
					data_in <= {data_in[6:0],spi_mosi};
					spi_rx_en_r <= 1'd0;
				end
				4'd1,4'd2:begin
					receive_state <= receive_state + 1'd1;
					data_in <= {data_in[6:0],spi_mosi};
				end
				4'd3:begin
					receive_state <= receive_state + 1'd1;
					data_in <= {data_in[6:0],spi_mosi};
					spi_rx_en_r <= 1'd1;
				end				
				4'd4,4'd5:begin
					receive_state <= receive_state + 1'd1;
					data_in <= {data_in[6:0],spi_mosi};
					spi_rx_en_r <= 1'd0;
				end
				4'd6:begin
					receive_state <= receive_state + 1'd1;
					data_in <= {data_in[6:0],spi_mosi};
				end
				4'd7:begin
					receive_state <= 4'd0;
					data_in <= {data_in[6:0],spi_mosi};
					receive_byte_r <= {data_in[6:0],spi_mosi};
				end						
			endcase
		end
	end

assign receive_byte = receive_byte_r;
assign spi_rx_en = spi_rx_en_r;

//------------------------------------------------//
/*发送模块，按bytes发送spi数据*/
reg [3:0]send_state;
reg spi_miso_r;
reg spi_tx_en_r;
reg [7:0]data_out;

always@(negedge spi_clk or negedge rst_n or posedge cs_delay)
	if((!rst_n) || (cs_delay))
		begin
			send_state <= 4'd0;
			spi_tx_en_r <= 1'd0;
			data_out <= 8'd0;
		end
	else 
	begin
		case(send_state) 
			4'd0:begin
				spi_miso_r <= data_out[7];
				send_state <= send_state + 1'd1;
			end	
			4'd1:begin
				spi_miso_r <= data_out[6];
				send_state <= send_state + 1'd1;
			end	
			4'd2:begin
				spi_miso_r <= data_out[5];
				send_state <= send_state + 1'd1;
			end	
			4'd3:begin
				spi_miso_r <= data_out[4];
				send_state <= send_state + 1'd1;
			end	
			4'd4:begin
				spi_miso_r <= data_out[3];
				send_state <= send_state + 1'd1;
				spi_tx_en_r <= 1'd0;
			end	
			4'd5:begin
				spi_miso_r <= data_out[2];
				send_state <= send_state+ 1'd1;
				spi_tx_en_r <= 1'd1;
			end
			4'd6:begin
				spi_miso_r <= data_out[1];
				send_state <= send_state + 1'd1;	
				spi_tx_en_r <= 1'd0;		
			end	
			4'd7:begin
				data_out <= send_byte;
				spi_miso_r <= data_out[0];
				send_state <= 4'd0;
				spi_tx_en_r <= 1'd0;
			end
		endcase
	end		

assign spi_miso = spi_miso_r;	
assign spi_tx_en = spi_tx_en_r;

//------------------------------------------------//
endmodule
