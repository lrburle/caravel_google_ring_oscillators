module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    vssa2,
    vdda2,
    vssa1,
    vdda1,
    vssd2,
    vccd2,
    vssd1,
    vccd1,
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
 input vssa2;
 input vdda2;
 input vssa1;
 input vdda1;
 input vssd2;
 input vccd2;
 input vssd1;
 input vccd1;
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

 wire \x1[0] ;
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
 wire \x5[1] ;
 wire \x5[2] ;
 wire \x5[3] ;
 wire \x5[4] ;
 wire \x5[5] ;
 wire \x5[6] ;
 wire \x5[7] ;
 wire \x5[8] ;
 wire \x5[9] ;
 wire zero_;

 mux16x1_project mprj1 (.vccd1(vccd1),
    .vssd1(vssd1),
    .y(io_out[0]),
    .data_in({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
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
 mux16x1_project mprj2 (.vccd1(vccd1),
    .vssd1(vssd1),
    .y(io_out[0]),
    .data_in({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
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
 mux16x1_project mprj3 (.vccd1(vccd1),
    .vssd1(vssd1),
    .y(io_out[0]),
    .data_in({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
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
 mux16x1_project mprj4 (.vccd1(vccd1),
    .vssd1(vssd1),
    .y(io_out[0]),
    .data_in({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
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
 mux16x1_project mprj5 (.vccd1(vccd1),
    .vssd1(vssd1),
    .y(io_out[0]),
    .data_in({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
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
 sky130_osu_ring_oscillator_mpr2ca_8_b0r1 ro1 (.start(io_in[5]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .X1_Y1(\x1[0] ),
    .X2_Y1(\x2[0] ),
    .X3_Y1(\x3[0] ),
    .X4_Y1(\x4[0] ),
    .X5_Y1(\x5[0] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]));
 sky130_osu_ring_oscillator_mpr2xa_8_b0r2 ro10 (.s4(io_in[3]),
    .s5(io_in[4]),
    .start(io_in[5]),
    .vssd1(vssd1),
    .vccd1(vccd1),
    .X1_Y1(\x1[9] ),
    .X2_Y1(\x2[9] ),
    .X3_Y1(\x3[9] ),
    .X4_Y1(\x4[9] ),
    .X5_Y1(\x5[9] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]));
 sky130_osu_ring_oscillator_mpr2ct_8_b0r1 ro2 (.start(io_in[5]),
    .vssd1(vssd1),
    .vccd1(vccd1),
    .X1_Y1(\x1[1] ),
    .X2_Y1(\x2[1] ),
    .X3_Y1(\x3[1] ),
    .X4_Y1(\x4[1] ),
    .X5_Y1(\x5[1] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]));
 sky130_osu_ring_oscillator_mpr2ea_8_b0r1 ro3 (.start(io_in[5]),
    .vssd1(vssd1),
    .vccd1(vccd1),
    .X1_Y1(\x1[2] ),
    .X2_Y1(\x2[2] ),
    .X3_Y1(\x3[2] ),
    .X4_Y1(\x4[2] ),
    .X5_Y1(\x5[2] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]));
 sky130_osu_ring_oscillator_mpr2et_8_b0r1 ro4 (.start(io_in[5]),
    .vssd1(vssd1),
    .vccd1(vccd1),
    .X1_Y1(\x1[3] ),
    .X2_Y1(\x2[3] ),
    .X3_Y1(\x3[3] ),
    .X4_Y1(\x4[3] ),
    .X5_Y1(\x5[3] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]));
 sky130_osu_ring_oscillator_mpr2xa_8_b0r1 ro5 (.start(io_in[5]),
    .vssd1(vssd1),
    .vccd1(vccd1),
    .X1_Y1(\x1[4] ),
    .X2_Y1(\x2[4] ),
    .X3_Y1(\x3[4] ),
    .X4_Y1(\x4[4] ),
    .X5_Y1(\x5[4] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]));
 sky130_osu_ring_oscillator_mpr2ca_8_b0r2 ro6 (.start(io_in[5]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .X1_Y1(\x1[5] ),
    .X2_Y1(\x2[5] ),
    .X3_Y1(\x3[5] ),
    .X4_Y1(\x4[5] ),
    .X5_Y1(\x5[5] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]));
 sky130_osu_ring_oscillator_mpr2ct_8_b0r2 ro7 (.start(io_in[5]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .X1_Y1(\x1[6] ),
    .X2_Y1(\x2[6] ),
    .X3_Y1(\x3[6] ),
    .X4_Y1(\x4[6] ),
    .X5_Y1(\x5[6] ),
    .s5(io_in[4]),
    .s4(io_in[3]),
    .s3(io_in[2]),
    .s2(io_in[1]),
    .s1(io_in[0]));
 sky130_osu_ring_oscillator_mpr2ea_8_b0r2 ro8 (.start(io_in[5]),
    .vssd1(vssd1),
    .vccd1(vccd1),
    .X1_Y1(\x1[7] ),
    .X2_Y1(\x2[7] ),
    .X3_Y1(\x3[7] ),
    .X4_Y1(\x4[7] ),
    .X5_Y1(\x5[7] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]));
 sky130_osu_ring_oscillator_mpr2et_8_b0r2 ro9 (.start(io_in[5]),
    .vssd1(vssd1),
    .vccd1(vccd1),
    .X1_Y1(\x1[8] ),
    .X2_Y1(\x2[8] ),
    .X3_Y1(\x3[8] ),
    .X4_Y1(\x4[8] ),
    .X5_Y1(\x5[8] ),
    .s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]));
 sky130_fd_sc_hd__conb_1 TIE_ZERO_zero_ (.VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1),
    .LO(zero_));
endmodule
