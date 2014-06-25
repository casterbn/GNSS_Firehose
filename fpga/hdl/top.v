// Top-level module, technology-independent
//
// GNSS Firehose
// Copyright (c) 2012 Peter Monta <pmonta@gmail.com>

module top(
  input clk50, clk50_reset,
  input clk64,
  input clk125,

// RF channel 1

  output ch1_sda_t, ch1_scl_t, ch1_gc1,
  input ch1_sda_i, ch1_scl_i,
  output ch1_cs, ch1_sclk,
  input ch1_sdin_i,
  output ch1_sdin_o, ch1_sdin_t,
  input ch1_clk,
  input [15:0] ch1_data,

// RF channel 2

  output ch2_sda_t, ch2_scl_t, ch2_gc1,
  input ch2_sda_i, ch2_scl_i,
  output ch2_cs, ch2_sclk,
  input ch2_sdin_i,
  output ch2_sdin_o, ch2_sdin_t,
  input ch2_clk,
  input [15:0] ch2_data,

// RF channel 3

  output ch3_sda_t, ch3_scl_t, ch3_gc1,
  input ch3_sda_i, ch3_scl_i,
  output ch3_cs, ch3_sclk,
  input ch3_sdin_i,
  output ch3_sdin_o, ch3_sdin_t,
  input ch3_clk,
  input [15:0] ch3_data,

// baseband channel 4

  output ch4_cs, ch4_sclk,
  input ch4_sdin_i,
  output ch4_sdin_o, ch4_sdin_t,
  input ch4_clk,
  input [15:0] ch4_data,

// Ethernet PHY

  input phy_tx_clk,
  output [7:0] phy_tx_mux_data,
  output [1:0] phy_tx_mux_ctl,

  input phy_rx_clk,
  input [7:0] phy_rx_demux_data,
  input [1:0] phy_rx_demux_ctl,

  output phy_mdc,
  input phy_mdio_i,
  output phy_mdio_o, phy_mdio_t,
  input phy_mdint,
  output phy_reset,

// clock chip

  output clock_clk,
  output clock_data,
  output clock_le,
  input clock_readback,
  input clock_ftest_ld,

// debugging UART

  input uart_rx,
  output uart_tx,

// LEDs

  output led0,
  output led1
);

// PWM for gain control pins

  wire [9:0] pwm_ch1, pwm_ch2, pwm_ch3;

  pwm _pwm_ch1(clk50, pwm_ch1, ch1_gc1);
  pwm _pwm_ch2(clk50, pwm_ch2, ch2_gc1);
  pwm _pwm_ch3(clk50, pwm_ch3, ch3_gc1);

// quantizers

  wire [15:0] source_data;
  wire source_en;

  assign source_clk = clk64;
  assign source_reset = clk50_reset;

  wire [7:0] ch1_i, ch1_q;
  wire [7:0] ch2_i, ch2_q;
  wire [7:0] ch3_i, ch3_q;
  wire [7:0] ch4_i, ch4_q;

  wire [15:0] ch1_data_binary;
  wire [15:0] ch2_data_binary;
  wire [15:0] ch3_data_binary;
  wire [15:0] ch4_data_binary;

  gray_to_binary _gray0(clk64, ch1_data[15:8], ch1_data_binary[15:8]);
  gray_to_binary _gray1(clk64, ch1_data[7:0], ch1_data_binary[7:0]);
  gray_to_binary _gray2(clk64, ch2_data[15:8], ch2_data_binary[15:8]);
  gray_to_binary _gray3(clk64, ch2_data[7:0], ch2_data_binary[7:0]);
  gray_to_binary _gray4(clk64, ch3_data[15:8], ch3_data_binary[15:8]);
  gray_to_binary _gray5(clk64, ch3_data[7:0], ch3_data_binary[7:0]);
  gray_to_binary _gray6(clk64, ch4_data[15:8], ch4_data_binary[15:8]);
  gray_to_binary _gray7(clk64, ch4_data[7:0], ch4_data_binary[7:0]);

  assign {ch1_i, ch1_q} = {ch1_data_binary[15:8], ch1_data_binary[7:0]};
  assign {ch2_i, ch2_q} = {ch2_data_binary[15:8], ch2_data_binary[7:0]};
  assign {ch3_i, ch3_q} = {ch3_data_binary[15:8], ch3_data_binary[7:0]};
  assign {ch4_i, ch4_q} = {ch4_data_binary[15:8], ch4_data_binary[7:0]};

  wire [1:0] ch1_si, ch1_sq;
  wire [1:0] ch2_si, ch2_sq;
  wire [1:0] ch3_si, ch3_sq;

  wire [7:0] ch1_i_dc, ch1_q_dc;

  quantize _quantize_ch1_i(source_clk, ch1_i+ch1_i_dc, ch1_si);
  quantize _quantize_ch1_q(source_clk, ch1_q+ch1_q_dc, ch1_sq);
  quantize _quantize_ch2_i(source_clk, ch2_i, ch2_si);
  quantize _quantize_ch2_q(source_clk, ch2_q, ch2_sq);
  quantize _quantize_ch3_i(source_clk, ch3_i, ch3_si);
  quantize _quantize_ch3_q(source_clk, ch3_q, ch3_sq);

  wire [7:0] ch1_hist_0, ch1_hist_1;
  wire [7:0] ch2_hist_0, ch2_hist_1;
  wire [7:0] ch3_hist_0, ch3_hist_1;

  histogram _hist_ch1(source_clk, ch1_si, ch1_hist_0, ch1_hist_1);
  histogram _hist_ch2(source_clk, ch2_si, ch2_hist_0, ch2_hist_1);
  histogram _hist_ch3(source_clk, ch3_si, ch3_hist_0, ch3_hist_1);

  wire [7:0] ch1_i_sum, ch1_q_sum;

  dc_sum _dc_sum1(source_clk, ch1_i, ch1_i_sum);
  dc_sum _dc_sum2(source_clk, ch1_q, ch1_q_sum);

  reg [15:0] s_bits;
  reg s_en;

  always @(posedge source_clk) begin
    s_bits <= {s_bits[7:0],ch1_si,ch1_sq,ch3_si,ch3_sq};
    s_en <= ~s_en;
  end

  assign source_data = s_bits;
  assign source_en = s_en;

  wire [15:0] packet_count;

