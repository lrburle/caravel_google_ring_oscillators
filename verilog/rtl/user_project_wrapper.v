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

wire [15:0] a;

b0r1_sky130_osu_ring_oscillator_mpr2aa_8 ro1(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[0])
);

b0r1_sky130_osu_ring_oscillator_mpr2at_8 ro2(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[1])
);

b0r1_sky130_osu_ring_oscillator_mpr2ca_8 ro3(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[2])
);

b0r1_sky130_osu_ring_oscillator_mpr2ct_8 ro4(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[3])
);

b0r1_sky130_osu_ring_oscillator_mpr2ea_8 ro5(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[4])
);

b0r1_sky130_osu_ring_oscillator_mpr2et_8 ro6(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[5])
);

b0r1_sky130_osu_ring_oscillator_mpr2xa_8 ro7(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[6])
);

b0r1_sky130_osu_ring_oscillator_mpr2ya_8 ro8(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[7])
);

b0r2_sky130_osu_ring_oscillator_mpr2aa_8 ro9(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[8])
);

b0r2_sky130_osu_ring_oscillator_mpr2at_8 ro10(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[9])
);

b0r2_sky130_osu_ring_oscillator_mpr2ca_8 ro11(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[10])
);

b0r2_sky130_osu_ring_oscillator_mpr2ct_8 ro12(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[11])
);

b0r2_sky130_osu_ring_oscillator_mpr2ea_8 ro13(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[12])
);

b0r2_sky130_osu_ring_oscillator_mpr2et_8 ro14(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[13])
);

b0r2_sky130_osu_ring_oscillator_mpr2xa_8 ro15(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[14])
);

b0r2_sky130_osu_ring_oscillator_mpr2ya_8 ro16(
    .VDD(vdda1),
    .GND(vssa1),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(a[15])
);

mux16x1_project #(16) mprj (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .data_in(a[15:0]),
    .select(io_in[5:8]),
    .y(io_out[0])
);

endmodule	// user_project_wrapper

`default_nettype wire
