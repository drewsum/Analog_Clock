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

#ifndef _CLOCK_ALARM_H    /* Guard against multiple inclusion */
#define _CLOCK_ALARM_H

#include <xc.h>


// This struct holds alarm settings
// Lets you set alrm hours and minutes, as well as arm the alarm
volatile struct clock_alarm_s {
    
    uint8_t alarm_hour;
    uint8_t alarm_minute;
    uint8_t alarm_second;
    uint8_t alarm_arm;
    
} clock_alarm;

// this function checks if the current time matches the alarm time and sets the buzzer
// if the alarm is armed.
void clockAlarmCheckMatch(void);

#endif /* _CLOCK_ALARM_H */

/* *****************************************************************************
 End of File
 */
