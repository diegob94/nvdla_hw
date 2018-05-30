
// nv_ram_rwsp_8x14: synthesizable model core
// Generated by /home/nvtools/branch/release/t194_rg/2017/07/12_13_20_10/nvtools/rams/scripts/ramgen - DO NOT EDIT
// Estimated area:     213.84 um^2 (nvstd_tsmc16fflr)


`ifdef _SIMULATE_X_VH_
`else

`ifndef SYNTHESIS
`define tick_x_or_0  1'bx
`define tick_x_or_1  1'bx
`else
`define tick_x_or_0  1'b0
`define tick_x_or_1  1'b1
`endif

`endif


// verilint 549 off - async flop inferred
// verilint 446 off - reading from output port
// verilint 389 off - multiple clocks in module
// verilint 287 off - unconnected ports
// verilint 401 off - Clock is not an input to the module (we use gated clk)
// verilint 257 off - delays ignored by synth tools
// verilint 240 off - Unused input
// verilint 542 off - enabled flop inferred
// verilint 210 off - too few module ports
// verilint 280 off - delay in non-blocking assignment
// verilint 332 off - not all possible cases covered, but default case exists
// verilint 390 off - multiple resets in this module
// verilint 396 off - flop w/o async reset
// verilint 69 off - case without default, all cases covered
// verilint 34 off - unused macro
// verilint 528 off - variable set but not used
// verilint 530 off - flop inferred
// verilint 550 off - mux inferred
// verilint 113 off - multiple drivers to flop
// leda ELB072 off

