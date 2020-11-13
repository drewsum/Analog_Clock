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

#ifndef _MISC_I2C_DEVICES_H    /* Guard against multiple inclusion */
#define _MISC_I2C_DEVICES_H


#include <xc.h>
#include <time.h>

#include "plib_i2c.h"

#include "ds1683_time_of_flight.h"
#include "ds3231_rtc.h"

// misc device I2C addresses
#define PLATFORM_TOF_ADDR           0x6B
#define BACKUP_RTC_ADDR             0x68
#define METER_LED_DRIVER_ADDR       0x14

// these macros are used to set the color for the meter backlight LEDs
#define WHITE_BACKLIGHT_COLOR       255, 255, 255
#define RED_BACKLIGHT_COLOR         255, 0, 0
#define GREEN_BACKLIGHT_COLOR       0, 255, 0
#define BLUE_BACKLIGHT_COLOR        0, 0, 255
#define YELLOW_BACKLIGHT_COLOR      255, 255, 0
#define MAGENTA_BACKLIGHT_COLOR     255, 0, 255
#define CYAN_BACKLIGHT_COLOR        0, 255, 255

// this function initializes the logic board TOF counter
void platformTOFInitialize(void);

// this function returns time of flight in seconds (w/ 0.25 second granularity) for logic board from I2C time of flight counter
double platformGetTOF(void);

// this function returns the number of power cycles for the logic board from I2C time of flight counter
uint32_t platformGetPowerCycles(void);

// this function prints config status for misc I2C devices
void miscI2CDevicesPrintStatus(void);

// This function sets up the backup RTC to act as a fail safe to count while input power is removed
void backupRTCInitialize(void);

// This function stashes the current date and time saved in the internal RTCC into the backup RTC
void backupRTCStashTime(void);

// This function recovers the time from the backup RTC and stores it into the internal RTCC
void backupRTCRestoreTime(void);

// sets up meter backlight LED driver
void meterBacklightInitialize(void);

// this function sets the brightness of the meter backlight
// backlight_brightness range is 0 to 255
void meterBacklightSetBrightness(uint8_t backlight_brightness);

// this function sets the color of the meter backlight LEDs
// all arguments have range 0 to 255
void meterBacklightSetColor(uint8_t red_component, uint8_t green_component, uint8_t blue_component);

#endif /* _MISC_I2C_DEVICES_H */

/* *****************************************************************************
 End of File
 */