
#include <stdio.h>

#include "user_interface.h"
#include "terminal_control.h"
#include "misc_i2c_devices.h"
#include "32mz_interrupt_control.h"
#include "error_handler.h"
#include "spi_dac.h"
#include "rtcc.h"
#include "pin_macros.h"
#include "watchdog_timer.h"
#include "usb_uart.h"

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
    
        // start WDT
        kickTheDog();
        watchdogTimerInitialize();

        // start heartbeat timer
        printf("    Heartbeat Timer, Watchdog Timer restarted\r\n");
        TMR1 = 0;
        TMR2 = 0;
        OC4RS = 0;
        T1CONbits.ON = 1;
        T2CONbits.ON = 1;
        OC5CONbits.ON = 1;
        
        // enable PGOOD LEDs
        POS3P3_PGL_SHDN_PIN = LOW;
        printf("    PGOOD LEDs enabled\r\n");
        
        ui_meter_function = ui_show_time_state;
        updateFunctionLEDs();
        printf("    UI set to show time state\r\n");
        
        // enable meter DAC drive voltage
        POS20_RUN_PIN = HIGH;
        uint32_t timeout = 0xFFFFFF;
        while (POS20_PGOOD_PIN == LOW && timeout > 0) timeout--;
        if (POS20_PGOOD_PIN == LOW) {
            terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Failed to enable +20V Power Supply\r\n");
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            error_handler.flags.pos20_pgood = 1;
            return;
        }
        else {
            printf("    +20V Power Supply Enabled\r\n");
        }
        
        meterBacklightSetColor(YELLOW_BACKLIGHT_COLOR);
        printf("    Meter backlight color set to yellow\r\n");
        
        // enable function button
        clearInterruptFlag(External_Interrupt_3);
        enableInterrupt(External_Interrupt_3);
        printf("    Function pushbutton enabled\r\n");
        
        terminalTextAttributesReset();
        
    }
    
    // we're turning off
    else {
     
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("Clock turning off\r\n");
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        
        // enable PGOOD LEDs
        POS3P3_PGL_SHDN_PIN = HIGH;
        printf("    PGOOD LEDs disabled\r\n");
        
        ui_meter_function = ui_idle_state;
        updateFunctionLEDs();
        printf("    UI set to idle state\r\n");
        
        // clear DACs
        spiDACUpdate(0, 0.0);
        spiDACUpdate(1, 0.0);
        spiDACUpdate(2, 0.0);
        printf("    SPI DACs cleared\r\n");
        
        // disable +20V boost converter
        POS20_RUN_PIN = LOW;
        printf("    Disabled +20V Power Supply\r\n");
        
        meterBacklightSetColor(0,0,0);
        printf("    Meter backlight color set to black\r\n");
        
        // disable function button
        disableInterrupt(External_Interrupt_3);
        printf("    Function pushbutton disabled\r\n");
        
        printf("    Entering IDLE mode\r\n");

        
        terminalTextAttributesReset();

        // check to see if a clock fail has occurred and latch it
        clockFailCheck();

        // wait for USB UART TX DMA to complete (flush TX buffer)
        while (USB_UART_TX_DMA_CON_BITFIELD.CHBUSY);

        // get ready to wake up when user presses power button
        ui_meter_function = ui_idle_state;
        ui_power_state = false;

        // stop WDT
        kickTheDog();
        WDTCONbits.ON = 0;

        // stop heartbeat timer
        T1CONbits.ON = 0;
        T2CONbits.ON = 0;
        OC5CONbits.ON = 0;
        TMR1 = 0;

        HEARTBEAT_LED_PIN = LOW;

        // disable I2C in sleep
        I2C5CONbits.SIDL = 1;
        // disable ADC in sleep
        ADCCON1bits.SIDL = 1;
        // enable USB UART in sleep
        U1MODEbits.SIDL = 0;

        asm volatile ( "wait" ); // Put device into Idle mode

        // this code executes on a wake from sleep (power pushbutton pressed, or serial commands received)
        // start WDT
        kickTheDog();
        heartbeatTimerInitialize();

        // setup watchdog timer
        watchdogTimerInitialize();
    
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
            #warning "set to only backlight LED2"
            meterBacklightSetColor(GREEN_BACKLIGHT_COLOR);
            break;    
    }
    terminalTextAttributesReset();
            
    
    // update function LEDs
    updateFunctionLEDs();
    
    function_button_callback_rq = false;
    
}

// this function is called periodically by heartbeat_services() from main() to update
// the dacs based on the time and what we're displaying
void UIUpdateMeters(void) {
 
    // update meter DACs based on what we're displaying
    switch (ui_meter_function) {
     
        case ui_idle_state:
            spiDACUpdate(0, 0.0);
            spiDACUpdate(1, 0.0);
            spiDACUpdate(2, 0.0);
            break;
            
        case ui_show_time_state:
            // update hours
            spiDACUpdate(0, ((rtcc_shadow.hours / 23.0) * 15.8) + 3.5);
            // update minutes
            spiDACUpdate(1, (rtcc_shadow.minutes / 59.0) * 15.74);
            // update minutes
            spiDACUpdate(2, ((rtcc_shadow.seconds / 59.0) * 16.0) + 3.7);
            break;
            
        case ui_show_date_state:
            // update month
            spiDACUpdate(0, (((rtcc_shadow.month - 1)/ 11.0) * 15.8) + 3.5);
            // update date
            spiDACUpdate(1, ((rtcc_shadow.day - 1)/ 31.0) * 15.74);
            // update year (up to 2030)
            spiDACUpdate(2, (((rtcc_shadow.year - 2020) / 10.0) * 16.0) + 3.7);
            break;
            
        case ui_show_weekday_state:
            // clear meters 0 and 1
            spiDACUpdate(0, 0.0);
            spiDACUpdate(1, 0.0);
            // update weekday
            spiDACUpdate(2, ((rtcc_shadow.weekday / 6.0) * 16.0) + 3.7);
            break;
    
    }
    
    ui_update_meters_rq = false;
    
}