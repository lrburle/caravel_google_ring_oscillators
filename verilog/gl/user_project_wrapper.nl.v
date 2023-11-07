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

 wire \a[0] ;
 wire \a[10] ;
 wire \a[11] ;
 wire \a[12] ;
 wire \a[13] ;
 wire \a[14] ;
 wire \a[15] ;
 wire \a[1] ;
 wire \a[2] ;
 wire \a[3] ;
 wire \a[4] ;
 wire \a[5] ;
 wire \a[6] ;
 wire \a[7] ;
 wire \a[8] ;
 wire \a[9] ;

 mux16x1_project mprj (.y(io_out[0]),
    .data_in({\a[15] ,
    \a[14] ,
    \a[13] ,
    \a[12] ,
    \a[11] ,
    \a[10] ,
    \a[9] ,
    \a[8] ,
    \a[7] ,
    \a[6] ,
    \a[5] ,
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
endmodule

