/*
  This example code first sets the internal oscillator to 1600MHz.
  It then sets the output for Clock One to 16MHz and then sets the output
  MODE to LVPECL (Low Voltage Positive Emitter Coupled Logic).

  Available Output Modes: 
  * LVPECL_MODE
  * CMOS_MODE
  * HCSL33_MODE
  * LVDS_MODE
  * CMOS2_MODE
  * CMOSD_MODE
  * HCSL25_MODE

  Pages from Datasheet of Interest:
  Pg. 22 Transmission Output Termination Setup and Values

  SparkFun Electronics
  Date: February, 2020
  Author: Elias Santistevan
*/
#include <Wire.h>
#include "SparkFun_5P49V60.h"

// Uses default address at 0x6A, alternate available at 0x68
SparkFun_5P49V60 clockGen;

void i2cbulkwrite(uint8_t reg, uint8_t* data, uint8_t len) {
  SerialUSB.println(__func__);
  Wire.beginTransmission(0x6a);
  SerialUSB.print("reg=");
  SerialUSB.print(reg, HEX);
  Wire.write(reg);
  for (unsigned ix=0; ix < len; ++ix) {
      SerialUSB.print(" data=");
      SerialUSB.println(data[ix], HEX);
      Wire.write(data[ix]);
  }
  Wire.endTransmission();
}


void i2cwrite(uint8_t reg, uint8_t data) {
  SerialUSB.println(__func__);
  Wire.beginTransmission(0x6a);
  Wire.write(reg);
  Wire.write(data);
  Wire.endTransmission();

  SerialUSB.print("reg=");
  SerialUSB.print(reg, HEX);
  SerialUSB.print(" data=");
  SerialUSB.println(data, HEX);
}

void setup4() {
  Wire.begin();
  SerialUSB.begin(115200);
  while (!SerialUSB);
  SerialUSB.println("Go4");

uint8_t data[] = {
// 0x165 = 357 * 25 = 8925
// 2900 / 25 = 116 = 0x74
0x07,
0x40,

// no fractional portion
0x00,
0x00,
0x00,

// default
0x05,
0x6f,
0xba,
0x32,
0x00,
0x81,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0xe0,
0x00,

//=================================
// FOD2
// defaults
0x00,
// FOD2 uses PLL and OUT2 uses FOD2
0x81,
// fod2 is 50MHz - 2900/2/50 = 29
// frac = 0
0x00,
0x00,
0x00,
0x00,
// defaults
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
// int = 29 = 0x1d
0x01,
0xd0,
// defaults
0x00,
//=================================
// FOD3
// defaults
0x00,
// FOD3 uses PLL and OUT3 uses FOD3
0x81,
// fod3 is 156.25MHz - 2900/2/156.25 = 9.28
// fod3 frac = 2^24 * 0.28 = 4697620.58 = 0x47ae14
0x00,
0x11,
0xEB,
0x85,
// defaults
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
// fod3 int = 9 = 0x09
0x00,
0x90,
// defaults
0x00,
0x00,
0x81,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0x00,
0xe0,
0x00,

// defaults
0xbb,
0x01,

// out2 LVDS 2.5V = 0x70
0x78,
// out2 output enable
0x01,
// out3 LVDS 2.5V = 0x70
0x70,
// out3 output enable
0x01,
};

i2cbulkwrite(0x17, data, sizeof(data));

// calibrate VCO
i2cwrite(0x1c, 0x05);
i2cwrite(0x1c, 0x85);
}
//--------------------------------------------------------------------------------


