// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

// To account for OEB requirements:
assign io_oeb[14:5] = 10'b1111111111; 
assign io_oeb[19:15] = 5'b00000; 

// wire [9:0] x1;
// wire [9:0] x2; 
// wire [9:0] x3; 
// wire [9:0] x4; 
// wire [9:0] x5; 

wire x1_9,x1_8,x1_7,x1_6,x1_5,x1_4,x1_3,x1_2,x1_1,x1_0;
wire x2_9,x2_8,x2_7,x2_6,x2_5,x2_4,x2_3,x2_2,x2_1,x2_0;
wire x3_9,x3_8,x3_7,x3_6,x3_5,x3_4,x3_3,x3_2,x3_1,x3_0;
wire x4_9,x4_8,x4_7,x4_6,x4_5,x4_4,x4_3,x4_2,x4_1,x4_0;
wire x5_9,x5_8,x5_7,x5_6,x5_5,x5_4,x5_3,x5_2,x5_1,x5_0;

sky130_osu_ring_oscillator_mpr2ca_8_b0r1 ro1(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]),
   .X1_Y1(x1_0),
   .X2_Y1(x2_0),
   .X3_Y1(x3_0),
   .X4_Y1(x4_0),
   .X5_Y1(x5_0)
);

sky130_osu_ring_oscillator_mpr2ct_8_b0r1 ro2(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]),
    .X1_Y1(x1_1),
    .X2_Y1(x2_1),
    .X3_Y1(x3_1),
    .X4_Y1(x4_1),
    .X5_Y1(x5_1)
);

sky130_osu_ring_oscillator_mpr2ea_8_b0r1 ro3(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]),
    .X1_Y1(x1_2),
    .X2_Y1(x2_2),
    .X3_Y1(x3_2),
    .X4_Y1(x4_2),
    .X5_Y1(x5_2)
);

sky130_osu_ring_oscillator_mpr2et_8_b0r1 ro4(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]),
    .X1_Y1(x1_3),
    .X2_Y1(x2_3),
    .X3_Y1(x3_3),
    .X4_Y1(x4_3),
    .X5_Y1(x5_3)
);

sky130_osu_ring_oscillator_mpr2xa_8_b0r1 ro5(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]),
    .X1_Y1(x1_4),
    .X2_Y1(x2_4),
    .X3_Y1(x3_4),
    .X4_Y1(x4_4),
    .X5_Y1(x5_4)
);

sky130_osu_ring_oscillator_mpr2ca_8_b0r2 ro6(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]),
    .X1_Y1(x1_5),
    .X2_Y1(x2_5),
    .X3_Y1(x3_5),
    .X4_Y1(x4_5),
    .X5_Y1(x5_5)
);

sky130_osu_ring_oscillator_mpr2ct_8_b0r2 ro7(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]),
    .X1_Y1(x1_6),
    .X2_Y1(x2_6),
    .X3_Y1(x3_6),
    .X4_Y1(x4_6),
    .X5_Y1(x5_6)
);

sky130_osu_ring_oscillator_mpr2ea_8_b0r2 ro8(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]),
    .X1_Y1(x1_7),
    .X2_Y1(x2_7),
    .X3_Y1(x3_7),
    .X4_Y1(x4_7),
    .X5_Y1(x5_7)
);

sky130_osu_ring_oscillator_mpr2et_8_b0r2 ro9(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]),
    .X1_Y1(x1_8),
    .X2_Y1(x2_8),
    .X3_Y1(x3_8),
    .X4_Y1(x4_8),
    .X5_Y1(x5_8)
);

sky130_osu_ring_oscillator_mpr2xa_8_b0r2 ro10(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]),
    .X1_Y1(x1_9),
    .X2_Y1(x2_9),
    .X3_Y1(x3_9),
    .X4_Y1(x4_9),
    .X5_Y1(x5_9)
);

mux16x1_project mprj1 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .data_in({6'b000000,x1_9,x1_8,x1_7,x1_6,x1_5,x1_4,x1_3,x1_2,x1_1,x1_0}),
    .select(io_in[14:11]),
    .y(io_out[15])
);

mux16x1_project mprj2 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .data_in({6'b000000,x2_9,x2_8,x2_7,x2_6,x2_5,x2_4,x2_3,x2_2,x2_1,x2_0}),
    .select(io_in[14:11]),
    .y(io_out[16])
);

mux16x1_project mprj3 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .data_in({6'b000000,x3_9,x3_8,x3_7,x3_6,x3_5,x3_4,x3_3,x3_2,x3_1,x3_0}),
    .select(io_in[14:11]),
    .y(io_out[17])
);

mux16x1_project mprj4 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .data_in({6'b000000,x4_9,x4_8,x4_7,x4_6,x4_5,x4_4,x4_3,x4_2,x4_1,x4_0}),
    .select(io_in[14:11]),
    .y(io_out[18])
);

mux16x1_project mprj5 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .data_in({6'b000000,x5_9,x5_8,x5_7,x5_6,x5_5,x5_4,x5_3,x5_2,x5_1,x5_0}),
    .select(io_in[14:11]),
    .y(io_out[19])
);

endmodule	// user_project_wrapper

`default_nettype wire
