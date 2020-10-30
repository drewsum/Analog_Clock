#include "lp5009_led_driver.h"

#include <stdio.h>

#include "plib_i2c.h"

#include "error_handler.h"
#include "device_control.h"
#include "terminal_control.h"


// This function initializes an LED driver at passed address. Also pass pointer to error handler flag for device
void LP5009LEDDriverInitialize(uint8_t device_address, volatile uint8_t *device_error_handler_flag) {

    uint8_t output_data_array[2];
    output_data_array[0] = LP5009_RESET_REG;
    output_data_array[1] = 0xFF;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2c5Obj.state != I2C_STATE_IDLE);
    
    output_data_array[0] = LP5009_DEVICE_CONFIG0_REG;
    output_data_array[1] = LP5009_DEVICE_CONFIG0_DATA;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2c5Obj.state != I2C_STATE_IDLE);
    
    output_data_array[0] = LP5009_DEVICE_CONFIG1_REG;
    output_data_array[1] = LP5009_DEVICE_CONFIG1_DATA;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2c5Obj.state != I2C_STATE_IDLE);

    output_data_array[0] = LP5009_OUT0_COLOR_REG;
    output_data_array[1] = 0xFF;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2c5Obj.state != I2C_STATE_IDLE);
    
    output_data_array[0] = LP5009_LED_0_BRIGHTNES_REG;
    output_data_array[1] = 0xFF;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2c5Obj.state != I2C_STATE_IDLE);
    
}