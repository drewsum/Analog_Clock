
#include "clock_alarm.h"
#include "pin_macros.h"
#include "rtcc.h"


// this function checks if the current time matches the alarm time and sets the buzzer
// if the alarm is armed.
void clockAlarmCheckMatch(void) {
 
    // only evaluate this stuff if the alarm is armed and not currently sounding
    if (clock_alarm.alarm_arm && BUZZER_ENABLE_PIN == LOW) {
     
        // If the alarm settings and current time match, trigger the alarm
        if (    clock_alarm.alarm_hour == rtcc_shadow.hours &&
                clock_alarm.alarm_minute == rtcc_shadow.minutes &&
                clock_alarm.alarm_second == rtcc_shadow.seconds) {
            BUZZER_ENABLE_PIN = HIGH;
            
        }
        
    }
    
}