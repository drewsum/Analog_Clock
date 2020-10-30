/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _LP5009_LED_DRIVER_H    /* Guard against multiple inclusion */
#define _LP5009_LED_DRIVER_H

#include <xc.h>
#include <stdbool.h>

#include "plib_i2c.h"

// LP5009 I2C register map
#define LP5009_DEVICE_CONFIG0_REG       0x00
#define LP5009_DEVICE_CONFIG1_REG       0x01
#define LP5009_LED_CONFIG0_REG          0x02
#define LP5009_BANK_BRIGHTNES_REG       0x03
#define LP5009_BANK_A_COLOR_REG         0x04
#define LP5009_BANK_B_COLOR_REG         0x05
#define LP5009_BANK_C_COLOR_REG         0x06
#define LP5009_LED_0_BRIGHTNES_REG      0x07
#define LP5009_LED_1_BRIGHTNES_REG      0x08
#define LP5009_LED_2_BRIGHTNES_REG      0x09
#define LP5009_OUT0_COLOR_REG           0x0B
#define LP5009_OUT1_COLOR_REG           0x0C
#define LP5009_OUT2_COLOR_REG           0x0D
#define LP5009_OUT3_COLOR_REG           0x0E
#define LP5009_OUT4_COLOR_REG           0x0F
#define LP5009_OUT5_COLOR_REG           0x10
#define LP5009_OUT6_COLOR_REG           0x11
#define LP5009_OUT7_COLOR_REG           0x12
#define LP5009_OUT8_COLOR_REG           0x13
#define LP5009_RESET_REG                0x17

// default register values
#define LP5009_DEVICE_CONFIG0_DATA      0b01000000
#define LP5009_DEVICE_CONFIG1_DATA      0b00010110

// This function initializes an LED driver at passed address. Also pass pointer to error handler flag for device
void LP5009LEDDriverInitialize(uint8_t device_address, volatile uint8_t *device_error_handler_flag);

#endif /* _LP5009_LED_DRIVER_H */

/* *****************************************************************************
 End of File
 */
