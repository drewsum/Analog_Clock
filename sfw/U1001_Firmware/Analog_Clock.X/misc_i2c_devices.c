
#include <time.h>
#include <stdio.h>

#include "misc_i2c_devices.h"

#include "pin_macros.h"
#include "error_handler.h"
#include "ds1683_time_of_flight.h"

// this function initializes the logic board TOF counter
void platformTOFInitialize(void) {
 
    DS1683TimeOfFlightInitialize(PLATFORM_TOF_ADDR, &error_handler.flags.platform_tof);
    
}

// this function returns time of flight in seconds (w/ 0.25 second granularity) for logic board from I2C time of flight counter
double platformGetTOF(void) {
 
    volatile double ret_value = DS1683GetETC(PLATFORM_TOF_ADDR, &error_handler.flags.platform_tof);
    return ret_value;
    
}

// this function returns the number of power cycles for the logic board from I2C time of flight counter
uint32_t platformGetPowerCycles(void) {
 
    return (uint32_t) DS1683GetEventCount(PLATFORM_TOF_ADDR, &error_handler.flags.platform_tof);
    
}

// this function prints config status for misc I2C devices
void miscI2CDevicesPrintStatus(void) {
 
    DS1683PrintStatus(PLATFORM_TOF_ADDR, &error_handler.flags.platform_tof);
    
}