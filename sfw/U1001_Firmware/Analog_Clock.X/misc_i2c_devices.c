
#include <time.h>
#include <stdio.h>

#include "misc_i2c_devices.h"

#include "pin_macros.h"
#include "error_handler.h"
#include "ds1683_time_of_flight.h"
#include "rtcc.h"
#include "lp5009_led_driver.h"

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
    DS3231PrintStatus(BACKUP_RTC_ADDR, &error_handler.flags.backup_rtc);
    LP5009PrintStatus(METER_LED_DRIVER_ADDR, &error_handler.flags.meter_backlight_led_driver);
    
}

// This function sets up the backup RTC to act as a fail safe to count while input power is removed
void backupRTCInitialize(void) {
 
    DS3231MRTCInitialize(BACKUP_RTC_ADDR, &error_handler.flags.backup_rtc);
    
}

// This function stashes the current date and time saved in the internal RTCC into the backup RTC
void backupRTCStashTime(void) {
 
    DS3231MRTCStoreTime(BACKUP_RTC_ADDR, &error_handler.flags.backup_rtc, getRTCTimeStruct());
    
}

// This function recovers the time from the backup RTC and stores it into the internal RTCC
void backupRTCRestoreTime(void) {
 
    struct tm read_time = DS3231MRTCReadTime(BACKUP_RTC_ADDR, &error_handler.flags.backup_rtc);
    rtccWriteTime(read_time.tm_hour, read_time.tm_min, read_time.tm_sec);
    rtccWriteWeekday(read_time.tm_wday);
    rtccWriteDate(read_time.tm_mon + 1, read_time.tm_mday, read_time.tm_year + 1900);
    
}

// sets up meter backlight LED driver
void meterBacklightInitialize(void) {
 
    METER_LED_ENABLE_PIN = HIGH;
    
    softwareDelay(0xFFF);
    
    LP5009LEDDriverInitialize(METER_LED_DRIVER_ADDR, &error_handler.flags.meter_backlight_led_driver);
    // this function allows all three LEDs to be set to the same color and brightness using the 
    // LP5009SetBankBrightness() and LP5009SetBankColor() functions
    LP5009EnableBankMode(METER_LED_DRIVER_ADDR, &error_handler.flags.meter_backlight_led_driver);
    
}

// this function sets the brightness of the meter backlight
// backlight_brightness range is 0 to 255
void meterBacklightSetBrightness(uint8_t backlight_brightness) {
    LP5009SetBankBrightness(METER_LED_DRIVER_ADDR, &error_handler.flags.meter_backlight_led_driver, backlight_brightness);
}

// this function sets the color of the meter backlight LEDs
// all arguments have range 0 to 255
void meterBacklightSetColor(uint8_t red_component, uint8_t green_component, uint8_t blue_component) {
    LP5009SetBankColor(METER_LED_DRIVER_ADDR, &error_handler.flags.meter_backlight_led_driver, red_component, green_component, blue_component);
}