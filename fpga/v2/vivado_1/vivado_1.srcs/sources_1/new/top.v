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
    output serial_tx,
    output serial_rx,
    output serial2_tx,
    output serial2_rx,
    output rgb_led_r,
    output rgb_led_g,
    output rgb_led_b,
    inout clk_i2c_scl,
    inout clk_i2c_sda 
    );

// 65MHz
wire clk;    
reg [0:31] counter = 32'h0000_0000;
wire [0:2] probe0;
reg led_b = 1'b0;
reg reset = 1'b1;
    
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
	.CFGMCLK(clk)
);

ila_0 ila_0 (
	.clk(clk), // input wire clk
	.probe0(probe0) // input wire [2:0] probe0
);

always @(posedge clk) begin
    counter <= counter + 1'b1;
    if (counter == 56_000_000) begin
        led_b <= !led_b;
        counter <= 0;
    end
    if (counter == 1000) begin
        reset <= 1'b0;
    end
end

    assign serial_tx = counter[24];
    assign serial_rx = counter[25];
    assign serial2_tx = counter[26];
    assign serial2_rx = counter[27];
    assign rgb_led_r = 1'b1; //counter[28];
    assign rgb_led_g = 1'b1; //counter[29];
    
    assign rgb_led_b = led_b;

wire bus_control;
wire bus_active;
wire missed_ack;

wire [7:0] data_out;
wire data_out_valid;
wire data_out_last;

reg [7:0] data_in = 8'h00;
reg data_in_write = 1'b0;
wire data_in_valid;
reg data_in_last = 1'b0;
wire data_in_ready;
reg [7:0] data_in_index = 8'h00; 

reg cmd_write_multiple = 1'b0;
wire cmd_valid;
wire cmd_ready;

wire scl_i;
wire scl_o;
wire scl_t;
wire sda_i;
wire sda_o;
wire sda_t;

parameter IDLE  = 3'b000, WRITE_START = 3'b001, WRITE_REG = 3'b010, WRITE_DATA = 3'b011, WRITE_DONE = 3'b100;
reg [2:0] state = IDLE;
reg [2:0] state_next = IDLE;

assign scl_i = clk_i2c_scl;
assign clk_i2c_scl = (scl_t == 1'b1) ? 1'bz : (scl_o == 1'b0) ? 1'b0 : 1'bz;
assign sda_i = clk_i2c_sda;
assign clk_i2c_sda = (sda_t == 1'b1) ? 1'bz : (sda_o == 1'b0) ? 1'b0 : 1'bz;

assign cmd_valid = cmd_write_multiple & cmd_ready;
assign data_in_valid = data_in_write & data_in_ready;

// reset
always @(posedge clk) begin
    if (reset) begin
        state <= IDLE;
    end
    else begin
        state <= state_next;
    end
end 
// state
always @(posedge clk) begin
    data_in_write <= 1'b0;
    cmd_write_multiple <= 1'b0;

    case(state)
        default :
            // IDLE 
            if (busy == 1'b0) begin
                state_next <= WRITE_START;
            end
        WRITE_START :
            begin
                cmd_write_multiple <= 1'b1;
                if (cmd_ready == 1'b1) begin
                    state_next <= WRITE_REG;
                end
            end
        WRITE_REG :
            begin
                // start at address 0
                data_in_write <= 1'b1;
                if (data_in_ready == 1'b1) begin
                    state_next <= WRITE_DATA;
                end
            end
        WRITE_DATA :
            begin
                data_in_write <= 1'b1;
                if (data_in_ready == 1'b1 && data_in_last == 1'b1) begin
                    state_next <= WRITE_DONE;
                end
            end
        WRITE_DONE :
            begin
            end
   endcase
end

// data
// Size: 0x20, Offset: 0x00, Data: 0x0103FF000000000000FFFDC000B6B492A8CCD1D000048C03A00000009FFFF080
// Size: 0x20, Offset: 0x20, Data: 0x800000000000000000000400000000200081020000000000000004000000E020
// Size: 0x20, Offset: 0x40, Data: 0x0081011EB8500000000004000000901280000000000000000000040000000000
// Size: 0xA, Offset: 0x60, Data: 0xBB047B057B05BB04FF34
parameter bits0 = 8'h20*8;
parameter bits1 = 8'h20*8;
parameter bits2 = 8'h20*8;
parameter bits3 = 8'h0A*8;

parameter [0:bits0-1] i2cdata0 = 256'h0103FF000000000000FFFDC000B6B492A8CCD1D000048C03A00000009FFFF080;
parameter [0:bits1-1] i2cdata1 = 256'h800000000000000000000400000000200081020000000000000004000000E020;
parameter [0:bits2-1] i2cdata2 = 256'h0081011EB8500000000004000000901280000000000000000000040000000000;
parameter [0:bits3-1] i2cdata3 = 88'hBB047B057B05BB04FF34;

parameter [0:bits0+bits1+bits2+bits3-1] i2cdata = {i2cdata0, i2cdata1, i2cdata2, i2cdata3};
parameter bits = bits0 + bits1 + bits2 + bits3;

always @(posedge clk) begin
    data_in_last <= 1'b0;
    case(state)
        WRITE_REG : 
            begin
                data_in <= 8'h00;
            end
        WRITE_DATA:
            begin
                data_in <= i2cdata[data_in_index*8+7 -: 8];
                if (data_in_ready == 1'b1 && data_in_last == 1'b0) begin
                    data_in_index <= data_in_index + 1;
                end
                if (data_in_index == bits/8-1) begin
                    data_in_last <= 1'b1;
                end
            end
        default:
            begin    
                data_in_index <= 8'h0;
            end
    endcase
end 

i2c_master i2c_master (
    .clk(clk),
    .rst(reset),

    /*
     * Host interface
     */
    .cmd_address(7'h4D),
    .cmd_start(0),
    .cmd_read(0),
    .cmd_write(0),
    .cmd_write_multiple(cmd_write_multiple),
    .cmd_stop(0),
    .cmd_valid(cmd_valid),
    .cmd_ready(cmd_ready),

    .data_in(data_in),
    .data_in_valid(data_in_valid),
    .data_in_ready(data_in_ready),
    .data_in_last(data_in_last),

    .data_out(data_out),
    .data_out_valid(data_out_valid),
    .data_out_ready(1),
    .data_out_last(data_out_last),

    .scl_i(scl_i),
    .scl_o(scl_o),
    .scl_t(scl_t),
    .sda_i(sda_i),
    .sda_o(sda_o),
    .sda_t(sda_t),

    /*
     * Status
     */
    .busy(busy),
    .bus_control(bus_control),
    .bus_active(bus_active),
    .missed_ack(missed_ack),

    /*
     * Configuration
     */
    .prescale(20000),  // 65Mhz/20000 = 325kHz
    .stop_on_idle(0)
);

endmodule


