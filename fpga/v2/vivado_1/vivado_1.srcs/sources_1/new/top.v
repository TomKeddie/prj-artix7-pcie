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

  parameter STATE_IDLE              = 4'b00000, 
    STATE_SRAM_WRITE_START        = 5'b00001,
    STATE_SRAM_WRITE_REG          = 5'b00010, 
    STATE_SRAM_WRITE_DATA         = 5'b00011, 
    STATE_RESET_READ_ADDR         = 5'b00100,
    STATE_RESET_READ_ADDR_DATA    = 5'b00101,
    STATE_RESET_READ_CMD          = 5'b00110,
    STATE_RESET_READ_DATA         = 5'b00111,
    STATE_RESET_WRITE_1_ADDR      = 5'b01000,
    STATE_RESET_WRITE_1_DATA_1    = 5'b01001,
    STATE_RESET_WRITE_1_DATA_2    = 5'b01010,
    STATE_RESET_WRITE_2_ADDR      = 5'b01100,
    STATE_RESET_WRITE_2_DATA_1    = 5'b01101,
    STATE_RESET_WRITE_2_DATA_2    = 5'b01110,
    STATE_CAL_READ_ADDR           = 5'b10100,
    STATE_CAL_READ_ADDR_DATA      = 5'b10101,
    STATE_CAL_READ_CMD            = 5'b10110,
    STATE_CAL_READ_DATA           = 5'b10111,
    STATE_CAL_WRITE_1_ADDR        = 5'b11000,
    STATE_CAL_WRITE_1_DATA_1      = 5'b11001,
    STATE_CAL_WRITE_1_DATA_2      = 5'b11010,
    STATE_CAL_WRITE_2_ADDR        = 5'b11100,
    STATE_CAL_WRITE_2_DATA_1      = 5'b11101,
    STATE_CAL_WRITE_2_DATA_2      = 5'b11110,
    STATE_DONE                    = 5'b11111;
  reg [4:0]  state                = STATE_IDLE;
  reg [4:0]  state_next           = STATE_IDLE;

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

  reg [7:0]  i2c_register_data    = 8'h00;

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
      state <= STATE_DONE;
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
          state_next <= STATE_DONE;
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
            state_next <= STATE_RESET_READ_ADDR;
          end
        end
      STATE_RESET_READ_ADDR :
        begin
          i2c_cmd_write_multiple_reg <= 1'b1;
          if (i2c_cmd_ready == 1'b1) begin
            state_next <= STATE_RESET_READ_ADDR_DATA;
          end
        end
      STATE_RESET_READ_ADDR_DATA :
        begin
          i2c_data_in_write_reg <= 1'b1;
          if (i2c_data_in_ready == 1'b1 && i2c_data_in_last_reg == 1'b1) begin
            state_next <= STATE_RESET_READ_CMD;
          end
        end
      STATE_RESET_READ_CMD :
        begin
          i2c_cmd_read_reg <= 1'b1;
          i2c_cmd_stop_reg <= 1'b1;
          if (i2c_cmd_ready == 1'b1) begin
            state_next <= STATE_RESET_READ_DATA;
          end
        end
      STATE_RESET_READ_DATA :
        begin
          if (i2c_data_out_valid == 1'b1) begin
            i2c_register_data <= i2c_data_out;
            state_next        <= STATE_RESET_WRITE_1_ADDR;
          end                   
        end
      STATE_RESET_WRITE_1_ADDR, STATE_RESET_WRITE_2_ADDR :
        begin
          i2c_cmd_write_multiple_reg <= 1'b1;
          i2c_cmd_stop_reg           <= 1'b1;
          if (i2c_cmd_ready == 1'b1) begin
            state_next <= (state == STATE_RESET_WRITE_1_ADDR) ? STATE_RESET_WRITE_1_DATA_1 : STATE_RESET_WRITE_2_DATA_1;
          end
        end
      STATE_RESET_WRITE_1_DATA_1,STATE_RESET_WRITE_1_DATA_2 :
        begin
          i2c_data_in_write_reg <= 1'b1;
          if (i2c_data_in_ready == 1'b1 && i2c_data_in_valid == 1'b1) begin
            state_next <= (state == STATE_RESET_WRITE_1_DATA_1) ? STATE_RESET_WRITE_1_DATA_2 : STATE_RESET_WRITE_2_ADDR;
          end
        end
      STATE_RESET_WRITE_2_DATA_1, STATE_RESET_WRITE_2_DATA_2 :
        begin
          i2c_data_in_write_reg <= 1'b1;
          if (i2c_data_in_ready == 1'b1 && i2c_data_in_valid == 1'b1) begin
            state_next <= (state == STATE_RESET_WRITE_2_DATA_1) ? STATE_RESET_WRITE_2_DATA_2 : STATE_CAL_READ_ADDR;
          end
        end
      STATE_CAL_READ_ADDR :
        begin
          i2c_cmd_write_multiple_reg <= 1'b1;
          if (i2c_cmd_ready == 1'b1) begin
            state_next <= STATE_CAL_READ_ADDR_DATA;
          end
        end
      STATE_CAL_READ_ADDR_DATA :
        begin
          i2c_data_in_write_reg <= 1'b1;
          if (i2c_data_in_ready == 1'b1 && i2c_data_in_last_reg == 1'b1) begin
            state_next <= STATE_CAL_READ_CMD;
          end
        end
      STATE_CAL_READ_CMD :
        begin
          i2c_cmd_read_reg <= 1'b1;
          i2c_cmd_stop_reg <= 1'b1;
          if (i2c_cmd_ready == 1'b1) begin
            state_next <= STATE_CAL_READ_DATA;
          end
        end
      STATE_CAL_READ_DATA :
        begin
          if (i2c_data_out_valid == 1'b1) begin
            i2c_register_data <= i2c_data_out;
            state_next        <= STATE_CAL_WRITE_1_ADDR;
          end                   
        end
      STATE_CAL_WRITE_1_ADDR, STATE_CAL_WRITE_2_ADDR :
        begin
          i2c_cmd_write_multiple_reg <= 1'b1;
          i2c_cmd_stop_reg           <= 1'b1;
          if (i2c_cmd_ready == 1'b1) begin
            state_next <= (state == STATE_CAL_WRITE_1_ADDR) ? STATE_CAL_WRITE_1_DATA_1 : STATE_CAL_WRITE_2_DATA_1;
          end
        end
      STATE_CAL_WRITE_1_DATA_1,STATE_CAL_WRITE_1_DATA_2 :
        begin
          i2c_data_in_write_reg <= 1'b1;
          if (i2c_data_in_ready == 1'b1 && i2c_data_in_valid == 1'b1) begin
            state_next <= (state == STATE_CAL_WRITE_1_DATA_1) ? STATE_CAL_WRITE_1_DATA_2 : STATE_CAL_WRITE_2_ADDR;
          end
        end
      STATE_CAL_WRITE_2_DATA_1, STATE_CAL_WRITE_2_DATA_2 :
        begin
          i2c_data_in_write_reg <= 1'b1;
          if (i2c_data_in_ready == 1'b1 && i2c_data_in_valid == 1'b1) begin
            state_next <= (state == STATE_CAL_WRITE_2_DATA_1) ? STATE_CAL_WRITE_2_DATA_2 : STATE_DONE;
          end
        end
      STATE_DONE :
        begin
          if (user_btn_n == 1'b0 || (probe_out0[0] == 1'b1 && probe_out0_1d[0] == 1'b0)) begin
            state_next <= STATE_IDLE;
          end
        end
    endcase
  end

  parameter bits0 = 8'h20*8;
  parameter bits1 = 8'h20*8;
  parameter bits2 = 8'h20*8;
  parameter bits3 = 8'h0A*8;
  
  parameter [0:bits0-1] i2cdata0 = 256'h0103FF000000000000FFFDC000B6B492A8CCD1D000048C03A00000009FFFF080;
  parameter [0:bits1-1] i2cdata1 = 256'h800000000000000000000400000000200081020000000000000004000000E020;
  parameter [0:bits2-1] i2cdata2 = 256'h0081011EB8500000000004000000901280000000000000000000040000000000;
  parameter [0:bits3-1] i2cdata3 = 88'hBB0473057305BB04FF34;
  
  parameter [0:bits0+bits1+bits2+bits3-1] i2cdata = {i2cdata0, i2cdata1, i2cdata2, i2cdata3};
  parameter bits = bits0 + bits1 + bits2 + bits3;
  
  always @(posedge clk65_cfg) begin
    i2c_data_in_last_reg   <= 1'b0;
    led_g                  <= 1'b0; // on
    case(state)
      STATE_SRAM_WRITE_REG : 
        begin
          i2c_data_in_reg <= 8'h00;
        end
      STATE_SRAM_WRITE_DATA:
        begin
          i2c_data_in_reg <= i2cdata[i2c_data_in_index_reg*8+7 -: 8];
          if (i2c_data_in_ready == 1'b1 && i2c_data_in_last == 1'b0) begin
            i2c_data_in_index_reg <= i2c_data_in_index_reg + 1;
          end
          if (i2c_data_in_index_reg == bits/8-1) begin
            i2c_data_in_last_reg <= 1'b1;
          end
        end
      STATE_RESET_READ_ADDR_DATA, STATE_RESET_WRITE_1_DATA_1, STATE_RESET_WRITE_2_DATA_1 :
        begin
          i2c_data_in_reg <= 8'h76;
          i2c_data_in_last_reg <= (state == STATE_RESET_READ_ADDR_DATA) ? 1'b1 : 1'b0;
        end
      STATE_RESET_WRITE_1_DATA_2, STATE_RESET_WRITE_2_DATA_2 :
        begin
          i2c_data_in_reg      <= (state == STATE_RESET_WRITE_1_DATA_2) ? (i2c_register_data | 8'b00100000) : (i2c_register_data & 8'b11011111); 
          i2c_data_in_last_reg <= 1'b1;
        end
      STATE_CAL_READ_ADDR_DATA, STATE_CAL_WRITE_1_DATA_1, STATE_CAL_WRITE_2_DATA_1 :
        begin
          i2c_data_in_reg <= 8'h1c;
          i2c_data_in_last_reg <= (state == STATE_CAL_READ_ADDR_DATA) ? 1'b1 : 1'b0;
        end
      STATE_CAL_WRITE_1_DATA_2, STATE_CAL_WRITE_2_DATA_2 :
        begin
          i2c_data_in_reg      <= (state == STATE_CAL_WRITE_1_DATA_2) ? (i2c_register_data | 8'b10000000) : (i2c_register_data & 8'b01111111); 
          i2c_data_in_last_reg <= 1'b1;
        end
      default:
        begin    
          i2c_data_in_index_reg <= 8'h0;
          led_g <= 1'b1; // off
        end
    endcase
  end 
  
  // ! i2c_init i2c_init (
  // !     .clk(clk),
  // !     .rst(reset),
  // ! 
  // !     /*
  // !      * I2C master interface
  // !      */
  // !     .cmd_address(i2c_cmd_address),
  // !     .cmd_start(i2c_cmd_start),
  // !     .cmd_read(i2c_cmd_read),
  // !     .cmd_write(i2c_cmd_write),
  // !     .cmd_write_multiple(i2c_cmd_write_multiple),
  // !     .cmd_stop(i2c_cmd_stop),
  // !     .cmd_valid(i2c_cmd_valid),
  // !     .cmd_ready(i2c_cmd_ready),
  // ! 
  // !     .data_out(i2c_data_in),
  // !     .data_out_valid(i2c_data_in_valid),
  // !     .data_out_ready(i2c_data_in_ready),
  // !     .data_out_last(i2c_data_in_last),
  // ! 
  // !     /*
  // !      * Status
  // !      */
  // !     .busy(i2c_busy),
  // ! 
  // !     /*
  // !      * Configuration
  // !      */
  // !     .start(i2c_start)
  // ! );


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
                         .prescale(16'd100),  // 65Mhz/20000 = 325kHz
                         .stop_on_idle(1'b0)
                         );

endmodule


