onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top_tb/clk_clk
add wave -noupdate /top_tb/reset_reset
add wave -noupdate -expand -group RAM /top_tb/dut/my_sys_onchip_memory/clk
add wave -noupdate -expand -group RAM /top_tb/dut/my_sys_onchip_memory/address
add wave -noupdate -expand -group RAM /top_tb/dut/my_sys_onchip_memory/clken
add wave -noupdate -expand -group RAM /top_tb/dut/my_sys_onchip_memory/chipselect
add wave -noupdate -expand -group RAM /top_tb/dut/my_sys_onchip_memory/write
add wave -noupdate -expand -group RAM /top_tb/dut/my_sys_onchip_memory/readdata
add wave -noupdate -expand -group RAM /top_tb/dut/my_sys_onchip_memory/writedata
add wave -noupdate -expand -group RAM /top_tb/dut/my_sys_onchip_memory/byteenable
add wave -noupdate -expand -group RAM /top_tb/dut/my_sys_onchip_memory/reset
add wave -noupdate -expand -group RAM /top_tb/dut/my_sys_onchip_memory/reset_req
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWVALID
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWPROT
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWREGION
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWLEN
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWSIZE
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWBURST
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWLOCK
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWCACHE
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWQOS
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWREADY
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARVALID
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARPROT
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARREGION
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARLEN
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARSIZE
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARBURST
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARLOCK
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARCACHE
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARQOS
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARREADY
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/RVALID
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/RRESP
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/RLAST
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/RREADY
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/WVALID
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/WLAST
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/WREADY
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/BVALID
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/BRESP
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/BREADY
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWADDR
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWID
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/AWUSER
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARADDR
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARID
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARUSER
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/RUSER
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/WUSER
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/BUSER
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/RDATA
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/RID
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/WDATA
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/WSTRB
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/BID
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ACLK
add wave -noupdate -expand -group {AXI BFM} /top_tb/dut/mgc_axi4_master_0/ARESETn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1323 ns}