// Ethernet MAC

  packet_streamer _packet_streamer(
    source_clk, source_reset,
    source_data, source_en,
    phy_tx_clk, phy_tx_mux_data, phy_tx_mux_ctl,
    packet_count,
    streamer_enable
  );

// clock activity counters

  wire [7:0] activity_clk64;
  wire [7:0] activity_clk125;
  wire [7:0] activity_phy_tx_clk;
  wire [7:0] activity_phy_rx_clk;

  clock_counter _clk1(clk64, activity_clk64);
  clock_counter _clk2(clk125, activity_clk125);
  clock_counter _clk3(phy_tx_clk, activity_phy_tx_clk);
  clock_counter _clk4(phy_rx_clk, activity_phy_rx_clk);

// I/O ports for peripherals

  wire [7:0] out_port_0;  // Clock chip serial link
  wire [7:0] out_port_1;  // loopback testing
  wire [7:0] out_port_2;  // LEDs
  wire [7:0] out_port_4;  // Ethernet PHY SMI bus
  wire [7:0] out_port_6;  // pwm, ch1
  wire [7:0] out_port_7;
  wire [7:0] out_port_8;  // pwm, ch2
  wire [7:0] out_port_9;
  wire [7:0] out_port_10;  // pwm, ch3
  wire [7:0] out_port_11;
  wire [7:0] out_port_12;  // SPI, ch1
  wire [7:0] out_port_13;  // SPI, ch2
  wire [7:0] out_port_14;  // SPI, ch3
  wire [7:0] out_port_15;  // SPI, ch4
  wire [7:0] out_port_17;  // I2C, ch1
  wire [7:0] out_port_18;  // I2C, ch2
  wire [7:0] out_port_19;  // I2C, ch3
  wire [7:0] out_port_20;  // PHY reset
  wire [7:0] out_port_21;  // packet streamer control
  wire [7:0] out_port_22;  // ch1_i DC correction
  wire [7:0] out_port_23;  // ch1_q DC correction

  assign {clock_clk,clock_data,clock_le} = out_port_0[2:0];
  assign led1 = out_port_2[0];
  assign {phy_mdc,phy_mdio_o,phy_mdio_t} = out_port_4[2:0];
  assign pwm_ch1 = {out_port_7[1:0],out_port_6};
  assign pwm_ch2 = {out_port_9[1:0],out_port_8};
  assign pwm_ch3 = {out_port_11[1:0],out_port_10};
  assign {ch1_cs,ch1_sclk,ch1_sdin_o,ch1_sdin_t} = out_port_12;
  assign {ch2_cs,ch2_sclk,ch2_sdin_o,ch2_sdin_t} = out_port_13;
  assign {ch3_cs,ch3_sclk,ch3_sdin_o,ch3_sdin_t} = out_port_14;
  assign {ch4_cs,ch4_sclk,ch4_sdin_o,ch4_sdin_t} = out_port_15;
  assign {ch1_sda_t,ch1_scl_t} = out_port_17;
  assign {ch2_sda_t,ch2_scl_t} = out_port_18;
  assign {ch3_sda_t,ch3_scl_t} = out_port_19;
  assign phy_reset = out_port_20[0];
  assign streamer_enable = out_port_21[0];
  assign ch1_i_dc = out_port_22;
  assign ch1_q_dc = out_port_23;

  wire [7:0] in_port_0;  // clock chip readback and lock status
  wire [7:0] in_port_1;  // loopback testing
  wire [7:0] in_port_2;  // PHY SMI bus
  wire [7:0] in_port_5;  // I2C and SPI, ch1
  wire [7:0] in_port_6;  // I2C and SPI, ch2
  wire [7:0] in_port_7;  // I2C and SPI, ch3
  wire [7:0] in_port_8;  // SPI, ch4
  wire [7:0] in_port_17; // I2C readback
  wire [7:0] in_port_18; // I2C readback
  wire [7:0] in_port_19; // I2C readback
  wire [7:0] in_port_20; // histogram readback, ch1
  wire [7:0] in_port_21;
  wire [7:0] in_port_22; // histogram readback, ch2
  wire [7:0] in_port_23;
  wire [7:0] in_port_24; // histogram readback, ch3
  wire [7:0] in_port_25;
  wire [7:0] in_port_26; // packet count
  wire [7:0] in_port_27;
  wire [7:0] in_port_28; // clock activity counter, clk64
  wire [7:0] in_port_29; // clock activity counter, clk125
  wire [7:0] in_port_30; // clock activity counter, phy_tx_clk
  wire [7:0] in_port_31; // clock activity counter, phy_rx_clk
  wire [7:0] in_port_35; // DC sum of ch1_i
  wire [7:0] in_port_36; // DC sum of ch1_q

  assign in_port_0 = {6'd0,clock_readback,clock_ftest_ld};
  assign in_port_1 = out_port_1;
  assign in_port_2 = {6'd0,phy_mdio_i,phy_mdint};
  assign in_port_5 = {ch1_sda_i,ch1_scl_i,ch1_sdin_i};
  assign in_port_6 = {ch2_sda_i,ch2_scl_i,ch2_sdin_i};
  assign in_port_7 = {ch3_sda_i,ch3_scl_i,ch3_sdin_i};
  assign in_port_8 = {ch4_sdin_i};
  assign in_port_17 = {ch1_sda_t,ch1_scl_t};
  assign in_port_18 = {ch2_sda_t,ch2_scl_t};
  assign in_port_19 = {ch3_sda_t,ch3_scl_t};
  assign in_port_20 = ch1_hist_0;
  assign in_port_21 = ch1_hist_1;
  assign in_port_22 = ch2_hist_0;
  assign in_port_23 = ch2_hist_1;
  assign in_port_24 = ch3_hist_0;
  assign in_port_25 = ch3_hist_1;
  assign in_port_26 = packet_count[15:8];
  assign in_port_27 = packet_count[7:0];
  assign in_port_28 = activity_clk64;
  assign in_port_29 = activity_clk125;
  assign in_port_30 = activity_phy_tx_clk;
  assign in_port_31 = activity_phy_rx_clk;
  assign in_port_35 = ch1_i_sum;
  assign in_port_36 = ch1_q_sum;

// housekeeping CPU

  cpu _cpu(clk50, clk50_reset,
    uart_tx, uart_rx,
    out_port_0, out_port_1, out_port_2, out_port_4, out_port_6, out_port_7,
    out_port_8, out_port_9, out_port_10, out_port_11, out_port_12, out_port_13, out_port_14, out_port_15,
    out_port_17, out_port_18, out_port_19,
    out_port_20,
    out_port_21,
    out_port_22, out_port_23,
    in_port_0, in_port_1, in_port_2, in_port_5, in_port_6, in_port_7, in_port_8,
    in_port_17, in_port_18, in_port_19,
    in_port_20, in_port_21, in_port_22, in_port_23, in_port_24, in_port_25,
    in_port_26, in_port_27,
    in_port_28, in_port_29, in_port_30, in_port_31,
    in_port_35, in_port_36
  );

// monitor the lock-detect signal

  activity _activity(clk50, clock_ftest_ld, led0);

endmodule

module clock_counter(
  input clk,
  output [7:0] c
);
  
  reg [27:0] p;

  always @(posedge clk)
    p <= p + 1;

  assign c = p[27:20];

endmodule

module gray_to_binary(
  input clk,
  input [7:0] x,
  output reg [7:0] y
);

  reg [7:0] z;

  wire [7:0] xr = {x[0],x[1],x[2],x[3],x[4],x[5],x[6],x[7]};

  always @(x) begin
    z[7] = xr[7];
    z[6] = xr[6]^z[7];
    z[5] = xr[5]^z[6];
    z[4] = xr[4]^z[5];
    z[3] = xr[3]^z[4];
    z[2] = xr[2]^z[3];
    z[1] = xr[1]^z[2];
    z[0] = xr[0]^z[1];
  end

  always @(posedge clk)
    y <= {~z[7],z[6:0]};

endmodule


`include "cpu/cpu.v"
`include "cpu/uart.v"
`include "cpu/pacoblaze/pacoblaze.v"
`include "cpu/cpu_rom.v"
`include "ram.v"
`include "pwm.v"
`include "packet_streamer.v"
`include "crc.v"
`include "activity.v"
`include "quantize.v"
`include "histogram.v"