`timescale 1ns / 10ps


module nv_ram_rwsp_8x14_logic (
               SI,
               SO_int_net,
               clk,
               debug_mode,
               di,
               dout,
               mbist_ramaccess_rst_,
               ore,
               pwrbus_ram_pd,
               ra,
               re,
               scan_en,
               scan_ramcen,
               shiftDR,
               updateDR,
               wa,
               we
        );
parameter FORCE_CONTENTION_ASSERTION_RESET_ACTIVE=1'b0;

// port list for submodule
input           SI;
output          SO_int_net;
input           clk;
input           debug_mode;
input  [13:0]   di;
output [13:0]   dout;
input           mbist_ramaccess_rst_;
input           ore;
input  [31:0]   pwrbus_ram_pd;
input  [2:0]    ra;
input           re;
input           scan_en;
input           scan_ramcen;
input           shiftDR;
input           updateDR;
input  [2:0]    wa;
input           we;


wire [7:0] sleep_en = pwrbus_ram_pd[7:0];
wire  ret_en = pwrbus_ram_pd[8];
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_9 (.A(pwrbus_ram_pd[9]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_10 (.A(pwrbus_ram_pd[10]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_11 (.A(pwrbus_ram_pd[11]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_12 (.A(pwrbus_ram_pd[12]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_13 (.A(pwrbus_ram_pd[13]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_14 (.A(pwrbus_ram_pd[14]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_15 (.A(pwrbus_ram_pd[15]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_16 (.A(pwrbus_ram_pd[16]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_17 (.A(pwrbus_ram_pd[17]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_18 (.A(pwrbus_ram_pd[18]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_19 (.A(pwrbus_ram_pd[19]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_20 (.A(pwrbus_ram_pd[20]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_21 (.A(pwrbus_ram_pd[21]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_22 (.A(pwrbus_ram_pd[22]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_23 (.A(pwrbus_ram_pd[23]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_24 (.A(pwrbus_ram_pd[24]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_25 (.A(pwrbus_ram_pd[25]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_26 (.A(pwrbus_ram_pd[26]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_27 (.A(pwrbus_ram_pd[27]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_28 (.A(pwrbus_ram_pd[28]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_29 (.A(pwrbus_ram_pd[29]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_30 (.A(pwrbus_ram_pd[30]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_31 (.A(pwrbus_ram_pd[31]));
// DFT ATPG signals
wire la_bist_clkw0;
wire la_bist_clkr0;
assign la_bist_clkr0 = la_bist_clkw0;

wire updateDR_sync;
sync2d_c_pp updateDR_synchronizer (.d(updateDR), .clk(la_bist_clkw0), .q(updateDR_sync), .clr_(mbist_ramaccess_rst_));

reg updateDR_sync_1p;
always @(posedge la_bist_clkr0 or negedge mbist_ramaccess_rst_) begin
    if (!mbist_ramaccess_rst_)
        updateDR_sync_1p <= 1'b0;
    else
        updateDR_sync_1p <= updateDR_sync;
end

wire debug_mode_sync;

wire dft_rst_gated_clk;
CKLNQD12PO4  CLK_GATE_clk (.Q(dft_rst_gated_clk), .CP(clk), .E(mbist_ramaccess_rst_), .TE(scan_en));
sync2d_c_pp debug_mode_synchronizer (.d(debug_mode), .clk(dft_rst_gated_clk), .q(debug_mode_sync), .clr_(mbist_ramaccess_rst_));

wire reg_shiftDR = shiftDR;
wire reg_data_shiftDR = reg_shiftDR;
wire [2:0] Ra_array_reg_r0;

// Declare the Data_reg signal beforehand
reg [13:0] Data_reg_r0;


 // Data out bus for read port r0 for Output Mux
wire [13:0] r0_OutputMuxDataOut;
CKLNQD12PO4  UJ_la_bist_clkw0_gate (.Q(la_bist_clkw0), .CP(clk), .E(debug_mode_sync), .TE(scan_en));

// Write enable bus
wire  we_0_0;
// start of predeclareNvregSignals

// Write Data wires for latch array 
wire [13:0] Wdata_w0;
wire ctx_ctrl_we;

wire posedge_updateDR_sync = updateDR_sync & !updateDR_sync_1p;
// latch array piece specific gated write clock
wire gated_clk_latch;
CKLNQD12PO4  UJ_clk_gated_w0 (.Q(gated_clk_latch), .CP(clk), .E((we)), .TE(debug_mode_sync | scan_en));
wire shiftDR_en;
wire [2:0] D_Ra_array_reg_r0;

wire [2:0] la_muxedRa_r0;
assign D_Ra_array_reg_r0 = ra;
wire Ra_array_capture_enr0 = ( ((re))) ;
wire muxed_Ra_array_capture_enr0 = !debug_mode_sync & Ra_array_capture_enr0;
wire Ra_to_Wi_so;
wire [2:0]radr_latchq;
assign Ra_array_reg_r0 = radr_latchq ;
assign la_muxedRa_r0 = Ra_array_reg_r0;

// ------------------  START PIECE ----------------------------------
// Suffix  : Piece Latch_Array (LatchArray)
// Covers Addresses from 0 to 7  Addressrange: [2:0]  
// Data Bit range: [13:0] (14 bits)   
// Enables: 1   Enable range: 

// Write Address bus

wire [2:0] wa_0_0;
assign wa_0_0 = wa;

// Write Data in bus
wire [13:0] di_0_0;
assign di_0_0 = di[13:0];
assign we_0_0 = we;

// Read Address bus
wire [2:0] ra_0_0;
assign ra_0_0 = la_muxedRa_r0;

// Read DataOut bus
wire [13:0] dout_0_0;

reg [7:0] WA_w0_decode;
always @(wa)
begin
   WA_w0_decode = 8'd0;
   case(wa)
      3'd0 : WA_w0_decode[0] = 1;
      3'd1 : WA_w0_decode[1] = 1;
      3'd2 : WA_w0_decode[2] = 1;
      3'd3 : WA_w0_decode[3] = 1;
      3'd4 : WA_w0_decode[4] = 1;
      3'd5 : WA_w0_decode[5] = 1;
      3'd6 : WA_w0_decode[6] = 1;
      3'd7 : WA_w0_decode[7] = 1;
   endcase
end

wire [7 : 0 ] muxed_Wa_decode_w0 = WA_w0_decode[7 : 0] & {8{we}}  & {8{!debug_mode}};

wire [7 : 0 ] muxed_Wa_decode_common = muxed_Wa_decode_w0 ; 

wire latchInst_qg_row0_w0EN_r0;
assign latchInst_qg_row0_w0EN_r0 = muxed_Wa_decode_common[0] & !debug_mode_sync  & !scan_ramcen;
wire latchNet_G_en0;
SCKLNQD2PO4 latchInst_qg_row0_w0 (.Q(latchNet_G_en0), .CP(gated_clk_latch), .E(latchInst_qg_row0_w0EN_r0), .SE(1'b0), .SI(1'b0), .SO());
wire latchInst_qg_row1_w0EN_r1;
assign latchInst_qg_row1_w0EN_r1 = muxed_Wa_decode_common[1] & !debug_mode_sync  & !scan_ramcen;
wire latchNet_G_en1;
SCKLNQD2PO4 latchInst_qg_row1_w0 (.Q(latchNet_G_en1), .CP(gated_clk_latch), .E(latchInst_qg_row1_w0EN_r1), .SE(1'b0), .SI(1'b0), .SO());
wire latchInst_qg_row2_w0EN_r2;
assign latchInst_qg_row2_w0EN_r2 = muxed_Wa_decode_common[2] & !debug_mode_sync  & !scan_ramcen;
wire latchNet_G_en2;
SCKLNQD2PO4 latchInst_qg_row2_w0 (.Q(latchNet_G_en2), .CP(gated_clk_latch), .E(latchInst_qg_row2_w0EN_r2), .SE(1'b0), .SI(1'b0), .SO());
wire latchInst_qg_row3_w0EN_r3;
assign latchInst_qg_row3_w0EN_r3 = muxed_Wa_decode_common[3] & !debug_mode_sync  & !scan_ramcen;
wire latchNet_G_en3;
SCKLNQD2PO4 latchInst_qg_row3_w0 (.Q(latchNet_G_en3), .CP(gated_clk_latch), .E(latchInst_qg_row3_w0EN_r3), .SE(1'b0), .SI(1'b0), .SO());
wire latchInst_qg_row4_w0EN_r4;
assign latchInst_qg_row4_w0EN_r4 = muxed_Wa_decode_common[4] & !debug_mode_sync  & !scan_ramcen;
wire latchNet_G_en4;
SCKLNQD2PO4 latchInst_qg_row4_w0 (.Q(latchNet_G_en4), .CP(gated_clk_latch), .E(latchInst_qg_row4_w0EN_r4), .SE(1'b0), .SI(1'b0), .SO());
wire latchInst_qg_row5_w0EN_r5;
assign latchInst_qg_row5_w0EN_r5 = muxed_Wa_decode_common[5] & !debug_mode_sync  & !scan_ramcen;
wire latchNet_G_en5;
SCKLNQD2PO4 latchInst_qg_row5_w0 (.Q(latchNet_G_en5), .CP(gated_clk_latch), .E(latchInst_qg_row5_w0EN_r5), .SE(1'b0), .SI(1'b0), .SO());
wire latchInst_qg_row6_w0EN_r6;
assign latchInst_qg_row6_w0EN_r6 = muxed_Wa_decode_common[6] & !debug_mode_sync  & !scan_ramcen;
wire latchNet_G_en6;
SCKLNQD2PO4 latchInst_qg_row6_w0 (.Q(latchNet_G_en6), .CP(gated_clk_latch), .E(latchInst_qg_row6_w0EN_r6), .SE(1'b0), .SI(1'b0), .SO());
wire latchInst_qg_row7_w0EN_r7;
assign latchInst_qg_row7_w0EN_r7 = muxed_Wa_decode_common[7] & !debug_mode_sync  & !scan_ramcen;
wire latchNet_G_en7;
SCKLNQD2PO4 latchInst_qg_row7_w0 (.Q(latchNet_G_en7), .CP(gated_clk_latch), .E(latchInst_qg_row7_w0EN_r7), .SE(1'b0), .SI(1'b0), .SO());

// Declare the SI and SO signals for this piece
wire SO_0_0;
reg [13:0] RaDecodeDor0;
wire [13:0] LatchArray_row0;
wire [13:0] LatchArray_row1;
wire [13:0] LatchArray_row2;
wire [13:0] LatchArray_row3;
wire [13:0] LatchArray_row4;
wire [13:0] LatchArray_row5;
wire [13:0] LatchArray_row6;
wire [13:0] LatchArray_row7;

// Register to hold the input data for port w0
wire [13:0] bist_Wdata_w0_reg_d = RaDecodeDor0;
wire [13:0] Wdata_w0_reg_d;
assign Wdata_w0_reg_d = (debug_mode_sync) ? bist_Wdata_w0_reg_d : di_0_0;
wire wdata_w0_scanin = Ra_to_Wi_so;

// testInst_Wdata_reg for latch array only
wire [13:0]wd_q;
assign Wdata_w0 = wd_q ;

wire [13:0] Wdata_row0 =  Wdata_w0 ;
wire [13:0] Wdata_row1 =  Wdata_w0 ;
wire [13:0] Wdata_row2 =  Wdata_w0 ;
wire [13:0] Wdata_row3 =  Wdata_w0 ;
wire [13:0] Wdata_row4 =  Wdata_w0 ;
wire [13:0] Wdata_row5 =  Wdata_w0 ;
wire [13:0] Wdata_row6 =  Wdata_w0 ;
wire [13:0] Wdata_row7 =  Wdata_w0 ;

LHQLPD1PO4 latchInst_latch_bit0_row0 (
                   .Q(LatchArray_row0[0]),
                   .D(Wdata_row0[0]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit0_row1 (
                   .Q(LatchArray_row1[0]),
                   .D(Wdata_row1[0]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit0_row2 (
                   .Q(LatchArray_row2[0]),
                   .D(Wdata_row2[0]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit0_row3 (
                   .Q(LatchArray_row3[0]),
                   .D(Wdata_row3[0]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit0_row4 (
                   .Q(LatchArray_row4[0]),
                   .D(Wdata_row4[0]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit0_row5 (
                   .Q(LatchArray_row5[0]),
                   .D(Wdata_row5[0]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit0_row6 (
                   .Q(LatchArray_row6[0]),
                   .D(Wdata_row6[0]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit0_row7 (
                   .Q(LatchArray_row7[0]),
                   .D(Wdata_row7[0]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit1_row0 (
                   .Q(LatchArray_row0[1]),
                   .D(Wdata_row0[1]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit1_row1 (
                   .Q(LatchArray_row1[1]),
                   .D(Wdata_row1[1]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit1_row2 (
                   .Q(LatchArray_row2[1]),
                   .D(Wdata_row2[1]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit1_row3 (
                   .Q(LatchArray_row3[1]),
                   .D(Wdata_row3[1]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit1_row4 (
                   .Q(LatchArray_row4[1]),
                   .D(Wdata_row4[1]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit1_row5 (
                   .Q(LatchArray_row5[1]),
                   .D(Wdata_row5[1]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit1_row6 (
                   .Q(LatchArray_row6[1]),
                   .D(Wdata_row6[1]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit1_row7 (
                   .Q(LatchArray_row7[1]),
                   .D(Wdata_row7[1]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit2_row0 (
                   .Q(LatchArray_row0[2]),
                   .D(Wdata_row0[2]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit2_row1 (
                   .Q(LatchArray_row1[2]),
                   .D(Wdata_row1[2]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit2_row2 (
                   .Q(LatchArray_row2[2]),
                   .D(Wdata_row2[2]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit2_row3 (
                   .Q(LatchArray_row3[2]),
                   .D(Wdata_row3[2]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit2_row4 (
                   .Q(LatchArray_row4[2]),
                   .D(Wdata_row4[2]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit2_row5 (
                   .Q(LatchArray_row5[2]),
                   .D(Wdata_row5[2]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit2_row6 (
                   .Q(LatchArray_row6[2]),
                   .D(Wdata_row6[2]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit2_row7 (
                   .Q(LatchArray_row7[2]),
                   .D(Wdata_row7[2]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit3_row0 (
                   .Q(LatchArray_row0[3]),
                   .D(Wdata_row0[3]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit3_row1 (
                   .Q(LatchArray_row1[3]),
                   .D(Wdata_row1[3]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit3_row2 (
                   .Q(LatchArray_row2[3]),
                   .D(Wdata_row2[3]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit3_row3 (
                   .Q(LatchArray_row3[3]),
                   .D(Wdata_row3[3]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit3_row4 (
                   .Q(LatchArray_row4[3]),
                   .D(Wdata_row4[3]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit3_row5 (
                   .Q(LatchArray_row5[3]),
                   .D(Wdata_row5[3]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit3_row6 (
                   .Q(LatchArray_row6[3]),
                   .D(Wdata_row6[3]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit3_row7 (
                   .Q(LatchArray_row7[3]),
                   .D(Wdata_row7[3]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit4_row0 (
                   .Q(LatchArray_row0[4]),
                   .D(Wdata_row0[4]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit4_row1 (
                   .Q(LatchArray_row1[4]),
                   .D(Wdata_row1[4]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit4_row2 (
                   .Q(LatchArray_row2[4]),
                   .D(Wdata_row2[4]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit4_row3 (
                   .Q(LatchArray_row3[4]),
                   .D(Wdata_row3[4]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit4_row4 (
                   .Q(LatchArray_row4[4]),
                   .D(Wdata_row4[4]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit4_row5 (
                   .Q(LatchArray_row5[4]),
                   .D(Wdata_row5[4]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit4_row6 (
                   .Q(LatchArray_row6[4]),
                   .D(Wdata_row6[4]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit4_row7 (
                   .Q(LatchArray_row7[4]),
                   .D(Wdata_row7[4]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit5_row0 (
                   .Q(LatchArray_row0[5]),
                   .D(Wdata_row0[5]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit5_row1 (
                   .Q(LatchArray_row1[5]),
                   .D(Wdata_row1[5]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit5_row2 (
                   .Q(LatchArray_row2[5]),
                   .D(Wdata_row2[5]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit5_row3 (
                   .Q(LatchArray_row3[5]),
                   .D(Wdata_row3[5]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit5_row4 (
                   .Q(LatchArray_row4[5]),
                   .D(Wdata_row4[5]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit5_row5 (
                   .Q(LatchArray_row5[5]),
                   .D(Wdata_row5[5]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit5_row6 (
                   .Q(LatchArray_row6[5]),
                   .D(Wdata_row6[5]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit5_row7 (
                   .Q(LatchArray_row7[5]),
                   .D(Wdata_row7[5]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit6_row0 (
                   .Q(LatchArray_row0[6]),
                   .D(Wdata_row0[6]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit6_row1 (
                   .Q(LatchArray_row1[6]),
                   .D(Wdata_row1[6]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit6_row2 (
                   .Q(LatchArray_row2[6]),
                   .D(Wdata_row2[6]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit6_row3 (
                   .Q(LatchArray_row3[6]),
                   .D(Wdata_row3[6]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit6_row4 (
                   .Q(LatchArray_row4[6]),
                   .D(Wdata_row4[6]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit6_row5 (
                   .Q(LatchArray_row5[6]),
                   .D(Wdata_row5[6]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit6_row6 (
                   .Q(LatchArray_row6[6]),
                   .D(Wdata_row6[6]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit6_row7 (
                   .Q(LatchArray_row7[6]),
                   .D(Wdata_row7[6]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit7_row0 (
                   .Q(LatchArray_row0[7]),
                   .D(Wdata_row0[7]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit7_row1 (
                   .Q(LatchArray_row1[7]),
                   .D(Wdata_row1[7]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit7_row2 (
                   .Q(LatchArray_row2[7]),
                   .D(Wdata_row2[7]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit7_row3 (
                   .Q(LatchArray_row3[7]),
                   .D(Wdata_row3[7]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit7_row4 (
                   .Q(LatchArray_row4[7]),
                   .D(Wdata_row4[7]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit7_row5 (
                   .Q(LatchArray_row5[7]),
                   .D(Wdata_row5[7]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit7_row6 (
                   .Q(LatchArray_row6[7]),
                   .D(Wdata_row6[7]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit7_row7 (
                   .Q(LatchArray_row7[7]),
                   .D(Wdata_row7[7]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit8_row0 (
                   .Q(LatchArray_row0[8]),
                   .D(Wdata_row0[8]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit8_row1 (
                   .Q(LatchArray_row1[8]),
                   .D(Wdata_row1[8]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit8_row2 (
                   .Q(LatchArray_row2[8]),
                   .D(Wdata_row2[8]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit8_row3 (
                   .Q(LatchArray_row3[8]),
                   .D(Wdata_row3[8]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit8_row4 (
                   .Q(LatchArray_row4[8]),
                   .D(Wdata_row4[8]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit8_row5 (
                   .Q(LatchArray_row5[8]),
                   .D(Wdata_row5[8]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit8_row6 (
                   .Q(LatchArray_row6[8]),
                   .D(Wdata_row6[8]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit8_row7 (
                   .Q(LatchArray_row7[8]),
                   .D(Wdata_row7[8]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit9_row0 (
                   .Q(LatchArray_row0[9]),
                   .D(Wdata_row0[9]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit9_row1 (
                   .Q(LatchArray_row1[9]),
                   .D(Wdata_row1[9]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit9_row2 (
                   .Q(LatchArray_row2[9]),
                   .D(Wdata_row2[9]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit9_row3 (
                   .Q(LatchArray_row3[9]),
                   .D(Wdata_row3[9]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit9_row4 (
                   .Q(LatchArray_row4[9]),
                   .D(Wdata_row4[9]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit9_row5 (
                   .Q(LatchArray_row5[9]),
                   .D(Wdata_row5[9]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit9_row6 (
                   .Q(LatchArray_row6[9]),
                   .D(Wdata_row6[9]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit9_row7 (
                   .Q(LatchArray_row7[9]),
                   .D(Wdata_row7[9]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit10_row0 (
                   .Q(LatchArray_row0[10]),
                   .D(Wdata_row0[10]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit10_row1 (
                   .Q(LatchArray_row1[10]),
                   .D(Wdata_row1[10]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit10_row2 (
                   .Q(LatchArray_row2[10]),
                   .D(Wdata_row2[10]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit10_row3 (
                   .Q(LatchArray_row3[10]),
                   .D(Wdata_row3[10]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit10_row4 (
                   .Q(LatchArray_row4[10]),
                   .D(Wdata_row4[10]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit10_row5 (
                   .Q(LatchArray_row5[10]),
                   .D(Wdata_row5[10]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit10_row6 (
                   .Q(LatchArray_row6[10]),
                   .D(Wdata_row6[10]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit10_row7 (
                   .Q(LatchArray_row7[10]),
                   .D(Wdata_row7[10]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit11_row0 (
                   .Q(LatchArray_row0[11]),
                   .D(Wdata_row0[11]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit11_row1 (
                   .Q(LatchArray_row1[11]),
                   .D(Wdata_row1[11]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit11_row2 (
                   .Q(LatchArray_row2[11]),
                   .D(Wdata_row2[11]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit11_row3 (
                   .Q(LatchArray_row3[11]),
                   .D(Wdata_row3[11]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit11_row4 (
                   .Q(LatchArray_row4[11]),
                   .D(Wdata_row4[11]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit11_row5 (
                   .Q(LatchArray_row5[11]),
                   .D(Wdata_row5[11]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit11_row6 (
                   .Q(LatchArray_row6[11]),
                   .D(Wdata_row6[11]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit11_row7 (
                   .Q(LatchArray_row7[11]),
                   .D(Wdata_row7[11]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit12_row0 (
                   .Q(LatchArray_row0[12]),
                   .D(Wdata_row0[12]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit12_row1 (
                   .Q(LatchArray_row1[12]),
                   .D(Wdata_row1[12]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit12_row2 (
                   .Q(LatchArray_row2[12]),
                   .D(Wdata_row2[12]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit12_row3 (
                   .Q(LatchArray_row3[12]),
                   .D(Wdata_row3[12]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit12_row4 (
                   .Q(LatchArray_row4[12]),
                   .D(Wdata_row4[12]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit12_row5 (
                   .Q(LatchArray_row5[12]),
                   .D(Wdata_row5[12]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit12_row6 (
                   .Q(LatchArray_row6[12]),
                   .D(Wdata_row6[12]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit12_row7 (
                   .Q(LatchArray_row7[12]),
                   .D(Wdata_row7[12]),
                   .E(latchNet_G_en7));
LHQLPD1PO4 latchInst_latch_bit13_row0 (
                   .Q(LatchArray_row0[13]),
                   .D(Wdata_row0[13]),
                   .E(latchNet_G_en0));
LHQLPD1PO4 latchInst_latch_bit13_row1 (
                   .Q(LatchArray_row1[13]),
                   .D(Wdata_row1[13]),
                   .E(latchNet_G_en1));
LHQLPD1PO4 latchInst_latch_bit13_row2 (
                   .Q(LatchArray_row2[13]),
                   .D(Wdata_row2[13]),
                   .E(latchNet_G_en2));
LHQLPD1PO4 latchInst_latch_bit13_row3 (
                   .Q(LatchArray_row3[13]),
                   .D(Wdata_row3[13]),
                   .E(latchNet_G_en3));
LHQLPD1PO4 latchInst_latch_bit13_row4 (
                   .Q(LatchArray_row4[13]),
                   .D(Wdata_row4[13]),
                   .E(latchNet_G_en4));
LHQLPD1PO4 latchInst_latch_bit13_row5 (
                   .Q(LatchArray_row5[13]),
                   .D(Wdata_row5[13]),
                   .E(latchNet_G_en5));
LHQLPD1PO4 latchInst_latch_bit13_row6 (
                   .Q(LatchArray_row6[13]),
                   .D(Wdata_row6[13]),
                   .E(latchNet_G_en6));
LHQLPD1PO4 latchInst_latch_bit13_row7 (
                   .Q(LatchArray_row7[13]),
                   .D(Wdata_row7[13]),
                   .E(latchNet_G_en7));

// Declare the Do buses for data out.


// Do Ra decode

always @(ra_0_0 or LatchArray_row0 or LatchArray_row1 or LatchArray_row2 or 
         LatchArray_row3 or LatchArray_row4 or LatchArray_row5 or 
         LatchArray_row6 or LatchArray_row7)
   // verilint 332 off - not all cases covered, default exists
   case(ra_0_0)
       3'd0 : RaDecodeDor0 = LatchArray_row0;
       3'd1 : RaDecodeDor0 = LatchArray_row1;
       3'd2 : RaDecodeDor0 = LatchArray_row2;
       3'd3 : RaDecodeDor0 = LatchArray_row3;
       3'd4 : RaDecodeDor0 = LatchArray_row4;
       3'd5 : RaDecodeDor0 = LatchArray_row5;
       3'd6 : RaDecodeDor0 = LatchArray_row6;
       3'd7 : RaDecodeDor0 = LatchArray_row7;
       default :RaDecodeDor0 = {14{`tick_x_or_0}};
    endcase

   // verilint 332 on

