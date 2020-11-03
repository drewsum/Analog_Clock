

#include "user_interface.h"
#include "terminal_control.h"
#include "misc_i2c_devices.h"
#include "32mz_interrupt_control.h"

// this function updates the function LEDs based on the state of ui_meter_function
void updateFunctionLEDs(void) {
    
    switch (ui_meter_function) {
     
        case ui_idle_state:
            FUNCTION_TIME_LED_PIN = LOW;
            FUNCTION_DATE_LED_PIN = LOW;
            FUNCTION_WEEKDAY_LED_PIN = LOW;
            break;
            
        case ui_show_time_state:
            FUNCTION_TIME_LED_PIN = HIGH;
            FUNCTION_DATE_LED_PIN = LOW;
            FUNCTION_WEEKDAY_LED_PIN = LOW;
            break;
            
        case ui_show_date_state:
            FUNCTION_TIME_LED_PIN = LOW;
            FUNCTION_DATE_LED_PIN = HIGH;
            FUNCTION_WEEKDAY_LED_PIN = LOW;
            break;
            
        case ui_show_weekday_state:
            FUNCTION_TIME_LED_PIN = LOW;
            FUNCTION_DATE_LED_PIN = LOW;
            FUNCTION_WEEKDAY_LED_PIN = HIGH;
            break;
    
    }
    
}

// this function is called when the power button is pressed
void powerButtonCallback(void) {
    
    // toggle power state
    ui_power_state = !ui_power_state;
    
    // we're turning on
    if (ui_power_state == true) {
    
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("Clock turning on\r\n");
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        
        ui_meter_function = ui_show_time_state;
        updateFunctionLEDs();
        printf("    UI set to show time state\r\n");
        
        meterBacklightSetColor(YELLOW_BACKLIGHT_COLOR);
        printf("    Meter backlight color set to yellow\r\n");
        
        // enable function button
        clearInterruptFlag(External_Interrupt_3);
        enableInterrupt(External_Interrupt_3);
        printf("    Function pushbutton disabled\r\n");
        
        terminalTextAttributesReset();
        
    }
    
    // we're turning off
    else {
     
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("Clock turning off\r\n");
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        
        ui_meter_function = ui_idle_state;
        updateFunctionLEDs();
        printf("    UI set to idle state\r\n");
        
        meterBacklightSetColor(0,0,0);
        printf("    Meter backlight color set to black\r\n");
        
        // disable function button
        disableInterrupt(External_Interrupt_3);
        printf("    Function pushbutton disabled\r\n");
        
        terminalTextAttributesReset();
        
    }
    
    power_button_callback_rq = false;
    
}

// this function is called when the function button is presed
void functionButtonCallback(void) {
 
    // cycle through functions
    ui_meter_function++;
    if (ui_meter_function == 4) ui_meter_function = 1;
    
    // determine what to do based on what we're displaying on meters
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    switch (ui_meter_function) {
        case ui_show_time_state:
            printf("Meter function set to time\r\n");
            meterBacklightSetColor(YELLOW_BACKLIGHT_COLOR);
            break;
            
        case ui_show_date_state:
            printf("Meter function set to date\r\n");
            meterBacklightSetColor(RED_BACKLIGHT_COLOR);
            break;
            
        case ui_show_weekday_state:
            printf("Meter function set to weekday\r\n");
            meterBacklightSetColor(GREEN_BACKLIGHT_COLOR);
            break;    
    }
    terminalTextAttributesReset();
            
    
    // update function LEDs
    updateFunctionLEDs();
    
    function_button_callback_rq = false;
    
}
