// my_sys_onchip_memory.v

// Generated using ACDS version 23.1 115

`timescale 1 ps / 1 ps
module my_sys_onchip_memory (
		input  wire        clk,        //   clk1.clk
		input  wire [6:0]  address,    //     s1.address
		input  wire        clken,      //       .clken
		input  wire        chipselect, //       .chipselect
		input  wire        write,      //       .write
		output wire [31:0] readdata,   //       .readdata
		input  wire [31:0] writedata,  //       .writedata
		input  wire [3:0]  byteenable, //       .byteenable
		input  wire        reset,      // reset1.reset
		input  wire        reset_req   //       .reset_req
	);

	my_sys_onchip_memory_altera_avalon_onchip_memory2_1937_rgxoysa #(
		.INIT_FILE ("my_sys_onchip_memory_my_sys_onchip_memory.hex")
	) my_sys_onchip_memory (
		.clk        (clk),        //   input,   width = 1,   clk1.clk
		.address    (address),    //   input,   width = 7,     s1.address
		.clken      (clken),      //   input,   width = 1,       .clken
		.chipselect (chipselect), //   input,   width = 1,       .chipselect
		.write      (write),      //   input,   width = 1,       .write
		.readdata   (readdata),   //  output,  width = 32,       .readdata
		.writedata  (writedata),  //   input,  width = 32,       .writedata
		.byteenable (byteenable), //   input,   width = 4,       .byteenable
		.reset      (reset),      //   input,   width = 1, reset1.reset
		.reset_req  (reset_req),  //   input,   width = 1,       .reset_req
		.freeze     (1'b0)        // (terminated),                     
	);

endmodule
