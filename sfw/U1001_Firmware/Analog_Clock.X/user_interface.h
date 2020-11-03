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

#ifndef _USER_INTERFACE_H    /* Guard against multiple inclusion */
#define _USER_INTERFACE_H

#include <xc.h>
#include <stdbool.h>

#include "pin_macros.h"

// this keeps track of what we're currently displaying on the meters
// also sets the function LEDs to show user, and updates the backlight LEDs
enum ui_meter_function_t {
  
    ui_idle_state = 0,
    ui_show_time_state = 1,
    ui_show_weekday_state = 2,
    ui_show_date_state = 3
    
} ui_meter_function;

// this keeps track of if we're turning the clock "on" or "off", and
// subsequently turns converters, DACs, LEDs and such o nand off
volatile bool ui_power_state = false;

// these flags are set in the cap pushbutton ISRs and call their respective callback functions from main()
volatile bool power_button_callback_rq = false, function_button_callback_rq = false;

// this function updates the function LEDs based on the state of ui_meter_function
void updateFunctionLEDs(void);

// this function is called when the power button is pressed
void powerButtonCallback(void);

// this function is called when the function button is presed
void functionButtonCallback(void);



#endif /* _USER_INTERFACE_H */

/* *****************************************************************************
 End of File
 */
