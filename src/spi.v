//Timescale
`timescale 1 ns / 1 ps
//------------------------------------------------//
//module:spi
module spi(
	input clk_25m,
	
	//----------spi_signal
	input spi_clk,
	input spi_cs,
	output spi_miso,
	input spi_mosi,
	
	//----------led_signal
	output fpga_led
);

//------------------------------------------------//
//wire
wire rst_n;
wire spi_tx_en;//spi发送数据时的字节数据读取时钟
wire spi_rx_en;//spi接收数据时的字节数据写入时钟
wire [7:0]receive_byte;
wire [7:0]send_byte;

wire pll_150m;

wire cs_start;
wire cs_end;
wire cs_delay;
//------------------------------------------------//
driver_pll test(
	.inclk0(clk_25m),
	.c0(pll_150m),
	.c1(pll_300m)
);
//------------------------------------------------//
//rst_n:输出全局复位信号
rst_n u0(
	.clk_25m(clk_25m),
	.rst_n(rst_n)
);

//------------------------------------------------//
//led状态指示灯，循环闪烁表示程序已经运行
led_ctrl u1(
	.clk_25m(clk_25m),
	.rst_n(rst_n),
	
	.fpga_led(fpga_led)
);

//------------------------------------------------//
//spi_ctrl:控制spi时序，实现spi数据传输
spi_ctrl u2(
	.clk_25m(clk_25m),
	.rst_n(rst_n),
	
	.cs_clk(pll_150m),
	.spi_clk(spi_clk),
	.spi_cs(spi_cs),
	.spi_miso(spi_miso),
	.spi_mosi(spi_mosi),
	
	.cs_start(cs_start),
	.cs_end(cs_end),
	.cs_delay(cs_delay),
	
	.spi_tx_en(spi_tx_en),
	.spi_rx_en(spi_rx_en),
	.receive_byte(receive_byte),
	.send_byte(send_byte)
);

//------------------------------------------------//
//spi_memory:控制spi_ram读写时序,实现ram存储
spi_memory u3(
	.clk_25m(clk_25m),
	.rst_n(rst_n),
	.pll_150m(pll_150m),
	
	.spi_cs(spi_cs),
	.spi_tx_en(spi_tx_en),
	.spi_rx_en(spi_rx_en),
	.receive_byte(receive_byte),
	.send_byte(send_byte),
	
	.cs_start(cs_start),
	.cs_end(cs_end),
	.cs_delay(cs_delay),
	
	.error(error)
);

//------------------------------------------------//
//endmodule	
endmodule
