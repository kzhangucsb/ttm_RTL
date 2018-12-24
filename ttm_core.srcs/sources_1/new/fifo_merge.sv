`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2018 02:25:12 PM
// Design Name: 
// Module Name: fifo_merge
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


module fifo_merge#(
	parameter
	WIDTH_1 = 32,
	WIDTH_2 = 32
)(
	input  clk,
	input  rst_n,
	input  bypass,
	fifo_if.slave  f1,
	fifo_if.slave  f2,
	fifo_if.master fo
);

	reg  [WIDTH_1-1 : 0] f1_reg;
	reg  [WIDTH_2-1 : 0] f2_reg;

	reg   f1_reg_valid;
	reg   f1_reg_last;
	reg   f2_reg_valid;
	reg   f2_reg_last;
	//wire  all_reg_valid;


	assign fo.tvalid = f1_reg_valid & (f2_reg_valid | bypass);

	assign f1.tready = (fo.tvalid & fo.tready) | (~f1_reg_valid);

	always_ff @(posedge clk /*or negedge rst_n*/) begin : proc_f1_reg
		if(~rst_n) begin
			f1_reg <= 0;
			//f1_reg_valid <= 0;
			f1_reg_last <= 0;
		end else begin
			if (f1.tready) begin // fetch new data
				f1_reg <= f1.data;
				//f1_reg_valid <= f1.tvalid;
				f1_reg_last  <= f1.tlast;
			end
		end
	end
	
	assign f2.tready = ~bypass & ((fo.tvalid & fo.tready) | (~f2_reg_valid));
	always_ff @(posedge clk /*or negedge rst_n*/) begin : proc_f2_reg
		if(~rst_n) begin
			f2_reg <= 0;
			//f2_reg_valid <= 0;
			f2_reg_last  <= 0;
		end else if (bypass) begin
			f2_reg <= 0;
			//f2_reg_valid <= 0;
			f2_reg_last  <= 0;
		end else begin
			if (f2.tready) begin // fetch new data
				f2_reg <= f2.data;
				//f2_reg_valid <= f2.tvalid;
				f2_reg_last  <= f2.tlast;
			end
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_reg_valid
		if(~rst_n) begin
			f1_reg_valid <= 0;
			f2_reg_valid <= 0;
		end else begin
			if (f1.tready) begin
				f1_reg_valid <= f1.tvalid;
			end // if (f1.tready)
			if (f2.tready) begin
				f2_reg_valid <= bypass? 0 : f2.tvalid;
			end // if (f2.tready)
		end
	end
	
	assign fo.data   = {f1_reg, f2_reg};
	//assign fo.tvalid = all_reg_valid;
	assign fo.tlast  = f1_reg_last;

endmodule

module fifo_merge_repeat#(
	parameter
	WIDTH_1 = 32,
	WIDTH_2 = 32
)(
	input  clk,
	input  rst_n,
	input  bypass,
	//input  signed [15:0] burstsize,
	fifo_if.slave  f1,
	fifo_if.slave  f2,
	fifo_if.master fo
);

	reg  [WIDTH_1-1 : 0] f1_reg;
	reg  [WIDTH_2-1 : 0] f2_reg;

	reg   f1_reg_valid;
	reg   f1_reg_last;
	reg   f2_reg_valid;
	reg   f2_reg_last;
	//wire  all_reg_valid;

	//reg  [15:0] burst_counter;

	assign fo.tvalid = f1_reg_valid & (f2_reg_valid | bypass);

	assign f1.tready = (fo.tvalid & fo.tready) | (~f1_reg_valid);

	// always_ff @(posedge clk or negedge rst_n) begin : proc_burst_counter
	// 	if(~rst_n) begin
	// 		burst_counter <= 0;
	// 	end else begin
	// 		if (f2.tvalid & f2.tready) begin
	// 			burst_counter <= burst_counter + 1;
	// 			if (burst_counter == burstsize - 1) begin
	// 				burst_counter <= 0;
	// 			end
	// 		end
	// 	end
	// end

	always_ff @(posedge clk /*or negedge rst_n*/) begin : proc_f1_reg
		if(~rst_n) begin
			f1_reg <= 0;
			//f1_reg_valid <= 0;
			f1_reg_last <= 0;
		end else begin
			if (f1.tready) begin // fetch new data
				f1_reg <= f1.data;
				//f1_reg_valid <= f1.tvalid;
				f1_reg_last  <= f1.tlast;
			end
		end
	end
	
	assign f2.tready = ~bypass & ((fo.tvalid & fo.tready & f1_reg_last) | (~f2_reg_valid));
	always_ff @(posedge clk /*or negedge rst_n*/) begin : proc_f2_reg
		if(~rst_n) begin
			f2_reg <= 0;
			//f2_reg_valid <= 0;
			f2_reg_last  <= 0;
		end else if (bypass) begin
			f2_reg <= 0;
			//f2_reg_valid <= 0;
			f2_reg_last  <= 0;
		end else begin
			if (f2.tready) begin // fetch new data
				f2_reg <= f2.data;
				//f2_reg_valid <= f2.tvalid;
				f2_reg_last  <= f2.tlast;
			end
		end
	end

	always_ff @(posedge clk or negedge rst_n) begin : proc_reg_valid
		if(~rst_n) begin
			f1_reg_valid <= 0;
			f2_reg_valid <= 0;
		end else begin
			if (f1.tready) begin
				f1_reg_valid <= f1.tvalid;
			end // if (f1.tready)
			if (f2.tready) begin
				f2_reg_valid <= bypass? 0 : f2.tvalid;
			end // if (f2.tready)
		end
	end
	
	assign fo.data   = {f1_reg, f2_reg};
	//assign fo.tvalid = all_reg_valid;
	assign fo.tlast  = bypass ? f1_reg_last : (f1_reg_last & f2_reg_last);

endmodule
