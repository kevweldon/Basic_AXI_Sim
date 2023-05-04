// Kevin Weldon 5/2023

module top_tb;
   
   timeunit 1ns;
   timeprecision 10ps;

   localparam DATA_WIDTH = 32;
   localparam ADDR_WIDTH = 16;

   logic clk_clk;
   logic reset_reset;

   logic [DATA_WIDTH-1:0] write_data [256];
   logic [DATA_WIDTH/8-1:0] write_strobe [256];
   logic [DATA_WIDTH-1:0]   read_data [256];
   logic [ADDR_WIDTH-1:0]   address;
   logic [7:0] 		    byte_data;
   logic [31:0] 	    burst_length;
   
   initial
     begin
	clk_clk = 0;
	#0;
	forever #10 clk_clk = ~clk_clk;
     end

   initial
     begin
	$timeformat(-9, 2, "ns", 1);
        reset_reset = 1;
	repeat (10) @(posedge clk_clk);
        reset_reset = 0;
	repeat (10) @(posedge clk_clk);

	// Write repeating 8'h01 to address 0.
	address = 0;
	byte_data = 8'h01;
	u_master.axi_write
	  (
	   .address(address * (DATA_WIDTH/8)), 
	   .data({(DATA_WIDTH/8){byte_data}}),
	   .wstrobe({(DATA_WIDTH/8){1'b1}}),
	   .transaction_id(0)
	   );
	$display ( "%m: %t: Wrote data 0x%h at address 0x%h", $time, {(DATA_WIDTH/8){byte_data}}, address*(DATA_WIDTH/8));

	// Write repeating 8'h02 to next word address
	address = 1;
	byte_data = 8'h02;
	u_master.axi_write
	  (
	   .address(address * (DATA_WIDTH/8)), 
	   .data({(DATA_WIDTH/8){byte_data}}), 
	   .wstrobe({(DATA_WIDTH/8){1'b1}}),
	   .transaction_id(0)
	   );
	$display ( "%m: %t: Wrote data 0x%h at address 0x%h", $time, {(DATA_WIDTH/8){byte_data}}, address*(DATA_WIDTH/8));

	// Read data from address 0.
	address = 0;
	byte_data = 8'h01;
	u_master.axi_read
	  (
	   .address(address * (DATA_WIDTH/8)), 
	   .data(read_data[0])
	   );
	if (read_data[0] == {(DATA_WIDTH/8){byte_data}})
          $display ( "%m: %t: Read correct data 0x%h at address 0x%h", 
		     $time, {(DATA_WIDTH/8){byte_data}}, 0 * (DATA_WIDTH/8));
	else
	  begin
             $display ( "%m: %t: Error: Expected data 0x%h at address 0x%h, but got 0x%h", 
			$time,  {(DATA_WIDTH/8){byte_data}}, address * (DATA_WIDTH/8), read_data[0]);
	     stop_sim();
	  end
	
	// Read data from address 1.
	address = 1;
	byte_data = 8'h02;
	u_master.axi_read
	  (
	   .address(address * (DATA_WIDTH/8)), 
	   .data(read_data[0])
	   );
	if (read_data[0] == {(DATA_WIDTH/8){byte_data}})
          $display ( "%m: %t: Read correct data 0x%h at address 0x%h", 
		     $time, {(DATA_WIDTH/8){byte_data}}, 0 * (DATA_WIDTH/8));
	else
	  begin
             $display ( "%m: %t: Error: Expected data 0x%h at address 0x%h, but got 0x%h", 
			$time,  {(DATA_WIDTH/8){byte_data}}, address * (DATA_WIDTH/8), read_data[0]);
	     stop_sim();
	  end

	// Write data burst length of 8 to start address 0.
	// Transaction ID is starting ID and will automatically increment for each 
	// transaction in the burst.
	address = 0;
	burst_length = 8;
	for (logic[DATA_WIDTH-1:0] i=0; i<burst_length; i++)
	  begin
	     write_data[i] = i;
	     write_strobe[i] = {(DATA_WIDTH/8){1'b1}};
	  end
	u_master.axi_write_burst
	  (
	   .address(address), 
	   .data(write_data),
	   .wstrobe(write_strobe),
	   .transaction_id(0),
	   .burst_length(burst_length)
	   );
	for (logic[DATA_WIDTH-1:0] i=0; i<burst_length; i++)
	  begin
	     address = i;
	     $display ( "%m: %t: Wrote data 0x%h at address 0x%h", $time, write_data[i], address*(DATA_WIDTH/8));
	  end
	
	// Read data burst of length 8 from address 0.
	address = 0;
	burst_length = 8;
	u_master.axi_read_burst
	  (
	   .address(address), 
	   .burst_length(burst_length), 
	   .data(read_data)
	   );
	for (int i=0; i<burst_length; i++)
	  begin
	     address = i;
	     if (read_data[i] == write_data[i])
	       $display ( "%m: %t: Read correct data 0x%h at word address 0x%h", $time, i, address);
	     else
	       begin
		  $display ( "%m: %t: Error: Expected data 0x%h at word address 0x%h, recieved 0x%h", 
			     $time, i, address, read_data[i]);
		  stop_sim();
	       end
	  end

	$display("Simulation passed");
	stop_sim();
     end // initial begin

  axi_master_bfm_wrapper 
    #(
      .AXI4_ADDRESS_WIDTH (ADDR_WIDTH),
      .AXI4_RDATA_WIDTH   (DATA_WIDTH),
      .AXI4_WDATA_WIDTH   (DATA_WIDTH),
      .AXI4_ID_WIDTH      (18),
      .AXI4_USER_WIDTH    (8),
      .AXI4_REGION_MAP_SIZE(16)
      ) u_master  
      (
       .bfm(dut.mgc_axi4_master_0.mgc_axi4_master_0),
       .verbose(0)
       );

   my_sys dut
     (
      .clk_clk ( clk_clk ),
      .reset_reset ( reset_reset )
      );

   task stop_sim;
     begin
	$display("%m: %t: Simulation finished.", $time);
	$finish;
     end
   endtask

endmodule: top_tb
