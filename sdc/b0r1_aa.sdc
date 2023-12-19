###############################################################################
# Created by write_sdc
# Tue Dec 19 18:02:53 2023
###############################################################################
current_design b0r1_aa
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
set_load -pin_load 0.1900 [get_ports {X1_Y1}]
set_load -pin_load 0.1900 [get_ports {X2_Y1}]
set_load -pin_load 0.1900 [get_ports {X3_Y1}]
set_load -pin_load 0.1900 [get_ports {X4_Y1}]
set_load -pin_load 0.1900 [get_ports {X5_Y1}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 1.0000 [current_design]
set_max_fanout 16.0000 [current_design]
