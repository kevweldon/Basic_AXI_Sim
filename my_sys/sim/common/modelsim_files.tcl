source [file join [file dirname [info script]] ./../../../ip/my_sys/my_sys_onchip_memory/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/my_sys/my_sys_clock_in/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/my_sys/my_sys_reset_in/sim/common/modelsim_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/my_sys/my_sys_mgc_axi4_master_0/sim/common/modelsim_files.tcl]

namespace eval my_sys {
  proc get_design_libraries {} {
    set libraries [dict create]
    set libraries [dict merge $libraries [my_sys_onchip_memory::get_design_libraries]]
    set libraries [dict merge $libraries [my_sys_clock_in::get_design_libraries]]
    set libraries [dict merge $libraries [my_sys_reset_in::get_design_libraries]]
    set libraries [dict merge $libraries [my_sys_mgc_axi4_master_0::get_design_libraries]]
    dict set libraries altera_merlin_axi_translator_1931    1
    dict set libraries altera_merlin_slave_translator_191   1
    dict set libraries altera_merlin_axi_master_ni_1962     1
    dict set libraries altera_merlin_slave_agent_1921       1
    dict set libraries altera_avalon_sc_fifo_1931           1
    dict set libraries altera_merlin_router_1921            1
    dict set libraries altera_avalon_st_pipeline_stage_1930 1
    dict set libraries altera_merlin_burst_adapter_1931     1
    dict set libraries altera_merlin_demultiplexer_1921     1
    dict set libraries altera_merlin_multiplexer_1922       1
    dict set libraries altera_mm_interconnect_1920          1
    dict set libraries altera_reset_controller_1922         1
    dict set libraries my_sys                               1
    return $libraries
  }
  
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    set memory_files [concat $memory_files [my_sys_onchip_memory::get_memory_files "$QSYS_SIMDIR/../../ip/my_sys/my_sys_onchip_memory/sim/"]]
    set memory_files [concat $memory_files [my_sys_clock_in::get_memory_files "$QSYS_SIMDIR/../../ip/my_sys/my_sys_clock_in/sim/"]]
    set memory_files [concat $memory_files [my_sys_reset_in::get_memory_files "$QSYS_SIMDIR/../../ip/my_sys/my_sys_reset_in/sim/"]]
    set memory_files [concat $memory_files [my_sys_mgc_axi4_master_0::get_memory_files "$QSYS_SIMDIR/../../ip/my_sys/my_sys_mgc_axi4_master_0/sim/"]]
    return $memory_files
  }
  
  proc get_common_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [my_sys_onchip_memory::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/my_sys/my_sys_onchip_memory/sim/"]]
    set design_files [dict merge $design_files [my_sys_clock_in::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/my_sys/my_sys_clock_in/sim/"]]
    set design_files [dict merge $design_files [my_sys_reset_in::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/my_sys/my_sys_reset_in/sim/"]]
    set design_files [dict merge $design_files [my_sys_mgc_axi4_master_0::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/my_sys/my_sys_mgc_axi4_master_0/sim/"]]
    return $design_files
  }
  
  proc get_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [list]
    set design_files [concat $design_files [my_sys_onchip_memory::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/my_sys/my_sys_onchip_memory/sim/"]]
    set design_files [concat $design_files [my_sys_clock_in::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/my_sys/my_sys_clock_in/sim/"]]
    set design_files [concat $design_files [my_sys_reset_in::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/my_sys/my_sys_reset_in/sim/"]]
    set design_files [concat $design_files [my_sys_mgc_axi4_master_0::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/my_sys/my_sys_mgc_axi4_master_0/sim/"]]
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_axi_translator_1931/sim/my_sys_altera_merlin_axi_translator_1931_d46vvwa.sv"]\"  -work altera_merlin_axi_translator_1931"                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_translator_191/sim/my_sys_altera_merlin_slave_translator_191_x56fcki.sv"]\"  -work altera_merlin_slave_translator_191"                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_axi_master_ni_1962/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_axi_master_ni_1962"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_axi_master_ni_1962/sim/my_sys_altera_merlin_axi_master_ni_1962_2kryw2a.sv"]\"  -work altera_merlin_axi_master_ni_1962"                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_agent_1921/sim/my_sys_altera_merlin_slave_agent_1921_b6r3djy.sv"]\"  -work altera_merlin_slave_agent_1921"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_slave_agent_1921/sim/altera_merlin_burst_uncompressor.sv"]\"  -work altera_merlin_slave_agent_1921"                                              
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avalon_sc_fifo_1931/sim/my_sys_altera_avalon_sc_fifo_1931_vhmcgqy.v"]\"  -work altera_avalon_sc_fifo_1931"                                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/my_sys_altera_merlin_router_1921_bfyiafq.sv"]\"  -work altera_merlin_router_1921"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_router_1921/sim/my_sys_altera_merlin_router_1921_7i7ie4a.sv"]\"  -work altera_merlin_router_1921"                                                
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_1930/sim/my_sys_altera_avalon_st_pipeline_stage_1930_bv2ucky.sv"]\"  -work altera_avalon_st_pipeline_stage_1930"               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_1930/sim/altera_avalon_st_pipeline_base.v"]\"  -work altera_avalon_st_pipeline_stage_1930"                                     
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/my_sys_altera_merlin_burst_adapter_altera_avalon_st_pipeline_stage_1931_5ceiymq.v"]\"  -work altera_merlin_burst_adapter_1931"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/my_sys_altera_merlin_burst_adapter_1931_vrr2dxi.sv"]\"  -work altera_merlin_burst_adapter_1931"                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_burst_adapter_uncmpr.sv"]\"  -work altera_merlin_burst_adapter_1931"                                        
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_burst_adapter_13_1.sv"]\"  -work altera_merlin_burst_adapter_1931"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_burst_adapter_new.sv"]\"  -work altera_merlin_burst_adapter_1931"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_incr_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1931"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_wrap_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1931"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_default_burst_converter.sv"]\"  -work altera_merlin_burst_adapter_1931"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_address_alignment.sv"]\"  -work altera_merlin_burst_adapter_1931"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/my_sys_altera_merlin_demultiplexer_1921_cbjo7sq.sv"]\"  -work altera_merlin_demultiplexer_1921"                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/my_sys_altera_merlin_multiplexer_1922_pq3hzci.sv"]\"  -work altera_merlin_multiplexer_1922"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1922"                                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/my_sys_altera_merlin_demultiplexer_1921_uqez5ca.sv"]\"  -work altera_merlin_demultiplexer_1921"                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/my_sys_altera_merlin_multiplexer_1922_3if723i.sv"]\"  -work altera_merlin_multiplexer_1922"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv"]\"  -work altera_merlin_multiplexer_1922"                                                      
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_mm_interconnect_1920/sim/my_sys_altera_mm_interconnect_1920_j74kjai.v"]\"  -work altera_mm_interconnect_1920"                                               
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_reset_controller_1922/sim/altera_reset_controller.v"]\"  -work altera_reset_controller_1922"                                                                
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_reset_controller_1922/sim/altera_reset_synchronizer.v"]\"  -work altera_reset_controller_1922"                                                              
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/my_sys.v"]\"  -work my_sys"                                                                                                                                           
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    append ELAB_OPTIONS [my_sys_onchip_memory::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [my_sys_clock_in::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [my_sys_reset_in::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [my_sys_mgc_axi4_master_0::get_elab_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    append SIM_OPTIONS [my_sys_onchip_memory::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [my_sys_clock_in::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [my_sys_reset_in::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [my_sys_mgc_axi4_master_0::get_sim_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [my_sys_onchip_memory::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [my_sys_clock_in::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [my_sys_reset_in::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [my_sys_mgc_axi4_master_0::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
  proc normalize_path {FILEPATH} {
      if {[catch { package require fileutil } err]} { 
          return $FILEPATH 
      } 
      set path [fileutil::lexnormalize [file join [pwd] $FILEPATH]]  
      if {[file pathtype $FILEPATH] eq "relative"} { 
          set path [fileutil::relative [pwd] $path] 
      } 
      return $path 
  } 
  proc get_dpi_libraries {QSYS_SIMDIR} {
    set libraries [dict create]
    set libraries [dict merge $libraries [my_sys_onchip_memory::get_dpi_libraries "$QSYS_SIMDIR/../../ip/my_sys/my_sys_onchip_memory/sim/"]]
    set libraries [dict merge $libraries [my_sys_clock_in::get_dpi_libraries "$QSYS_SIMDIR/../../ip/my_sys/my_sys_clock_in/sim/"]]
    set libraries [dict merge $libraries [my_sys_reset_in::get_dpi_libraries "$QSYS_SIMDIR/../../ip/my_sys/my_sys_reset_in/sim/"]]
    set libraries [dict merge $libraries [my_sys_mgc_axi4_master_0::get_dpi_libraries "$QSYS_SIMDIR/../../ip/my_sys/my_sys_mgc_axi4_master_0/sim/"]]
    
    return $libraries
  }
  
}
