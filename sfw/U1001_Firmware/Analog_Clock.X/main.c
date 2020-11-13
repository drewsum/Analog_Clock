/*
 * File:   main.c
 * Author: Drew Maatman
 *
 * Created on October 14, 2020, 8:53 PM
 */


#include <xc.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

// Core Drivers
#include "configuration.h"
#include "device_control.h"
#include "32mz_interrupt_control.h"
#include "heartbeat_timer.h"
#include "watchdog_timer.h"
#include "error_handler.h"
#include "prefetch.h"
#include "cause_of_reset.h"
#include "rtcc.h"

// GPIO
#include "pin_macros.h"
#include "gpio_setup.h"

// Application
#include "heartbeat_services.h"
#include "power_saving.h"
#include "telemetry.h"
#include "user_interface.h"
#include "clock_alarm.h"

// ADC
#include "adc.h"
#include "adc_channels.h"

// I2C
#include "plib_i2c.h"
#include "plib_i2c_master.h"
#include "temperature_sensors.h"
#include "power_monitors.h"
#include "misc_i2c_devices.h"

// SPI
#include "spi_master.h"
#include "spi_dac.h"

// USB
#include "terminal_control.h"
#include "uthash.h"
#include "usb_uart.h"
#include "usb_uart_rx_lookup_table.h"
#include "spi_dac.h"