void setup3() {
  Wire.begin();
  SerialUSB.begin(115200);
  while (!SerialUSB);
  SerialUSB.println("Go");

// 0x165 = 357 * 25 = 8925
// 2900 / 25 = 116 = 0x74
i2cwrite(0x17, 0x07);
i2cwrite(0x18, 0x40);

// no fractional portion
i2cwrite(0x19, 0);
i2cwrite(0x1a, 0);
i2cwrite(0x1b, 0);
#if 1
// default
i2cwrite(0x1c, 0x05);
i2cwrite(0x1d, 0x6f);
i2cwrite(0x1e, 0xba);
i2cwrite(0x1f, 0x32);
i2cwrite(0x20, 0x00);
i2cwrite(0x21, 0x81);
i2cwrite(0x22, 0x00);
i2cwrite(0x23, 0x00);
i2cwrite(0x24, 0x00);
i2cwrite(0x25, 0x00);
i2cwrite(0x26, 0x00);
i2cwrite(0x27, 0x00);
i2cwrite(0x28, 0x00);
i2cwrite(0x29, 0x00);
i2cwrite(0x2a, 0x00);
i2cwrite(0x2b, 0x00);
i2cwrite(0x2c, 0x00);
i2cwrite(0x2d, 0x00);
i2cwrite(0x2e, 0xe0);
i2cwrite(0x2f, 0x00);
#endif

//=================================
// FOD2
// defaults
i2cwrite(0x30, 0x00);
// FOD2 uses PLL and OUT2 uses FOD2
i2cwrite(0x31, 0x81);

// fod2 is 50MHz - 2900/2/50 = 29
// frac = 0
i2cwrite(0x32, 0x00);
i2cwrite(0x33, 0x00);
i2cwrite(0x34, 0x00);
i2cwrite(0x35, 0x00);
// defaults
i2cwrite(0x36, 0x00);
i2cwrite(0x37, 0x00);
i2cwrite(0x38, 0x00);
i2cwrite(0x39, 0x00);
i2cwrite(0x3a, 0x00);
i2cwrite(0x3b, 0x00);
i2cwrite(0x3c, 0x00);
// int = 29 = 0x1d
i2cwrite(0x3d, 0x01);
i2cwrite(0x3e, 0xd0);
// defaults
i2cwrite(0x3f, 0x00);



//=================================
// FOD3
// defaults
i2cwrite(0x40, 0x00);
// FOD3 uses PLL and OUT3 uses FOD3
i2cwrite(0x41, 0x81);
// fod3 is 156.25MHz - 2900/2/156.25 = 9.28
// fod3 frac = 2^24 * 0.28 = 4697620.58 = 0x47ae14
i2cwrite(0x42, 0x00);
i2cwrite(0x43, 0x11);
i2cwrite(0x44, 0xEB);
i2cwrite(0x45, 0x85);
// defaults
i2cwrite(0x46, 0x00);
i2cwrite(0x47, 0x00);
i2cwrite(0x48, 0x00);
i2cwrite(0x49, 0x00);
i2cwrite(0x4a, 0x00);
i2cwrite(0x4b, 0x00);
i2cwrite(0x4c, 0x00);
// fod3 int = 9 = 0x09
i2cwrite(0x4d, 0x00);
i2cwrite(0x4e, 0x90);
#if 1
// defaults
i2cwrite(0x4f, 0x00);
i2cwrite(0x50, 0x00);
i2cwrite(0x51, 0x81);
i2cwrite(0x52, 0x00);
i2cwrite(0x53, 0x00);
i2cwrite(0x54, 0x00);
i2cwrite(0x55, 0x00);
i2cwrite(0x56, 0x00);
i2cwrite(0x57, 0x00);
i2cwrite(0x58, 0x00);
i2cwrite(0x59, 0x00);
i2cwrite(0x5a, 0x00);
i2cwrite(0x5b, 0x00);
i2cwrite(0x5c, 0x00);
i2cwrite(0x5d, 0x00);
i2cwrite(0x5e, 0xe0);
i2cwrite(0x5f, 0x00);

// defaults
i2cwrite(0x60, 0xbb);
i2cwrite(0x61, 0x01);
#endif
// out2 LVDS 2.5V = 0x70
i2cwrite(0x62, 0x78);
// out2 output enable
i2cwrite(0x63, 0x01);
// out3 LVDS 2.5V = 0x70
i2cwrite(0x64, 0x70);
// out3 output enable
i2cwrite(0x65, 0x01);

// calibrate VCO
i2cwrite(0x1c, 0x05);
i2cwrite(0x1c, 0x85);
}
//--------------------------------------------------------------------------------

void setup2() {
  Wire.begin();
  SerialUSB.begin(115200);
  while (!SerialUSB);
  SerialUSB.println("Go");

// 0x165 = 357 * 25 = 8925
// 2900 / 25 = 116 = 0x74
i2cwrite(0x18, 0x40);
i2cwrite(0x17, 0x07);

// no fractional portion
i2cwrite(0x1b, 0);
i2cwrite(0x1a, 0);
i2cwrite(0x19, 0);

// calibrate VCO
i2cwrite(0x1c, 0x05);
i2cwrite(0x1c, 0x85);

//=================================
// FOD2 uses PLL and OUT2 uses FOD2
i2cwrite(0x31, 0x81);

// LVDS 2.5V = 0x70
i2cwrite(0x62, 0x70);

// output 2 is 100MHz
// 2900/2/100 = 14.5
// int = 14 = 0x0E
i2cwrite(0x3e, 0xe0);
i2cwrite(0x3d, 0x00);

// frac = 2^24 * 0.5 = 8338608 = 0x800000
i2cwrite(0x35, 0x00);
i2cwrite(0x34, 0x00);
i2cwrite(0x33, 0x00);
i2cwrite(0x32, 0x02);

// output enable
i2cwrite(0x63, 0x01);

//=================================
// FOD3 uses PLL and OUT3 uses FOD3
i2cwrite(0x41, 0x81);

// LVDS 2.5V = 0x70
i2cwrite(0x64, 0x70);

// output 3 is 156.25MHz
// 2900/2/156.25 = 9.28

// int = 9 = 0x09
i2cwrite(0x4e, 0x90);
i2cwrite(0x4d, 0x00);

// frac = 2^24 * 0.28 = 4697620.58 = 0x47ae14
i2cwrite(0x42, 0x00);
i2cwrite(0x43, 0x11);
i2cwrite(0x44, 0xEB);
i2cwrite(0x45, 0x85);

// output enable
i2cwrite(0x65, 0x01);

}

void setup1(){

  Wire.begin();
  SerialUSB.begin(115200);
  while (!SerialUSB);

  if (clockGen.begin() == true){
    SerialUSB.println("Clock Generator Ready.");
  }
  else {
    SerialUSB.println("Could not communicate with the SparkFun Clock Generator.");
    while(1);
  }

  // Fist, Setting the internal oscillator to a known value.
  SerialUSB.println("Setting Internal Clock Frequency to 1600MHz.");
  clockGen.setVcoFrequency(2900.0); // Give float value in MHz.

  // Clock One -----------------------------------------------------
  // Use internal phase lock loop for clock output calculation.
  clockGen.muxPllToFodTwo();                                                                                                                                                                                                 
  SerialUSB.println("Setting Output Mode to LVPECL.");
  // There are many OUTPUT modes available for each clock - this example uses
  // LVPECL (Low voltage Positive Emitter Coupled Logic) mode.
  clockGen.clockTwoConfigMode(LVDS_MODE);
  SerialUSB.println("Setting Clock One Frequency to 16MHz.");
  clockGen.setClockTwoFreq(25.0); // Give float value in MHz, 16.0 = 16000000Hz or 16MHz
  // --------------------------------------------------------------

}

void setup() {
  setup4();
}

void loop(){
  if (SerialUSB.available() > 0) {
      SerialUSB.read();
      setup4();
  }

}
