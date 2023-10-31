###############################################################################
# Created by write_sdc
# Tue Oct 31 03:10:08 2023
###############################################################################
current_design mux16x1_project
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 25.0000 
set_clock_uncertainty 0.2500 clk
set_clock_latency -source -min 4.6500 [get_clocks {clk}]
set_clock_latency -source -max 5.5700 [get_clocks {clk}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1900 [get_ports {io_out}]
set_input_transition -min 0.0500 [get_ports {io_in[19]}]
set_input_transition -max 0.3800 [get_ports {io_in[19]}]
set_input_transition -min 0.0500 [get_ports {io_in[18]}]
set_input_transition -max 0.3800 [get_ports {io_in[18]}]
set_input_transition -min 0.0500 [get_ports {io_in[17]}]
set_input_transition -max 0.3800 [get_ports {io_in[17]}]
set_input_transition -min 0.0500 [get_ports {io_in[16]}]
set_input_transition -max 0.3800 [get_ports {io_in[16]}]
set_input_transition -min 0.0500 [get_ports {io_in[15]}]
set_input_transition -max 0.3800 [get_ports {io_in[15]}]
set_input_transition -min 0.0500 [get_ports {io_in[14]}]
set_input_transition -max 0.3800 [get_ports {io_in[14]}]
set_input_transition -min 0.0500 [get_ports {io_in[13]}]
set_input_transition -max 0.3800 [get_ports {io_in[13]}]
set_input_transition -min 0.0500 [get_ports {io_in[12]}]
set_input_transition -max 0.3800 [get_ports {io_in[12]}]
set_input_transition -min 0.0500 [get_ports {io_in[11]}]
set_input_transition -max 0.3800 [get_ports {io_in[11]}]
set_input_transition -min 0.0500 [get_ports {io_in[10]}]
set_input_transition -max 0.3800 [get_ports {io_in[10]}]
set_input_transition -min 0.0500 [get_ports {io_in[9]}]
set_input_transition -max 0.3800 [get_ports {io_in[9]}]
set_input_transition -min 0.0500 [get_ports {io_in[8]}]
set_input_transition -max 0.3800 [get_ports {io_in[8]}]
set_input_transition -min 0.0500 [get_ports {io_in[7]}]
set_input_transition -max 0.3800 [get_ports {io_in[7]}]
set_input_transition -min 0.0500 [get_ports {io_in[6]}]
set_input_transition -max 0.3800 [get_ports {io_in[6]}]
set_input_transition -min 0.0500 [get_ports {io_in[5]}]
set_input_transition -max 0.3800 [get_ports {io_in[5]}]
set_input_transition -min 0.0500 [get_ports {io_in[4]}]
set_input_transition -max 0.3800 [get_ports {io_in[4]}]
set_input_transition -min 0.0500 [get_ports {io_in[3]}]
set_input_transition -max 0.3800 [get_ports {io_in[3]}]
set_input_transition -min 0.0500 [get_ports {io_in[2]}]
set_input_transition -max 0.3800 [get_ports {io_in[2]}]
set_input_transition -min 0.0500 [get_ports {io_in[1]}]
set_input_transition -max 0.3800 [get_ports {io_in[1]}]
set_input_transition -min 0.0500 [get_ports {io_in[0]}]
set_input_transition -max 0.3800 [get_ports {io_in[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 1.0000 [current_design]
set_max_fanout 16.0000 [current_design]
