// This is the unpowered netlist.
module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire one_;
 wire x1_0;
 wire x1_0_;
 wire x1_1;
 wire x1_1_;
 wire x1_2;
 wire x1_2_;
 wire x1_3;
 wire x1_3_;
 wire x1_4;
 wire x1_4_;
 wire x1_5;
 wire x1_5_;
 wire x1_6;
 wire x1_6_;
 wire x1_7;
 wire x1_7_;
 wire x1_8;
 wire x1_8_;
 wire x1_9;
 wire x1_9_;
 wire x2_0;
 wire x2_0_;
 wire x2_1;
 wire x2_1_;
 wire x2_2;
 wire x2_2_;
 wire x2_3;
 wire x2_3_;
 wire x2_4;
 wire x2_4_;
 wire x2_5;
 wire x2_5_;
 wire x2_6;
 wire x2_6_;
 wire x2_7;
 wire x2_7_;
 wire x2_8;
 wire x2_8_;
 wire x2_9;
 wire x2_9_;
 wire x3_0;
 wire x3_0_;
 wire x3_1;
 wire x3_1_;
 wire x3_2;
 wire x3_2_;
 wire x3_3;
 wire x3_3_;
 wire x3_4;
 wire x3_4_;
 wire x3_5;
 wire x3_5_;
 wire x3_6;
 wire x3_6_;
 wire x3_7;
 wire x3_7_;
 wire x3_8;
 wire x3_8_;
 wire x3_9;
 wire x3_9_;
 wire x4_0;
 wire x4_0_;
 wire x4_1;
 wire x4_1_;
 wire x4_2;
 wire x4_2_;
 wire x4_3;
 wire x4_3_;
 wire x4_4;
 wire x4_4_;
 wire x4_5;
 wire x4_5_;
 wire x4_6;
 wire x4_6_;
 wire x4_7;
 wire x4_7_;
 wire x4_8;
 wire x4_8_;
 wire x4_9;
 wire x4_9_;
 wire x5_0;
 wire x5_0_;
 wire x5_1;
 wire x5_1_;
 wire x5_2;
 wire x5_2_;
 wire x5_3;
 wire x5_3_;
 wire x5_4;
 wire x5_4_;
 wire x5_5;
 wire x5_5_;
 wire x5_6;
 wire x5_6_;
 wire x5_7;
 wire x5_7_;
 wire x5_8;
 wire x5_8_;
 wire x5_9;
 wire x5_9_;
 wire zero_;

 mux16x1_project mprj1 (.y(io_out[15]),
    .data_in({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    x1_9_,
    x1_8_,
    x1_7_,
    x1_6_,
    x1_5_,
    x1_4_,
    x1_3_,
    x1_2_,
    x1_1_,
    x1_0_}),
    .select({io_in[14],
    io_in[13],
    io_in[12],
    io_in[11]}));
 mux16x1_project mprj2 (.y(io_out[16]),
    .data_in({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    x2_9_,
    x2_8_,
    x2_7_,
    x2_6_,
    x2_5_,
    x2_4_,
    x2_3_,
    x2_2_,
    x2_1_,
    x2_0_}),
    .select({io_in[14],
    io_in[13],
    io_in[12],
    io_in[11]}));
 mux16x1_project mprj3 (.y(io_out[17]),
    .data_in({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    x3_9_,
    x3_8_,
    x3_7_,
    x3_6_,
    x3_5_,
    x3_4_,
    x3_3_,
    x3_2_,
    x3_1_,
    x3_0_}),
    .select({io_in[14],
    io_in[13],
    io_in[12],
    io_in[11]}));
 mux16x1_project mprj4 (.y(io_out[18]),
    .data_in({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    x4_9_,
    x4_8_,
    x4_7_,
    x4_6_,
    x4_5_,
    x4_4_,
    x4_3_,
    x4_2_,
    x4_1_,
    x4_0_}),
    .select({io_in[14],
    io_in[13],
    io_in[12],
    io_in[11]}));
 mux16x1_project mprj5 (.y(io_out[19]),
    .data_in({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    x5_9_,
    x5_8_,
    x5_7_,
    x5_6_,
    x5_5_,
    x5_4_,
    x5_3_,
    x5_2_,
    x5_1_,
    x5_0_}),
    .select({io_in[14],
    io_in[13],
    io_in[12],
    io_in[11]}));
 sky130_osu_ring_oscillator_mpr2ca_8_b0r1 ro1 (.X1_Y1(x1_0),
    .X2_Y1(x2_0),
    .X3_Y1(x3_0),
    .X4_Y1(x4_0),
    .X5_Y1(x5_0),
    .start(io_in[10]),
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]));
 sky130_osu_ring_oscillator_mpr2xa_8_b0r2 ro10 (.X1_Y1(x1_9),
    .X2_Y1(x2_9),
    .X3_Y1(x3_9),
    .X4_Y1(x4_9),
    .X5_Y1(x5_9),
    .start(io_in[10]),
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]));
 sky130_osu_ring_oscillator_mpr2ct_8_b0r1 ro2 (.X1_Y1(x1_1),
    .X2_Y1(x2_1),
    .X3_Y1(x3_1),
    .X4_Y1(x4_1),
    .X5_Y1(x5_1),
    .start(io_in[10]),
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]));
 sky130_osu_ring_oscillator_mpr2ea_8_b0r1 ro3 (.X1_Y1(x1_2),
    .X2_Y1(x2_2),
    .X3_Y1(x3_2),
    .X4_Y1(x4_2),
    .X5_Y1(x5_2),
    .s1(io_in[5]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]),
    .s2(io_in[6]));
 sky130_osu_ring_oscillator_mpr2et_8_b0r1 ro4 (.X1_Y1(x1_3),
    .X2_Y1(x2_3),
    .X3_Y1(x3_3),
    .X4_Y1(x4_3),
    .X5_Y1(x5_3),
    .start(io_in[10]),
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]));
 sky130_osu_ring_oscillator_mpr2xa_8_b0r1 ro5 (.X1_Y1(x1_4),
    .X2_Y1(x2_4),
    .X3_Y1(x3_4),
    .X4_Y1(x4_4),
    .X5_Y1(x5_4),
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]));
 sky130_osu_ring_oscillator_mpr2ca_8_b0r2 ro6 (.X1_Y1(x1_5),
    .X2_Y1(x2_5),
    .X3_Y1(x3_5),
    .X4_Y1(x4_5),
    .X5_Y1(x5_5),
    .start(io_in[10]),
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]));
 sky130_osu_ring_oscillator_mpr2ct_8_b0r2 ro7 (.X1_Y1(x1_6),
    .X2_Y1(x2_6),
    .X3_Y1(x3_6),
    .X4_Y1(x4_6),
    .X5_Y1(x5_6),
    .start(io_in[10]),
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]));
 sky130_osu_ring_oscillator_mpr2ea_8_b0r2 ro8 (.X1_Y1(x1_7),
    .X2_Y1(x2_7),
    .X3_Y1(x3_7),
    .X4_Y1(x4_7),
    .X5_Y1(x5_7),
    .start(io_in[10]),
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]));
 sky130_osu_ring_oscillator_mpr2et_8_b0r2 ro9 (.X1_Y1(x1_8),
    .X2_Y1(x2_8),
    .X3_Y1(x3_8),
    .X4_Y1(x4_8),
    .X5_Y1(x5_8),
    .s1(io_in[5]),
    .s2(io_in[6]),
    .s3(io_in[7]),
    .s4(io_in[8]),
    .s5(io_in[9]),
    .start(io_in[10]));
 sky130_fd_sc_hd__conb_1 TIE_ZERO_zero_ (.LO(zero_));
 sky130_fd_sc_hd__conb_1 TIE_ONE_one_ (.HI(one_));
 assign io_oeb[10] = one_;
 assign io_oeb[11] = one_;
 assign io_oeb[12] = one_;
 assign io_oeb[13] = one_;
 assign io_oeb[14] = one_;
 assign io_oeb[5] = one_;
 assign io_oeb[6] = one_;
 assign io_oeb[7] = one_;
 assign io_oeb[8] = one_;
 assign io_oeb[9] = one_;
 assign io_oeb[15] = zero_;
 assign io_oeb[16] = zero_;
 assign io_oeb[17] = zero_;
 assign io_oeb[18] = zero_;
 assign io_oeb[19] = zero_;
endmodule