assign dout_0_0 = RaDecodeDor0;


//------------ Done generating latch array Latch_Array -------------


// --------------------------------------------- 

// Declare the interface wires for Output Mux logic


// verilint 552 off - Different bits of a net are driven in different blocks (harmless, 
// but some synthesis tools generate a warning for this)
reg [13:0] ram_r0_OutputMuxDataOut;

//For bitEnd 13, only one piece Latch_Array in the column.

// verilint 17 off - Range (rather than full vector) in the sensitivity list

always @(dout_0_0)
begin
    ram_r0_OutputMuxDataOut[13:0] = dout_0_0;
end
assign r0_OutputMuxDataOut[13:0] = ram_r0_OutputMuxDataOut[13:0];
// verilint 17 on - Range (rather than full vector) in the sensitivity list



// --------------------- Output Mbist Interface logic  -------------

wire captureDR_r0 = ((((ore)) & !debug_mode_sync) || ( debug_mode_sync ? (1'b1) :  1'b0 ));
////MSB 13 LSB 0  and total rambit is 14 and  dsize is 14

always @(posedge clk) begin

    if (captureDR_r0)
       Data_reg_r0[13:0] <= r0_OutputMuxDataOut[13:0];  
end
assign dout = Data_reg_r0;


// Declare the SO which goes out finally

`ifndef EMU
`ifndef FPGA
`define NO_EMU_NO_FPGA
// lock-up latch for ram_access SO
LNQD1PO4 testInst_ram_access_lockup (
                   .Q(SO_int_net),
                   .D(SO_0_0),
                   .EN(la_bist_clkw0));

`endif
`endif

`ifndef NO_EMU_NO_FPGA
// no latch allow during emulation synthesis 
assign SO_int_net = SO_0_0;
`endif

// Ram access scan chain 
wire gated_clk_jtag_Ra_array_reg_r0_reg;
CKLNQD12PO4  UJ_clk_jtag_Ra_array_reg_r0_reg (.Q(gated_clk_jtag_Ra_array_reg_r0_reg), .CP(clk), .E(debug_mode_sync ? (( 1'b0  | shiftDR ) ) :  (muxed_Ra_array_capture_enr0 |  1'b0  | ( 1'b0 )  ) ), .TE(scan_en));
    
ScanShareSel_JTAG_reg_ext_cg #(3, 0, 0) testInst_Ra_array_reg_r0_reg (
	    .clk(gated_clk_jtag_Ra_array_reg_r0_reg), .sel(debug_mode),
            .shiftDR(shiftDR),
            .reset_(1'b1), .D(D_Ra_array_reg_r0), .Q(radr_latchq),
            .scanin(SI), .scanout(Ra_to_Wi_so)  );
wire gated_clk_jtag_Wdata_w0_reg;
CKLNQD12PO4  UJ_clk_jtag_Wdata_w0_reg (.Q(gated_clk_jtag_Wdata_w0_reg), .CP(clk), .E(debug_mode_sync ? (posedge_updateDR_sync| ( 1'b0  | shiftDR ) ) :  ((|we_0_0)  | 1'b0 |  1'b0  | ( 1'b0 )  ) ), .TE(scan_en));
    
ScanShareSel_JTAG_reg_ext_cg #(14, 0, 0) testInst_Wdata_w0_reg (
	    .clk(gated_clk_jtag_Wdata_w0_reg), .sel(debug_mode),
            .shiftDR(shiftDR),
            .reset_(1'b1), .D(Wdata_w0_reg_d), .Q(wd_q),
            .scanin(wdata_w0_scanin), .scanout(SO_0_0)  );

`ifdef ASSERT_ON
`ifndef SYNTHESIS
reg sim_reset_;
initial sim_reset_ = 0;
always @(posedge clk) sim_reset_ <= 1'b1;

wire start_of_sim = sim_reset_;


wire disable_clk_x_test = $test$plusargs ("disable_clk_x_test") ? 1'b1 : 1'b0;
nv_assert_no_x #(1,1,0," Try Reading Ram when clock is x for read port r0") _clk_x_test_read (clk, sim_reset_, ((disable_clk_x_test===1'b0) && (|re===1'b1 )), clk);
nv_assert_no_x #(1,1,0," Try Writing Ram when clock is x for write port w0") _clk_x_test_write (clk, sim_reset_, ((disable_clk_x_test===1'b0) && (|we===1'b1)), clk);
reg [8-1:0] written; 
always@(posedge clk or negedge sim_reset_) begin 
   if(!sim_reset_) begin 
      written <= {8{1'b0}}; 
   end else if( |we)begin 
      written[wa] <= 1'b1; 
   end
end
`endif // SYNTHESIS 
`endif // ASSERT_ON

`ifdef ASSERT_ON
`ifndef SYNTHESIS
`endif
`endif

`ifdef ASSERT_ON
`ifndef SYNTHESIS
wire pwrbus_assertion_not_x_while_active = $test$plusargs ("pwrbus_assertion_not_x_while_active");
nv_assert_never #(0, 0, "Power bus cannot be X when read/write enable is set") _pwrbus_assertion_not_x_while_active_we ( we, sim_reset_ && !pwrbus_assertion_not_x_while_active, ^pwrbus_ram_pd === 1'bx);
nv_assert_never #(0, 0, "Power bus cannot be X when read/write enable is set") _pwrbus_assertion_not_x_while_active_re ( re, sim_reset_ && !pwrbus_assertion_not_x_while_active, ^pwrbus_ram_pd === 1'bx);
`endif
`endif

// submodule done
endmodule