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

 wire \a[0] ;
 wire \a[1] ;
 wire \a[2] ;
 wire \a[3] ;
 wire \a[4] ;
 wire zero_;

 mux16x1_project mprj (.y(io_out[0]),
    .data_in({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    \a[4] ,
    \a[3] ,
    \a[2] ,
    \a[1] ,
    \a[0] }),
    .select({io_in[9],
    io_in[8],
    io_in[7],
    io_in[6]}));
 sky130_osu_ring_oscillator_mpr2ca_8_b0r1 ro1 (.s1(io_in[0]),
    .s2(io_in[1]),
    .s3(io_in[2]),
    .s4(io_in[3]),
    .s5(io_in[4]),
    .X5_Y1(\a[4] ),
    .X4_Y1(\a[3] ),
    .X3_Y1(\a[2] ),
    .X2_Y1(\a[1] ),
    .X1_Y1(\a[0] ),
    .start(io_in[5]));
 sky130_fd_sc_hd__conb_1 TIE_ZERO_zero_ (.LO(zero_));
endmodule

