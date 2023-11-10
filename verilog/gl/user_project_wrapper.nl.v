// This is the unpowered netlist.
module user_project_wrapper (wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
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
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire \x1[0] ;
 wire \x1[10] ;
 wire \x1[11] ;
 wire \x1[12] ;
 wire \x1[13] ;
 wire \x1[14] ;
 wire \x1[15] ;
 wire \x1[1] ;
 wire \x1[2] ;
 wire \x1[3] ;
 wire \x1[4] ;
 wire \x1[5] ;
 wire \x1[6] ;
 wire \x1[7] ;
 wire \x1[8] ;
 wire \x1[9] ;
 wire \x2[0] ;
 wire \x2[10] ;
 wire \x2[11] ;
 wire \x2[12] ;
 wire \x2[13] ;
 wire \x2[14] ;
 wire \x2[15] ;
 wire \x2[1] ;
 wire \x2[2] ;
 wire \x2[3] ;
 wire \x2[4] ;
 wire \x2[5] ;
 wire \x2[6] ;
 wire \x2[7] ;
 wire \x2[8] ;
 wire \x2[9] ;
 wire \x3[0] ;
 wire \x3[10] ;
 wire \x3[11] ;
 wire \x3[12] ;
 wire \x3[13] ;
 wire \x3[14] ;
 wire \x3[15] ;
 wire \x3[1] ;
 wire \x3[2] ;
 wire \x3[3] ;
 wire \x3[4] ;
 wire \x3[5] ;
 wire \x3[6] ;
 wire \x3[7] ;
 wire \x3[8] ;
 wire \x3[9] ;
 wire \x4[0] ;
 wire \x4[10] ;
 wire \x4[11] ;
 wire \x4[12] ;
 wire \x4[13] ;
 wire \x4[14] ;
 wire \x4[15] ;
 wire \x4[1] ;
 wire \x4[2] ;
 wire \x4[3] ;
 wire \x4[4] ;
 wire \x4[5] ;
 wire \x4[6] ;
 wire \x4[7] ;
 wire \x4[8] ;
 wire \x4[9] ;
 wire \x5[0] ;
 wire \x5[10] ;
 wire \x5[11] ;
 wire \x5[12] ;
 wire \x5[13] ;
 wire \x5[14] ;
 wire \x5[15] ;
 wire \x5[1] ;
 wire \x5[2] ;
 wire \x5[3] ;
 wire \x5[4] ;
 wire \x5[5] ;
 wire \x5[6] ;
 wire \x5[7] ;
 wire \x5[8] ;
 wire \x5[9] ;

 mux16x1_project mprj1 (.y(io_out[0]),
    .data_in({\x1[15] ,
    \x1[14] ,
    \x1[13] ,
    \x1[12] ,
    \x1[11] ,
    \x1[10] ,
    \x1[9] ,
    \x1[8] ,
    \x1[7] ,
    \x1[6] ,
    \x1[5] ,
    \x1[4] ,
    \x1[3] ,
    \x1[2] ,
    \x1[1] ,
    \x1[0] }),
    .select({io_in[9],
    io_in[8],
    io_in[7],
    io_in[6]}));
 mux16x1_project mprj2 (.y(io_out[0]),
    .data_in({\x2[15] ,
    \x2[14] ,
    \x2[13] ,
    \x2[12] ,
    \x2[11] ,
    \x2[10] ,
    \x2[9] ,
    \x2[8] ,
    \x2[7] ,
    \x2[6] ,
    \x2[5] ,
    \x2[4] ,
    \x2[3] ,
    \x2[2] ,
    \x2[1] ,
    \x2[0] }),
    .select({io_in[9],
    io_in[8],
    io_in[7],
    io_in[6]}));
 mux16x1_project mprj3 (.y(io_out[0]),
    .data_in({\x3[15] ,
    \x3[14] ,
    \x3[13] ,
    \x3[12] ,
    \x3[11] ,
    \x3[10] ,
    \x3[9] ,
    \x3[8] ,
    \x3[7] ,
    \x3[6] ,
    \x3[5] ,
    \x3[4] ,
    \x3[3] ,
    \x3[2] ,
    \x3[1] ,
    \x3[0] }),
    .select({io_in[9],
    io_in[8],
    io_in[7],
    io_in[6]}));
 mux16x1_project mprj4 (.y(io_out[0]),
    .data_in({\x4[15] ,
    \x4[14] ,
    \x4[13] ,
    \x4[12] ,
    \x4[11] ,
    \x4[10] ,
    \x4[9] ,
    \x4[8] ,
    \x4[7] ,
    \x4[6] ,
    \x4[5] ,
    \x4[4] ,
    \x4[3] ,
    \x4[2] ,
    \x4[1] ,
    \x4[0] }),
    .select({io_in[9],
    io_in[8],
    io_in[7],
    io_in[6]}));
 mux16x1_project mprj5 (.y(io_out[0]),
    .data_in({\x5[15] ,
    \x5[14] ,
    \x5[13] ,
    \x5[12] ,
    \x5[11] ,
    \x5[10] ,
    \x5[9] ,
    \x5[8] ,
    \x5[7] ,
    \x5[6] ,
    \x5[5] ,
    \x5[4] ,
    \x5[3] ,
    \x5[2] ,
    \x5[1] ,
    \x5[0] }),
    .select({io_in[9],
    io_in[8],
    io_in[7],
    io_in[6]}));
 sky130_osu_ring_oscillator_mpr2aa_8_b0r1 ro1 (.X1_Y1(\x1[0] ),
    .X2_Y1(\x2[0] ),
    .X3_Y1(\x3[0] ),
    .X4_Y1(\x4[0] ),
    .X5_Y1(\x5[0] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]));
 sky130_osu_ring_oscillator_mpr2ca_8_b0r2 ro11 (.X1_Y1(\x1[10] ),
    .X2_Y1(\x2[10] ),
    .X3_Y1(\x3[10] ),
    .X4_Y1(\x4[10] ),
    .X5_Y1(\x5[10] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]));
 sky130_osu_ring_oscillator_mpr2ct_8_b0r2 ro12 (.X1_Y1(\x1[11] ),
    .X2_Y1(\x2[11] ),
    .X3_Y1(\x3[11] ),
    .X4_Y1(\x4[11] ),
    .X5_Y1(\x5[11] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]));
 sky130_osu_ring_oscillator_mpr2ea_8_b0r2 ro13 (.X1_Y1(\x1[12] ),
    .X2_Y1(\x2[12] ),
    .X3_Y1(\x3[12] ),
    .X4_Y1(\x4[12] ),
    .X5_Y1(\x5[12] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]));
 sky130_osu_ring_oscillator_mpr2et_8_b0r2 ro14 (.X1_Y1(\x1[13] ),
    .X2_Y1(\x2[13] ),
    .X3_Y1(\x3[13] ),
    .X4_Y1(\x4[13] ),
    .X5_Y1(\x5[13] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]));
 sky130_osu_ring_oscillator_mpr2xa_8_b0r2 ro15 (.X1_Y1(\x1[14] ),
    .X2_Y1(\x2[14] ),
    .X3_Y1(\x3[14] ),
    .X4_Y1(\x4[14] ),
    .X5_Y1(\x5[14] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]));
 sky130_osu_ring_oscillator_mpr2ca_8_b0r1 ro3 (.X1_Y1(\x1[2] ),
    .X2_Y1(\x2[2] ),
    .X3_Y1(\x3[2] ),
    .X4_Y1(\x4[2] ),
    .X5_Y1(\x5[2] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]));
 sky130_osu_ring_oscillator_mpr2ct_8_b0r1 ro4 (.X1_Y1(\x1[3] ),
    .X2_Y1(\x2[3] ),
    .X3_Y1(\x3[3] ),
    .X4_Y1(\x4[3] ),
    .X5_Y1(\x5[3] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]));
 sky130_osu_ring_oscillator_mpr2ea_8_b0r1 ro5 (.X1_Y1(\x1[4] ),
    .X2_Y1(\x2[4] ),
    .X3_Y1(\x3[4] ),
    .X4_Y1(\x4[4] ),
    .X5_Y1(\x5[4] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]));
 sky130_osu_ring_oscillator_mpr2et_8_b0r1 ro6 (.X1_Y1(\x1[5] ),
    .X2_Y1(\x2[5] ),
    .X3_Y1(\x3[5] ),
    .X4_Y1(\x4[5] ),
    .X5_Y1(\x5[5] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]));
 sky130_osu_ring_oscillator_mpr2xa_8_b0r1 ro7 (.X1_Y1(\x1[6] ),
    .X2_Y1(\x2[6] ),
    .X3_Y1(\x3[6] ),
    .X4_Y1(\x4[6] ),
    .X5_Y1(\x5[6] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]));
endmodule

