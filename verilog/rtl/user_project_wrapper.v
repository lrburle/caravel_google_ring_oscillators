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
    // inout vdda1,	// User area 1 3.3V supply
    // inout vdda2,	// User area 2 3.3V supply
    // inout vssa1,	// User area 1 analog ground
    // inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    // inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    // inout vssd2,	// User area 2 digital ground
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
    // input  [127:0] la_data_in,
    // output [127:0] la_data_out,
    // input  [127:0] la_oenb,

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
    // input   user_clock2,

    // User maskable interrupt signals
    // output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

wire [15:0] x1, x2, x3, x4, x5;

sky130_osu_ring_oscillator_mpr2aa_8_b0r1 ro1(
`ifdef USE_POWER_PINS
   .vccd1(vccd1),
   .vssd1(vssd1),
`endif
   .s1(io_in[0]),
   .s2(io_in[1]),
   .s3(io_in[2]),
   .s4(io_in[3]),
   .s5(io_in[4]),
   .start(io_in[5]),
   .X1_Y1(x1[0]),
   .X2_Y1(x2[0]),
   .X3_Y1(x3[0]),
   .X4_Y1(x4[0]),
   .X5_Y1(x5[0])
);

sky130_osu_ring_oscillator_mpr2at_8_b0r1 ro2(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
   .X1_Y1(x1[1]),
   .X2_Y1(x2[1]),
   .X3_Y1(x3[1]),
   .X4_Y1(x4[1]),
   .X5_Y1(x5[1])
);

sky130_osu_ring_oscillator_mpr2ca_8_b0r1 ro3(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
   .X1_Y1(x1[2]),
   .X2_Y1(x2[2]),
   .X3_Y1(x3[2]),
   .X4_Y1(x4[2]),
   .X5_Y1(x5[2])
);

sky130_osu_ring_oscillator_mpr2ct_8_b0r1 ro4(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[3]),
    .X2_Y1(x2[3]),
    .X3_Y1(x3[3]),
    .X4_Y1(x4[3]),
    .X5_Y1(x5[3])
);

sky130_osu_ring_oscillator_mpr2ea_8_b0r1 ro5(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[4]),
    .X2_Y1(x2[4]),
    .X3_Y1(x3[4]),
    .X4_Y1(x4[4]),
    .X5_Y1(x5[4])
);

sky130_osu_ring_oscillator_mpr2et_8_b0r1 ro6(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[5]),
    .X2_Y1(x2[5]),
    .X3_Y1(x3[5]),
    .X4_Y1(x4[5]),
    .X5_Y1(x5[5])
);

sky130_osu_ring_oscillator_mpr2xa_8_b0r1 ro7(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[6]),
    .X2_Y1(x2[6]),
    .X3_Y1(x3[6]),
    .X4_Y1(x4[6]),
    .X5_Y1(x5[6])
);

sky130_osu_ring_oscillator_mpr2ya_8_b0r1 ro8(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[7]),
    .X2_Y1(x2[7]),
    .X3_Y1(x3[7]),
    .X4_Y1(x4[7]),
    .X5_Y1(x5[7])
);

sky130_osu_ring_oscillator_mpr2aa_8_b0r2 ro9(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[8]),
    .X2_Y1(x2[8]),
    .X3_Y1(x3[8]),
    .X4_Y1(x4[8]),
    .X5_Y1(x5[8])
);

sky130_osu_ring_oscillator_mpr2at_8_b0r2 ro10(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[9]),
    .X2_Y1(x2[9]),
    .X3_Y1(x3[9]),
    .X4_Y1(x4[9]),
    .X5_Y1(x5[9])
);

sky130_osu_ring_oscillator_mpr2ca_8_b0r2 ro11(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[10]),
    .X2_Y1(x2[10]),
    .X3_Y1(x3[10]),
    .X4_Y1(x4[10]),
    .X5_Y1(x5[10])
);

sky130_osu_ring_oscillator_mpr2ct_8_b0r2 ro12(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[11]),
    .X2_Y1(x2[11]),
    .X3_Y1(x3[11]),
    .X4_Y1(x4[11]),
    .X5_Y1(x5[11])
);

sky130_osu_ring_oscillator_mpr2ea_8_b0r2 ro13(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[12]),
    .X2_Y1(x2[12]),
    .X3_Y1(x3[12]),
    .X4_Y1(x4[12]),
    .X5_Y1(x5[12])
);

sky130_osu_ring_oscillator_mpr2et_8_b0r2 ro14(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[13]),
    .X2_Y1(x2[13]),
    .X3_Y1(x3[13]),
    .X4_Y1(x4[13]),
    .X5_Y1(x5[13])
);

sky130_osu_ring_oscillator_mpr2xa_8_b0r2 ro15(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[14]),
    .X2_Y1(x2[14]),
    .X3_Y1(x3[14]),
    .X4_Y1(x4[14]),
    .X5_Y1(x5[14])
);

sky130_osu_ring_oscillator_mpr2ya_8_b0r2 ro16(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .X1_Y1(x1[15]),
    .X2_Y1(x2[15]),
    .X3_Y1(x3[15]),
    .X4_Y1(x4[15]),
    .X5_Y1(x5[15])
);

mux16x1_project mprj1 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .data_in(x1[15:0]),
    .select(io_in[6:9]),
    .y(io_out[0])
);

mux16x1_project mprj2 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .data_in(x2[15:0]),
    .select(io_in[6:9]),
    .y(io_out[0])
);

mux16x1_project mprj3 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .data_in(x3[15:0]),
    .select(io_in[6:9]),
    .y(io_out[0])
);

mux16x1_project mprj4 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .data_in(x4[15:0]),
    .select(io_in[6:9]),
    .y(io_out[0])
);

mux16x1_project mprj5 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .data_in(x5[15:0]),
    .select(io_in[6:9]),
    .y(io_out[0])
);

endmodule	// user_project_wrapper

`default_nettype wire