void main(void) {
    
    // Save the cause of the most recent device reset
    // This also checks for configuration errors
    reset_cause = getResetCause();
    
    // Clear the terminal
    terminalClearScreen();
    terminalSetCursorHome();
    terminalSetTitle("Analog Clock Serial Terminal");
    
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Analog Clock\r\n");
    printf("Firmware Version %s\r\n", FIRMWARE_VERSION_STR);
    printf("Created by Drew Maatman, 2020\r\n");
    terminalTextAttributesReset();
    
     // Print cause of reset
    if (    reset_cause == Undefined ||
            reset_cause == Primary_Config_Registers_Error ||
            reset_cause == Primary_Secondary_Config_Registers_Error ||
            reset_cause == Config_Mismatch ||
            reset_cause == DMT_Reset ||
            reset_cause == WDT_Reset ||
            reset_cause == Software_Reset ||
            reset_cause == External_Reset ||
            reset_cause == BOR_Reset) {
    
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        
    }
    
    else {
     
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        
    }
    
    // only clear persistent error flags if we've seen a POR... keep old values after other resets
    if (reset_cause == POR_Reset) {
        live_telemetry_enable = 0;
        live_telemetry_print_request = 0;
        clearErrorHandler();
    }
    
    printf("\r\nCause of most recent device reset: %s\r\n\r\n", getResetCauseString(reset_cause));
    terminalTextAttributesReset();
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Beginning Host Initialization:\r\n");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    
    // Disable global interrupts so clocks can be initialized properly
    disableGlobalInterrupts();
    
    // setup GPIO pins
    gpioInitialize();
    printf("    GPIO Pins Initialized\n\r");
    
    // block on POS3P3 and POS12 power stability
    while(POS3P3_PGOOD_PIN == LOW);
    while(POS12_PGOOD_PIN == LOW);
    printf("    Input power is stable\r\n");
    
    // Initialize system clocks
    clockInitialize();
    printf("    Oscillators, Phase-Locked Loop, and System Clocks Initialized\n\r");
    
    // Configure interrupt controller
    interruptControllerInitialize();
    
    // Enable Global Interrupts
    enableGlobalInterrupts();
    printf("    Interrupt Controller Initialized, Global Interrupts Enabled\n\r");
    
    // Setup error handling
    errorHandlerInitialize();
    printf("    Error Handler Initialized\n\r");
    
    // Setup USB UART debugging
    usbUartInitialize();
    printf("    USB UART Initialized, DMA buffer method used\n\r");
    
    // Setup prefetch module
    prefetchInitialize();
    printf("    CPU Instruction Prefetch Module Enabled\r\n");
    
    // Disable unused peripherals for power savings
    PMDInitialize();
    printf("    Unused Peripheral Modules Disabled\n\r");

    // Setup the real time clock-calendar
    rtccInitialize();
    if (reset_cause == POR_Reset) rtccClear();
    printf("    Real Time Clock-Calendar Initialized\r\n");
    
    // Setup heartbeat timer
    heartbeatTimerInitialize();
    printf("    Heartbeat Timer Initialized\n\r");
    
    // setup watchdog timer
    watchdogTimerInitialize();
    printf("    Watchdog Timer Initialized\n\r");
    
    // setup I2C
    I2CMaster_Initialize();
    printf("    I2C Bus Master Initialized\r\n");
    backupRTCInitialize();
    printf("    Backup Real-Time Clock Initialized\r\n");
    backupRTCRestoreTime();
    printf("    Restored time backup from previous sessions\r\n");
    meterBacklightInitialize();
    meterBacklightSetBrightness(200);
    printf("    Meter Backlight LED Driver Initialized\r\n");
    
    if (TELEMETRY_HARDSTRAP_PIN == LOW) {
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("Telemetry Configuration Detected\r\n");
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        // setup I2C slaves
        tempSensorsInitialize();
        printf("    Temperature Sensors Initialized\r\n");
        powerMonitorsInitialize();
        printf("    Power Monitors Initialized\r\n");
        // Enable ADC
        ADCInitialize();
        printf("    Analog to Digital Converter Initialized\n\r");
    }
    
    else {
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("    Telemetry Configuration Not Detected\r\n");
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    }
    
    platformTOFInitialize();
    printf("    Platform Time of Flight Counter Initialized\r\n");
    
    // setup power pushbutton
    capTouchPushbuttonsInitialize();
    printf("    Capacitive Pushbuttons Initialized\r\n");
    
    // setup SPI Master port for meter DACs
    spiMasterInit();
    spiDACGPIOReset();
    spi_dac_state = spi_dac_idle_state;
    printf("    SPI Master Port Initialized\r\n");
    spiDACUpdate(0, 0.0);
    spiDACUpdate(1, 0.0);
    spiDACUpdate(2, 0.0);
    printf("    SPI Digital to Analog Converters Cleared\r\n");
    
    // Disable reset LED
    RESET_LED_PIN = LOW;
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Reset LED Disabled, boot complete\r\n");
    
    // Print end of boot message, reset terminal for user input
    terminalTextAttributesReset();
    terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\n\rType 'Help' for list of supported commands\n\r\n\r");
    terminalTextAttributesReset();
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Entering IDLE mode\r\n");
    terminalTextAttributesReset();

    // check to see if a clock fail has occurred and latch it
    clockFailCheck();
    
    // wait for USB UART TX DMA to complete (flush TX buffer)
    while (USB_UART_TX_DMA_CON_BITFIELD.CHBUSY);
    
    // get ready to wake up when user presses power button
    ui_meter_function = ui_idle_state;
    ui_power_state = false;
    
    spiDACPowerDown(0);
    spiDACPowerDown(1);
    spiDACPowerDown(2);
    
    // stop WDT
    kickTheDog();
    WDTCONbits.ON = 0;
    
    // stop heartbeat timer
    T1CONbits.ON = 0;
    T2CONbits.ON = 0;
    OC5CONbits.ON = 0;
    TMR1 = 0;
    TMR2 = 0;
    
    HEARTBEAT_LED_PIN = LOW;
    
    // disable I2C in sleep
    I2C5CONbits.SIDL = 1;
    // disable ADC in sleep
    ADCCON1bits.SIDL = 1;
    // disable more stuff in sleep
    T1CONbits.SIDL = 1;
    T2CONbits.SIDL = 1;
    OC5CONbits.SIDL = 1;
    SPI3CONbits.SIDL = 1;
    // enable USB UART in sleep
    U1MODEbits.SIDL = 0;
    
    METER_LED_ENABLE_PIN = 0;
    
    // disable function button
    disableInterrupt(External_Interrupt_3);
    disableInterrupt(Real_Time_Clock);
    
    asm volatile ( "wait" ); // Put device into Idle mode
    
    enableInterrupt(Real_Time_Clock);
    
    // endless loop
    while(1) {
        
         // get temperature sensor data
        if (temp_sense_data_request) tempSensorsRetrieveData();

        // get power monitor data
        if (power_monitor_data_request) powerMonitorsGetData();
        
        // clear the watchdog if we need to
        if (wdt_clear_request) {
            kickTheDog();
            wdt_clear_request = 0;
        }
        
        // parse received USB strings if we have a new one received
        if (usb_uart_rx_ready) {
            usbUartRxLUTInterface(usb_uart_rx_buffer);
            // Determine length of received string
            uint32_t length = strlen(usb_uart_rx_buffer);
        
            // clear rx buffer
            uint32_t index;
            for (index = 0; index < length; index++) {
                usb_uart_rx_buffer[index] = '\0';
            }
        }
        
        if (live_telemetry_print_request && live_telemetry_enable) {

            // Clear the terminal
            //terminalClearScreen();
            terminalSetCursorHome();
            
            terminalTextAttributesReset();
            terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, BOLD_FONT);
            printf("Live system telemetry:\033[K\n\r\033[K");
            
            printCurrentTelemetry();
            
            terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("Call 'Live Telemetry' command to disable\033[K\n\r");
            terminalTextAttributesReset();
            
            live_telemetry_print_request = 0;
            
        }
        
        // check to see if a clock fail has occurred and latch it
        clockFailCheck();
        
        // update error LEDs if needed
        if (update_error_leds_flag) updateErrorLEDs();
        
        // callback functions from cap touch pushbuttons
        if (power_button_callback_rq) powerButtonCallback();
        if (function_button_callback_rq) functionButtonCallback();
        
        // function to update meters
        if (ui_update_meters_rq) UIUpdateMeters();
        
        if (ui_meter_function != ui_idle_state) clockAlarmCheckMatch();
        
    }
}
