//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module AIM514(

  //////////// CLOCK //////////
  input                   CLOCK_125_p,  // 125MHz reference clock

  //////////// LED //////////
  output         [7:0]		LEDG,
  output         [9:0]		LEDR,

  //////////// KEY //////////
  input                   CPU_RESET_n,
  input          [3:0]		KEY,

  //////////// SW //////////
  input          [9:0]		SW,

  //////////// SEG7 //////////
  output         [6:0]		HEX0,
  output         [6:0]		HEX1,
  output         [6:0]		HEX2,
  output         [6:0]		HEX3,

  //////////// HDMI-TX //////////
  output                  HDMI_TX_CLK,
  output        [23:0]		HDMI_TX_D,
  output                  HDMI_TX_DE,
  output                  HDMI_TX_HS,
  input                   HDMI_TX_INT,
  output                  HDMI_TX_VS,

  //////////// I2C for Audio/HDMI-TX/Si5338/HSMC //////////
  output                  I2C_SCL,
  inout                   I2C_SDA,

  //////////// Uart to USB //////////
  input                   UART_RX,
  output                  UART_TX,

  //////////// SRAM //////////
  output        [17:0]		SRAM_A,
  output                  SRAM_CE_n,
  inout         [15:0]		SRAM_D,
  output                  SRAM_LB_n,
  output                  SRAM_OE_n,
  output                  SRAM_UB_n,
  output                  SRAM_WE_n
);



//=======================================================
//  REG/WIRE declarations
//=======================================================

   wire                   clock = KEY[0];

   heap heap
     (
      // memory clock
      .clock(clock),

      //----------------------------------------
      // write address
      .wraddress(),
      // write enable bit
      .wren(),
      // write payload
      .data(),

      //----------------------------------------
      // read address
      .rdaddress(),
      // read result
      .q()
      );



//=======================================================
//  Structural coding
//=======================================================

   assign LEDG[3:0] = KEY[3:0];

endmodule
