`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2020 07:39:36 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb(

    );
     
    reg clkin_p = 1'b0;
    wire serial_tx;
    wire serial_rx;
    wire serial2_tx;
    wire serial2_rx;
    wire rgb_led_r;
    wire rgb_led_g;
    wire rgb_led_b;
    wire clk_i2c_scl;
    wire clk_i2c_sda;
    
    top top(
    .clkin_p(clkin_p),
    .clkin_n(!clkin_p),
    .serial_tx(serial_tx),
    .serial_rx(serial_rx),
    .serial2_tx(serial2_tx),
    .serial2_rx(serial2_rx),
    .rgb_led_r(rgb_led_r),
    .rgb_led_g(rgb_led_g),
    .rgb_led_b(rgb_led_b),
    .clk_i2c_scl(clk_i2c_scl),
    .clk_i2c_sda(clk_i2c_sda) 
    );

always 
    #20  clkin_p =  !clkin_p; 
endmodule
