`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/22/2020 07:19:28 AM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
           input  clkin_p,
           input  clkin_n,
           input  s0_clk_p,
           input  s0_clk_n,
           output serial_tx,
           output serial_rx,
           output serial2_tx,
           output serial2_rx,
           output rgb_led_r,
           output rgb_led_g,
           output rgb_led_b,
           inout  clk_i2c_scl,
           inout  clk_i2c_sda,
           input  user_btn_n,
           output [13:0] j1_34,
           output [13:0] j1_35,
           output [13:0] j2_16,
           output [13:0] j2_14
           );

  // 65MHz
  wire            clk65_cfg;
  wire            clk100;
  wire            clkin;
  wire            cfgmclk;
  wire [2:0]      probe0;
  wire [7:0]      probe1;
  reg             led_b = 1'b1;
  reg             led_g = 1'b1;
  reg             led_r = 1'b1;
  reg             reset = 1'b1;

  wire [1:0]      probe_out0;
  reg [1:0]       probe_out0_1d = 1'b0;
  wire [3:0]      probe_in0;
  wire [1:0]      probe_in1;
  wire [7:0]      probe_in2;

  reg             i2c_start = 1'b0;

  reg [31:0]      counter0 = 32'h0000_0000;
  reg [31:0]      counter1 = 32'h0000_0000;
  reg [27:0]      shifter0 = 28'h000_0001;

  STARTUPE2 STARTUPE2(
	                  .CLK(1'd0),
	                  .GSR(1'd0),
	                  .GTS(1'd0),
	                  .KEYCLEARB(1'd0),
	                  .PACK(1'd0),
	                  .USRCCLKO(1'd0),
	                  .USRCCLKTS(1'd0),
	                  .USRDONEO(1'd1),
	                  .USRDONETS(1'd1),
	                  .CFGMCLK(cfgmclk)
                      );

  BUFG BUFG(
            .I(cfgmclk),
            .O(clk65_cfg)
            );
  
  IBUFDS 
  #(.DIFF_TERM("FALSE")
    ) IBUFDS0 (
	.I(clkin_p),
	.IB(clkin_n),
	.O(clkin)
);

wire pll0_fb;
wire pll0_locked;

assign probe_in1[0] = pll0_locked;
  assign probe0[0] = pll0_locked;

  PLLE2_ADV
  #(.BANDWIDTH            ("OPTIMIZED"),
    .COMPENSATION         ("ZHOLD"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT        (18),
    .CLKFBOUT_PHASE       (0.000),
    .CLKOUT0_DIVIDE       (9),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKIN1_PERIOD        (20.000)
    ) pll0   (
 	.CLKFBIN(pll0_fb),
	.CLKIN1(clkin),
	.RST(reset),
	.CLKFBOUT(pll0_fb),
	.CLKOUT0(clk100),
	.LOCKED(pll0_locked)
);

wire s0_clk_bufg;
  
  IBUFDS_GTE2 IBUFDS1 (
	.I (s0_clk_p),
	.IB(s0_clk_n),
	.O (s0_clk_bufg)
                       );
wire s0_clkin;

  BUFG BUFG1 (
              .I(s0_clk_bufg),
	          .O(s0_clkin)
              );

wire pll1_fb;
wire pll1_locked;

assign probe_in1[1] = pll1_locked;
  assign probe0[1] = pll1_locked;

  PLLE2_ADV
  #(.BANDWIDTH            ("OPTIMIZED"),
    .COMPENSATION         ("ZHOLD"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (5),
    .CLKFBOUT_MULT        (32),
    .CLKFBOUT_PHASE       (0.000),
    .CLKOUT0_DIVIDE       (10),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKIN1_PERIOD        (6.400)
    ) pll1   (
 	.CLKFBIN(pll1_fb),
	.CLKIN1(s0_clkin),
	.RST(reset),
	.CLKFBOUT(pll1_fb),
	.LOCKED(pll1_locked)
);
  
  ila_0 ila_0 (
	           .clk(clk65_cfg),
	           .probe0(probe0),
	           .probe1(probe1)
               );

  vio_0 vio_0 (
               .clk(clk65_cfg),
               .probe_in0(probe_in0),
               .probe_in1(probe_in1),
               .probe_in2(probe_in2),
               .probe_out0(probe_out0)
               );
  
  always @(posedge clk65_cfg) begin
    counter0 <= counter0 + 1'b1;
    if (counter0 == 55_999_999) begin
      led_b <= !led_b;
      counter0 <= 0;
    end
    if (counter0 == 1000 && reset == 1'b1) begin
      reset <= 1'b0;
    end
    if (counter0 == 2000 && i2c_start == 1'b0) begin
      i2c_start <= 1'b1;
    end
  end

  always @(posedge clk100) begin
    if (pll0_locked == 1'b0) begin
      counter1 <= 32'h0000_0000;
      shifter0 <= 28'h0000_001;
    end else begin
      counter1 <= counter1 + 1'b1;
      if (counter1 == 99_999_999) begin
        led_r <= !led_r;        
        counter1 <= 0;            
        shifter0 <= {shifter0[26:0], shifter0[27]};
      end
    end
  end

  assign serial_tx = 1'b0;
  assign serial_rx = 1'b0;
  assign serial2_tx = 1'b0;
  assign serial2_rx = 1'b0;
  assign rgb_led_r = led_r;
  assign rgb_led_g = led_g;
  assign rgb_led_b = led_b;
  assign j1_34 = shifter0[13:0];
  assign j1_35 = shifter0[27:14];
  assign j2_14 = ~shifter0[13:0];
  assign j2_16 = ~shifter0[27:14];

  wire i2c_bus_control;
  wire i2c_bus_active;
  wire i2c_missed_ack;

  wire [7:0] i2c_data_out;
  wire       i2c_data_out_valid;
  wire       i2c_data_out_last;
  wire       i2c_data_out_ready;

  wire [7:0] i2c_data_in;
  wire       i2c_data_in_write;
  wire       i2c_data_in_valid;
  wire       i2c_data_in_last;
  wire       i2c_data_in_ready;

  wire       i2c_cmd_write_multiple;
  wire       i2c_cmd_write;
  wire       i2c_cmd_read;
  wire       i2c_cmd_start;
  wire       i2c_cmd_stop;
  wire       i2c_cmd_valid;
  wire       i2c_cmd_ready;
  wire [6:0] i2c_cmd_address;
  wire       i2c_busy;


  wire       scl_i;
  wire       scl_o;
  wire       scl_t;
  wire       sda_i;
  wire       sda_o;
  wire       sda_t;

  parameter STATE_IDLE            = 4'b0000, 
    STATE_SRAM_WRITE_START        = 4'b0001,
    STATE_SRAM_WRITE_REG          = 4'b0010, 
    STATE_SRAM_WRITE_DATA         = 4'b0011, 
    STATE_CAL_WRITE_1_ADDR        = 4'b1000,
    STATE_CAL_WRITE_1_REG         = 4'b1001,
    STATE_CAL_WRITE_1_DATA        = 4'b1010,
    STATE_CAL_WRITE_2_ADDR        = 4'b1100,
    STATE_CAL_WRITE_2_REG         = 4'b1101,
    STATE_CAL_WRITE_2_DATA        = 4'b1110,
    STATE_DONE                    = 4'b1111;
  reg [3:0]  state                = STATE_IDLE;
  reg [3:0]  state_next           = STATE_IDLE;

  assign scl_i = clk_i2c_scl;
  assign clk_i2c_scl = (scl_t == 1'b1) ? 1'bz : (scl_o == 1'b0) ? 1'b0 : 1'bz;
  assign sda_i = clk_i2c_sda;
  assign clk_i2c_sda = (sda_t == 1'b1) ? 1'bz : (sda_o == 1'b0) ? 1'b0 : 1'bz;

  assign i2c_data_out_ready             = 1'b1;

  reg [7:0]  i2c_data_in_index_reg      = 8'h00; 
  reg [7:0]  i2c_data_in_reg            = 8'h00;
  reg        i2c_data_in_write_reg      = 1'b0;
  reg        i2c_data_in_last_reg       = 1'b0;
  reg [6:0]  i2c_cmd_address_reg        = 7'h6a;
  reg        i2c_cmd_start_reg          = 1'b0;
  reg        i2c_cmd_stop_reg           = 1'b0;
  reg        i2c_cmd_read_reg           = 1'b0;
  reg        i2c_cmd_write_reg          = 1'b0;
  reg        i2c_cmd_write_multiple_reg = 1'b0;

  assign i2c_cmd_valid = (i2c_cmd_write_multiple_reg || i2c_cmd_read_reg) & i2c_cmd_ready;
  assign i2c_data_in_valid = i2c_data_in_write_reg & i2c_data_in_ready;

  assign i2c_data_in = i2c_data_in_reg;
  assign i2c_data_in_write = i2c_data_in_write_reg;
  assign i2c_data_in_last = i2c_data_in_last_reg;
  assign i2c_cmd_address = i2c_cmd_address_reg;
  assign i2c_cmd_start = i2c_cmd_start_reg;
  assign i2c_cmd_stop = i2c_cmd_stop_reg;
  assign i2c_cmd_read = i2c_cmd_read_reg;
  assign i2c_cmd_write = i2c_cmd_write_reg;
  assign i2c_cmd_write_multiple = i2c_cmd_write_multiple_reg;

  assign probe_in0 = state;
  assign probe1 = {4'b0, state};
   
  // reset
  always @(posedge clk65_cfg) begin
    if (reset) begin
      state <= STATE_IDLE;
    end
    else begin
      state <= state_next;
    end
  end 
  // state
  always @(posedge clk65_cfg) begin
    i2c_cmd_start_reg          <= 1'b0;
    i2c_cmd_stop_reg           <= 1'b0;
    i2c_data_in_write_reg      <= 1'b0;
    i2c_cmd_write_multiple_reg <= 1'b0;
    i2c_cmd_read_reg           <= 1'b0;
    probe_out0_1d              <= probe_out0;
    case(state)
      default :
        // STATE_IDLE 
        if (i2c_start == 1'b1 && i2c_busy == 1'b0) begin
          state_next <= STATE_SRAM_WRITE_START;
        end
      STATE_SRAM_WRITE_START :
        begin
          i2c_cmd_write_multiple_reg <= 1'b1;
          i2c_cmd_stop_reg <= 1'b1;
          if (i2c_cmd_ready == 1'b1) begin
            state_next <= STATE_SRAM_WRITE_REG;
          end
        end
      STATE_SRAM_WRITE_REG :
        begin
          // start at address 0
          i2c_cmd_write_multiple_reg <= 1'b1;
          i2c_cmd_stop_reg <= 1'b1;
          i2c_data_in_write_reg <= 1'b1;
          if (i2c_data_in_ready == 1'b1) begin
            state_next <= STATE_SRAM_WRITE_DATA;
          end
        end
      STATE_SRAM_WRITE_DATA :
        begin
          i2c_cmd_write_multiple_reg <= 1'b1;
          i2c_cmd_stop_reg <= 1'b1;
          i2c_data_in_write_reg <= 1'b1;
          if (i2c_data_in_ready == 1'b1 && i2c_data_in_last_reg == 1'b1) begin
            state_next <= STATE_CAL_WRITE_1_ADDR;
          end
        end
      STATE_CAL_WRITE_1_ADDR, STATE_CAL_WRITE_2_ADDR :
        begin
          i2c_cmd_write_multiple_reg <= 1'b1;
          i2c_cmd_stop_reg           <= 1'b1;
          if (i2c_cmd_ready == 1'b1) begin
            state_next <= (state == STATE_CAL_WRITE_1_ADDR) ? STATE_CAL_WRITE_1_REG : STATE_CAL_WRITE_2_REG;
          end
        end
      STATE_CAL_WRITE_1_REG,STATE_CAL_WRITE_1_DATA :
        begin
          i2c_data_in_write_reg <= 1'b1;
          if (i2c_data_in_ready == 1'b1 && i2c_data_in_valid == 1'b1) begin
            state_next <= (state == STATE_CAL_WRITE_1_REG) ? STATE_CAL_WRITE_1_DATA : STATE_CAL_WRITE_2_ADDR;
          end
        end
      STATE_CAL_WRITE_2_REG, STATE_CAL_WRITE_2_DATA :
        begin
          i2c_data_in_write_reg <= 1'b1;
          if (i2c_data_in_ready == 1'b1 && i2c_data_in_valid == 1'b1) begin
            state_next <= (state == STATE_CAL_WRITE_2_REG) ? STATE_CAL_WRITE_2_DATA : STATE_DONE;
          end
        end
      STATE_DONE :
        begin
          if (user_btn_n == 1'b0 || (probe_out0[0] == 1'b1 && probe_out0_1d[0] == 1'b0)) begin
            state_next <= STATE_SRAM_WRITE_START;
          end
        end
    endcase
  end


  parameter [631:0] i2cdata =  {
                           // 0x165 = 357 * 25 = 8925
                           // 2900 / 25 = 116 = 0x74
                           // 17
                           8'h07,
                           // 18
                           8'h40,
                           // no fractional portion
                           // 19
                           8'h00,
                           // 1a
                           8'h00,
                           // 1b
                           8'h00,
                           // default
                           // 1c
                           8'h05,
                           // 1d
                           8'h6f,
                           // 1e
                           8'hba,
                           // 1f
                           8'h32,
                           // 20
                           8'h00,
                           // 21
                           8'h81,
                           // 22
                           8'h00,
                           // 23
                           8'h00,
                           // 24
                           8'h00,
                           // 25
                           8'h00,
                           // 26
                           8'h00,
                           // 27
                           8'h00,
                           // 28
                           8'h00,
                           // 29
                           8'h00,
                           // 2a
                           8'h00,
                           // 2b
                           8'h00,
                           // 2c
                           8'h00,
                           // 2d
                           8'h00,
                           // 2e
                           8'he0,
                           // 2f
                           8'h00,
                           //=================================
                           // FOD2
                           // default
                           // 30
                           8'h00,
                           // FOD2 uses PLL and OUT2 uses FOD2
                           // 31
                           8'h81,
                           // fod2 is 50MHz - 2900/2/50 = 29
                           // frac = 0
                           // 32
                           8'h00,
                           // 33
                           8'h00,
                           // 34
                           8'h00,
                           // 35
                           8'h00,
                           // defaults
                           // 36
                           8'h00,
                           // 37
                           8'h00,
                           // 38
                           8'h00,
                           // 39
                           8'h00,
                           // 3a
                           8'h00,
                           // 3b
                           8'h00,
                           // 3c
                           8'h00,
                           // int = 29 = 0x1d
                           // 3d
                           8'h01,
                           // 3e
                           8'hd0,
                           // default
                           // 3f
                           8'h00,
                           //=================================
                           // FOD3
                           // default
                           // 40
                           8'h00,
                           // FOD3 uses PLL and OUT3 uses FOD3
                           // 41
                           8'h81,
                           // fod3 is 156.25MHz - 2900/2/156.25 = 9.28
                           // fod3 frac = 2^24 * 0.28 = 4697620.58 = 0x47ae14
                           // 42
                           8'h00,
                           // 43
                           8'h11,
                           // 44
                           8'hEB,
                           // 45
                           8'h85,
                           // defaults
                           // 46
                           8'h00,
                           // 47
                           8'h00,
                           // 48
                           8'h00,
                           // 49
                           8'h00,
                           // 4a
                           8'h00,
                           // 4b
                           8'h00,
                           // 4c
                           8'h00,
                           // fod3 int = 9 = 0x09
                           // 4d
                           8'h00,
                           // 4e
                           8'h90,
                           // defaults
                           // 4f
                           8'h00,
                           // 50
                           8'h00,
                           // 51
                           8'h81,
                           // 52
                           8'h00,
                           // 53
                           8'h00,
                           // 54
                           8'h00,
                           // 55
                           8'h00,
                           // 56
                           8'h00,
                           // 57
                           8'h00,
                           // 58
                           8'h00,
                           // 59
                           8'h00,
                           // 5a
                           8'h00,
                           // 5b
                           8'h00,
                           // 5c
                           8'h00,
                           // 5d
                           8'h00,
                           // 5e
                           8'he0,
                           // 5f
                           8'h00,
                           // defaults
                           // 60
                           8'hbb,
                           // 61
                           8'h01,
                           // out2 LVDS 2.5V = 0x70
                           // 62
                           8'h78,
                           // out2 output enable
                           // 63
                           8'h01,
                           // out3 LVDS 2.5V = 0x70
                           // 64
                           8'h70,
                           // out3 output enable
                           // 65
                           8'h01
                           };

  
  parameter i2cdata_bit_count = 16'd632;
  
  always @(posedge clk65_cfg) begin
    i2c_data_in_last_reg   <= 1'b0;
    led_g                  <= 1'b0; // on
    case(state)
      STATE_SRAM_WRITE_REG : 
        begin
          i2c_data_in_reg <= 8'h17;
        end
      STATE_SRAM_WRITE_DATA:
        begin
          i2c_data_in_reg <= i2cdata[i2c_data_in_index_reg*8+7 -: 8];
          if (i2c_data_in_ready == 1'b1 && i2c_data_in_last == 1'b0) begin
            i2c_data_in_index_reg <= i2c_data_in_index_reg - 1;
          end
          if (i2c_data_in_index_reg == 16'd0) begin
            i2c_data_in_last_reg <= 1'b1;
          end
        end
      STATE_CAL_WRITE_1_REG, STATE_CAL_WRITE_2_REG :
        begin
          i2c_data_in_reg <= 8'h1c;
        end
      STATE_CAL_WRITE_1_DATA :
        begin
          i2c_data_in_reg      <= 8'h05;
          i2c_data_in_last_reg <= 1'b1;
        end
      STATE_CAL_WRITE_2_DATA :
        begin
          i2c_data_in_reg      <= 8'h85;
          i2c_data_in_last_reg <= 1'b1;
        end
      default:
        begin    
          i2c_data_in_index_reg <= i2cdata_bit_count/16'd8 - 1;
          led_g <= 1'b1; // off
        end
    endcase
  end 
  
  i2c_master i2c_master (
                         .clk(clk65_cfg),
                         .rst(reset),

                         /*
                          * Host interface
                          */
                         .cmd_address(i2c_cmd_address),
                         .cmd_start(i2c_cmd_start),
                         .cmd_read(i2c_cmd_read),
                         .cmd_write(i2c_cmd_write),
                         .cmd_write_multiple(i2c_cmd_write_multiple),
                         .cmd_stop(i2c_cmd_stop),
                         .cmd_valid(i2c_cmd_valid),
                         .cmd_ready(i2c_cmd_ready),

                         .data_in(i2c_data_in),
                         .data_in_valid(i2c_data_in_valid),
                         .data_in_ready(i2c_data_in_ready),
                         .data_in_last(i2c_data_in_last),

                         .data_out(i2c_data_out),
                         .data_out_valid(i2c_data_out_valid),
                         .data_out_ready(i2c_data_out_ready),
                         .data_out_last(i2c_data_out_last),

                         .scl_i(scl_i),
                         .scl_o(scl_o),
                         .scl_t(scl_t),
                         .sda_i(sda_i),
                         .sda_o(sda_o),
                         .sda_t(sda_t),

                         /*
                          * Status
                          */
                         .busy(i2c_busy),
                         .bus_control(i2c_bus_control),
                         .bus_active(i2c_bus_active),
                         .missed_ack(i2c_missed_ack),

                         /*
                          * Configuration
                          */
                         .prescale(16'd200),
                         .stop_on_idle(1'b0)
                         );

endmodule


