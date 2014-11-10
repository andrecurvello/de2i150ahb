
# (C) 2001-2014 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 linux 2014.11.03.12:21:14

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "amm_master_qsys_tb"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} 

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/package/eda/altera/altera13.0sp1/quartus/"
} 

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                        ./libraries/altera_ver            
vmap       altera_ver             ./libraries/altera_ver            
ensure_lib                        ./libraries/lpm_ver               
vmap       lpm_ver                ./libraries/lpm_ver               
ensure_lib                        ./libraries/sgate_ver             
vmap       sgate_ver              ./libraries/sgate_ver             
ensure_lib                        ./libraries/altera_mf_ver         
vmap       altera_mf_ver          ./libraries/altera_mf_ver         
ensure_lib                        ./libraries/altera_lnsim_ver      
vmap       altera_lnsim_ver       ./libraries/altera_lnsim_ver      
ensure_lib                        ./libraries/cycloneiv_hssi_ver    
vmap       cycloneiv_hssi_ver     ./libraries/cycloneiv_hssi_ver    
ensure_lib                        ./libraries/cycloneiv_pcie_hip_ver
vmap       cycloneiv_pcie_hip_ver ./libraries/cycloneiv_pcie_hip_ver
ensure_lib                        ./libraries/cycloneiv_ver         
vmap       cycloneiv_ver          ./libraries/cycloneiv_ver         
ensure_lib                                                                              ./libraries/rsp_xbar_demux                                                              
vmap       rsp_xbar_demux                                                               ./libraries/rsp_xbar_demux                                                              
ensure_lib                                                                              ./libraries/cmd_xbar_mux                                                                
vmap       cmd_xbar_mux                                                                 ./libraries/cmd_xbar_mux                                                                
ensure_lib                                                                              ./libraries/cmd_xbar_demux                                                              
vmap       cmd_xbar_demux                                                               ./libraries/cmd_xbar_demux                                                              
ensure_lib                                                                              ./libraries/rst_controller                                                              
vmap       rst_controller                                                               ./libraries/rst_controller                                                              
ensure_lib                                                                              ./libraries/id_router                                                                   
vmap       id_router                                                                    ./libraries/id_router                                                                   
ensure_lib                                                                              ./libraries/addr_router                                                                 
vmap       addr_router                                                                  ./libraries/addr_router                                                                 
ensure_lib                                                                              ./libraries/new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent_rsp_fifo
vmap       new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent_rsp_fifo ./libraries/new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent_rsp_fifo
ensure_lib                                                                              ./libraries/new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent         
vmap       new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent          ./libraries/new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent         
ensure_lib                                                                              ./libraries/write_master_avalon_master_translator_avalon_universal_master_0_agent       
vmap       write_master_avalon_master_translator_avalon_universal_master_0_agent        ./libraries/write_master_avalon_master_translator_avalon_universal_master_0_agent       
ensure_lib                                                                              ./libraries/new_sdram_controller_0_s1_translator                                        
vmap       new_sdram_controller_0_s1_translator                                         ./libraries/new_sdram_controller_0_s1_translator                                        
ensure_lib                                                                              ./libraries/write_master_avalon_master_translator                                       
vmap       write_master_avalon_master_translator                                        ./libraries/write_master_avalon_master_translator                                       
ensure_lib                                                                              ./libraries/write_master                                                                
vmap       write_master                                                                 ./libraries/write_master                                                                
ensure_lib                                                                              ./libraries/new_sdram_controller_0                                                      
vmap       new_sdram_controller_0                                                       ./libraries/new_sdram_controller_0                                                      
ensure_lib                                                                              ./libraries/amm_master_qsys_inst_reset_bfm                                              
vmap       amm_master_qsys_inst_reset_bfm                                               ./libraries/amm_master_qsys_inst_reset_bfm                                              
ensure_lib                                                                              ./libraries/amm_master_qsys_inst_clk_bfm                                                
vmap       amm_master_qsys_inst_clk_bfm                                                 ./libraries/amm_master_qsys_inst_clk_bfm                                                
ensure_lib                                                                              ./libraries/amm_master_qsys_inst                                                        
vmap       amm_master_qsys_inst                                                         ./libraries/amm_master_qsys_inst                                                        

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  vlog +define+SKIP_KEYWORDS_PRAGMA "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"        -work altera_ver            
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                 -work lpm_ver               
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                    -work sgate_ver             
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                -work altera_mf_ver         
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"            -work altera_lnsim_ver      
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_hssi_atoms.v"     -work cycloneiv_hssi_ver    
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_pcie_hip_atoms.v" -work cycloneiv_pcie_hip_ver
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_atoms.v"          -work cycloneiv_ver         
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/amm_master_qsys_rsp_xbar_demux.sv"        -work rsp_xbar_demux                                                              
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/altera_merlin_arbitrator.sv"              -work cmd_xbar_mux                                                                
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/amm_master_qsys_cmd_xbar_mux.sv"          -work cmd_xbar_mux                                                                
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/amm_master_qsys_cmd_xbar_demux.sv"        -work cmd_xbar_demux                                                              
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/altera_reset_controller.v"                -work rst_controller                                                              
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/altera_reset_synchronizer.v"              -work rst_controller                                                              
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/amm_master_qsys_id_router.sv"             -work id_router                                                                   
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/amm_master_qsys_addr_router.sv"           -work addr_router                                                                 
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/altera_avalon_sc_fifo.v"                  -work new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent_rsp_fifo
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/altera_merlin_slave_agent.sv"             -work new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent         
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"      -work new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent         
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/altera_merlin_master_agent.sv"            -work write_master_avalon_master_translator_avalon_universal_master_0_agent       
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/altera_merlin_slave_translator.sv"        -work new_sdram_controller_0_s1_translator                                        
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/altera_merlin_master_translator.sv"       -work write_master_avalon_master_translator                                       
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/custom_master.v"                          -work write_master                                                                
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/burst_write_master.v"                     -work write_master                                                                
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/burst_read_master.v"                      -work write_master                                                                
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/write_master.v"                           -work write_master                                                                
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/latency_aware_read_master.v"              -work write_master                                                                
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/amm_master_qsys_new_sdram_controller_0.v" -work new_sdram_controller_0                                                      
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/verbosity_pkg.sv"                         -work amm_master_qsys_inst_reset_bfm                                              
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/altera_avalon_reset_source.sv"            -work amm_master_qsys_inst_reset_bfm                                              
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/verbosity_pkg.sv"                         -work amm_master_qsys_inst_clk_bfm                                                
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/altera_avalon_clock_source.sv"            -work amm_master_qsys_inst_clk_bfm                                                
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/submodules/amm_master_qsys.v"                        -work amm_master_qsys_inst                                                        
  vlog  "$QSYS_SIMDIR/amm_master_qsys_tb/simulation/amm_master_qsys_tb.v"                                                                                                                  
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim +access +r  -t ps -L work -L rsp_xbar_demux -L cmd_xbar_mux -L cmd_xbar_demux -L rst_controller -L id_router -L addr_router -L new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent -L write_master_avalon_master_translator_avalon_universal_master_0_agent -L new_sdram_controller_0_s1_translator -L write_master_avalon_master_translator -L write_master -L new_sdram_controller_0 -L amm_master_qsys_inst_reset_bfm -L amm_master_qsys_inst_clk_bfm -L amm_master_qsys_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -dbg -O2 +access +r -t ps -L work -L rsp_xbar_demux -L cmd_xbar_mux -L cmd_xbar_demux -L rst_controller -L id_router -L addr_router -L new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L new_sdram_controller_0_s1_translator_avalon_universal_slave_0_agent -L write_master_avalon_master_translator_avalon_universal_master_0_agent -L new_sdram_controller_0_s1_translator -L write_master_avalon_master_translator -L write_master -L new_sdram_controller_0 -L amm_master_qsys_inst_reset_bfm -L amm_master_qsys_inst_clk_bfm -L amm_master_qsys_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h