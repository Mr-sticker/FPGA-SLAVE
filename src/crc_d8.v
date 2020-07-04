// CRC module for
//       data[7:0]
//       crc[7:0]=1+x^1+x^2+x^8;
//
//------------------------------------------------//
//crc-8：检验
module crc_d8(
	input [7:0] data_in,
	input        crc_en,
	output [7:0] crc_out,
	input        rst,
	input        clk
);

//------------------------------------------------//
reg [7:0] lfsr_q,
			 lfsr_c;
assign crc_out = lfsr_q;

//------------------------------------------------//
always @(*)
	begin
		lfsr_c[0] = lfsr_q[0] ^ lfsr_q[6] ^ lfsr_q[7] ^ data_in[0] ^ data_in[6] ^ data_in[7];
		lfsr_c[1] = lfsr_q[0] ^ lfsr_q[1] ^ lfsr_q[6] ^ data_in[0] ^ data_in[1] ^ data_in[6];
		lfsr_c[2] = lfsr_q[0] ^ lfsr_q[1] ^ lfsr_q[2] ^ lfsr_q[6] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[6];
		lfsr_c[3] = lfsr_q[1] ^ lfsr_q[2] ^ lfsr_q[3] ^ lfsr_q[7] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[7];
		lfsr_c[4] = lfsr_q[2] ^ lfsr_q[3] ^ lfsr_q[4] ^ data_in[2] ^ data_in[3] ^ data_in[4];
		lfsr_c[5] = lfsr_q[3] ^ lfsr_q[4] ^ lfsr_q[5] ^ data_in[3] ^ data_in[4] ^ data_in[5];
		lfsr_c[6] = lfsr_q[4] ^ lfsr_q[5] ^ lfsr_q[6] ^ data_in[4] ^ data_in[5] ^ data_in[6];
		lfsr_c[7] = lfsr_q[5] ^ lfsr_q[6] ^ lfsr_q[7] ^ data_in[5] ^ data_in[6] ^ data_in[7];
	end // always
	
//------------------------------------------------//
always @(posedge clk or posedge rst)
	begin
		if(rst)
			begin
				lfsr_q  <= {8{1'b0}};
			end
		else 
			begin
				lfsr_q  <= crc_en ? lfsr_c : lfsr_q;
			end
	end // always

//------------------------------------------------//
//endmodule
endmodule // crc
