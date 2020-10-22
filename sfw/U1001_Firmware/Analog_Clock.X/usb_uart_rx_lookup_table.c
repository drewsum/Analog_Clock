
#include <xc.h>
#include <string.h>
#include <stdio.h>
#include <math.h>

#include "usb_uart_rx_lookup_table.h"
#include "usb_uart.h"
#include "uthash.h"

#include "terminal_control.h"
#include "device_control.h"
#include "cause_of_reset.h"
#include "error_handler.h"
#include "heartbeat_services.h"
#include "pin_macros.h"
#include "pgood_monitor.h"
#include "telemetry.h"
//#include "adc.h"
//#include "adc_channels.h"
#include "misc_i2c_devices.h"
#include "temperature_sensors.h"
#include "rtcc.h"

usb_uart_command_function_t helpCommandFunction(char * input_str) {

    terminalTextAttributesReset();
    terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Supported Commands:\n\r");
    
    terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
    
    // iterate over usb_uart_commands hash table and print the name of all commands and their help messages
    usb_uart_command_t  *current_command, *temp;
    HASH_ITER(hh, usb_uart_commands, current_command, temp) {
            
        printf("    %s: %s\r\n", current_command->command_name, current_command->command_help_message);
        
    }
    
    terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\r\nHelp messages and neutral responses appear in yellow\n\r");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("System parameters and affirmative responses appear in green\n\r");
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Measurement responses appear in cyan\n\r");
    terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Urgent/interrupt messages appear in magenta\n\r");
    terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Errors and negative responses appear in red\n\r");
    terminalTextAttributesReset();
    printf("User input appears in white\n\r");
         
    
}

usb_uart_command_function_t resetCommand(char * input_str) {
 
    deviceReset();
    
}

usb_uart_command_function_t clearCommand(char * input_str) {

    terminalClearScreen();
    terminalSetCursorHome();
    
}

usb_uart_command_function_t idnCommand(char * input_str) {
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Analog Clock by Drew Maatman, 2020, FW version %s\r\n", FIRMWARE_VERSION_STR);
    terminalTextAttributesReset();    
}

usb_uart_command_function_t repositoryCommand(char * input_str) {
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Project Git repository is hosted at: https://github.com/drewsum/Analog_Clock\r\n");
    terminalTextAttributesReset();    
}

usb_uart_command_function_t hostStatusCommand(char * input_str) {

    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Host Device IDs:\r\n");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    
    // Print serial number
    printf("    PIC32MZ Serial Number retrieved from Flash: %s\n\r",
                getStringSerialNumber());
        
    // Print device ID
    printf("    Device ID retrieved from Flash: %s (0x%X)\n\r", 
        getDeviceIDString(getDeviceID()), 
        getDeviceID());

        // Print revision ID
    printf("    Revision ID retrieved from Flash: %s (0x%X)\n\r", 
        getRevisionIDString(getRevisionID()), 
        getRevisionID());

    terminalTextAttributesReset();
    
    printWatchdogStatus();
    printDeadmanStatus();
    printPrefetchStatus();
    
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
    
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, BOLD_FONT);
        
    }
    
    else {
     
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        
    }
    
    printf("Cause of most recent host reset: %s\r\n", getResetCauseString(reset_cause));
    
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Up time since last device reset: %s\n\r", 
            getStringSecondsAsTime(device_on_time_counter));
    terminalTextAttributesReset();

}

usb_uart_command_function_t peripheralStatusCommand(char * input_str) {
 
    // Snipe out received arguments
    char rx_peripheral_name[32];
    sscanf(input_str, "Peripheral Status? %[^\t\n\r]", rx_peripheral_name);

    // Determine the rail we're enabling or disabling
    if (strcmp(rx_peripheral_name, "Interrupts") == 0) {
        printInterruptStatus();
    }
    else if (strcmp(rx_peripheral_name, "Clocks") == 0) {
        printClockStatus(SYSCLK_INT);
    }
    else if (strcmp(rx_peripheral_name, "PMD") == 0) {
        printPMDStatus();
    }
    else if (strcmp(rx_peripheral_name, "WDT") == 0) {
        printWatchdogStatus();
    }
    else if (strcmp(rx_peripheral_name, "DMT") == 0) {
        printDeadmanStatus();
    }
    else if (strcmp(rx_peripheral_name, "Prefetch") == 0) {
       printPrefetchStatus();
    }
    else if (strcmp(rx_peripheral_name, "DMA") == 0) {
        printDMAStatus();
    }
#warning "fix me"
//    else if (strcmp(rx_peripheral_name, "ADC Channels") == 0) {
//        printADCChannelStatus();
//    }
//    else if (strcmp(rx_peripheral_name, "ADC") == 0) {
//        printADCStatus();
//    }
    else if (strcmp(rx_peripheral_name, "I2C Master") == 0) {    
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("I2C Bus Master Controller Status:\r\n");
        printI2CMasterStatus();
    }
    else if (strcmp(rx_peripheral_name, "RTCC") == 0) {
        printRTCCStatus();
    }
    else if (strcomp(rx_peripheral_name, "Timer ") == 0) {
        uint32_t read_timer_number;
        sscanf(rx_peripheral_name, "Timer %u", &read_timer_number);
        if (read_timer_number < 1 || read_timer_number > 9) {
            terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("Please enter a timer number between 1 and 9, user entered %u\r\n", read_timer_number);
            terminalTextAttributesReset();
        }
        else {
            printTimerStatus((uint8_t) read_timer_number);
        }
    }
    else {
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter a peripheral to view status. Received %s as peripheral name\r\n", rx_peripheral_name);
        printf("Peripherals that can be monitored include:\r\n"
                "   Interrupts\r\n"
                "   Clocks\r\n"
                "   PMD\r\n"
                "   WDT\r\n"
                "   DMT\r\n"
                //"   ADC\r\n"
                //"   ADC Channels\r\n"
                "   Prefetch\r\n"
                "   DMA\r\n"
                "   I2C Master\r\n"
                "   RTCC\r\n"
                "   Timer <x> (x = 1-9)\r\n");
        terminalTextAttributesReset();
        return;
    }

}

usb_uart_command_function_t errorStatusCommand(char * input_str) {
 
    // Print error handler status
    printErrorHandlerStatus();

    // Print help message
    terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\n\rCall 'Clear Errors' command to clear any errors that have been set\n\r");
    terminalTextAttributesReset();
    
}

usb_uart_command_function_t clearErrorsCommand(char * input_str) {
 
    // Zero out all error handler flags
    clearErrorHandler();

    // Update error LEDs based on error handler status
    update_error_leds_flag = 1;

    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Error Handler flags cleared\n\r");
    terminalTextAttributesReset();
    
}

usb_uart_command_function_t platformStatusCommand(char * input_str) {
 
    printPGOODStatus();
    
    volatile double tof_temp = platformGetTOF();
    uint32_t tof_temp_int = (uint32_t) floor(tof_temp);
    uint32_t power_cycle_temp = platformGetPowerCycles();
    
    // first print stuff for logic board
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("\r\nPlatform Time of Flight Data:\r\n");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Total runtime since manufacture: %s\r\n", getStringSecondsAsTime(tof_temp_int));
    printf("    Platform has power cycled %u times since manufacture\r\n", power_cycle_temp);
    
    terminalTextAttributesReset();
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("\r\nI2C Bus Slave Device Status:\r\n");
    terminalTextAttributesReset();
    if (TELEMETRY_HARDSTRAP_PIN == LOW) {
        printTemperatureSensorStatus();
        printPowerMonitorStatus();
    }
    miscI2CDevicesPrintStatus();
    
}

usb_uart_command_function_t pingCommand(char * input_str) {
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Pinging Buzzer\r\n");
    terminalTextAttributesReset();
    
    BUZZER_ENABLE_PIN = HIGH;
    softwareDelay(0x1FFFFF);
    BUZZER_ENABLE_PIN = LOW;
}

usb_uart_command_function_t liveTelemetryCommand(char * input_str) {
 
    terminalTextAttributesReset();
    
    if (live_telemetry_enable == 0) {
        terminalClearScreen();
        terminalSetCursorHome();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("Enabling Live Telemetry\n\r");
        live_telemetry_enable = 1;
        // Disable pushbuttons
    }
    else {
        terminalClearScreen();
        terminalSetCursorHome();
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("Disabling Live Telemetry\n\r");
        live_telemetry_enable = 0;
    }
    
    terminalTextAttributesReset();
    
}

usb_uart_command_function_t timeAndDateCommand(char * input_str) {
 
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Current system time and date:\r\n   ");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printTimeAndDate();
    terminalTextAttributesReset();
    
}

usb_uart_command_function_t setDateCommand(char * input_str) {
 
    // Snipe out received string
    uint32_t read_month, read_day, read_year;
    sscanf(input_str, "Set Date: %02u/%02u/%04u", &read_month, &read_day, &read_year);

    // Write received data into RTCC
    if (read_year >= 2000) {

        rtccWriteDate((uint8_t) read_month, (uint8_t) read_day, (uint16_t) read_year);

        // print out what we just did
        terminalTextAttributesReset();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Set RTCC date as %02u/%02u/%04u\r\n", rtcc_shadow.month, rtcc_shadow.day, rtcc_shadow.year);
        terminalTextAttributesReset();

    }

    // return error if year < 2000
    else {

        terminalTextAttributesReset();
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Enter a valid date after 01/01/2000. User entered %02u/%02u/%04u\r\n", read_month, read_day, read_year);
        terminalTextAttributesReset();

    }
    
}

usb_uart_command_function_t setTimeCommand(char * input_str) {
 
    // Snipe out received string
    uint32_t read_hour, read_minute, read_second;
    sscanf(input_str, "Set Time: %02u:%02u:%02u", &read_hour, &read_minute, &read_second);

    rtccWriteTime((uint8_t) read_hour, (uint8_t) read_minute, (uint8_t) read_second);

    // print out what we just did
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Set RTCC time as %02u:%02u:%02u\r\n", rtcc_shadow.hours, rtcc_shadow.minutes, rtcc_shadow.seconds);
    terminalTextAttributesReset();
    
}

usb_uart_command_function_t setWeekdayCommand(char * input_str) {
 
    char read_weekday[16];
    uint8_t read_weekday_enum;
    sscanf(input_str, "Set Weekday: %s", &read_weekday);

    if (strcmp(read_weekday, "Sunday") == 0) read_weekday_enum = 0;
    else if (strcmp(read_weekday, "Monday") == 0) read_weekday_enum = 1;
    else if (strcmp(read_weekday, "Tuesday") == 0) read_weekday_enum = 2;
    else if (strcmp(read_weekday, "Wednesday") == 0) read_weekday_enum = 3;
    else if (strcmp(read_weekday, "Thursday") == 0) read_weekday_enum = 4;
    else if (strcmp(read_weekday, "Friday") == 0) read_weekday_enum = 5;
    else if (strcmp(read_weekday, "Saturday") == 0) read_weekday_enum = 6;
    else read_weekday_enum = 255;

    if (read_weekday_enum != 255) {

        // print out what we just did
        terminalTextAttributesReset();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        rtccWriteWeekday(read_weekday_enum);
        printf("Set RTCC weekday as %s\r\n", getDayOfWeek(rtcc_shadow.weekday));
        terminalTextAttributesReset();

    }

    else {

        terminalTextAttributesReset();
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter a valid day of the weekday. Input is case sensitive\r\n");
        terminalTextAttributesReset();

    }
    
}

usb_uart_command_function_t setUnixTimeCommand(char * input_str) {
 
    // Snipe out received string
    uint32_t read_unix_time, read_offset;
    sscanf(input_str, "Set Unix Time: %lu, %d", &read_unix_time, &read_offset);

    // remove timezone from unix time (this converts from UTC to local time)
    read_offset *= 3600;                // convert from hours to seconds
    read_unix_time += read_offset;      // add or remove these seconds to read unix time
    
    // write unix time into RTCC
    rtccWriteUnixTime(read_unix_time);

    // print out what we just did
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Set RTCC time as %02u:%02u:%02u\r\n", rtcc_shadow.hours, rtcc_shadow.minutes, rtcc_shadow.seconds);
    printf("Set RTCC date as %02u/%02u/%04u\r\n", rtcc_shadow.month, rtcc_shadow.day, rtcc_shadow.year);
    printf("Set RTCC weekday as %s\r\n", getDayOfWeek(rtcc_shadow.weekday));
    terminalTextAttributesReset();
    
}

// This function must be called to set up the usb_uart_commands hash table
// Entries into this hash table are "usb_uart serial commands"
void usbUartHashTableInitialize(void) {
    
    usbUartAddCommand("Help", 
            "Prints help message for all supported serial commands", 
            helpCommandFunction);
    usbUartAddCommand("Reset", 
            "Executes a host software reset", 
            resetCommand);
    usbUartAddCommand("Clear Screen", 
            "Clears the serial port terminal", 
            clearCommand);
    usbUartAddCommand("*IDN?", 
            "Prints identification string", 
            idnCommand);
    usbUartAddCommand("Repository?",
            "Prints project Git repo location",
            repositoryCommand);
    usbUartAddCommand("Host Status?",
            "Prints status of MCU host device (IDs, WDT, DMT, Prefetch, Cause of Reset, up time)", 
            hostStatusCommand);
    usbUartAddCommand("Peripheral Status? ",
            "\b\b<peripheral_name>: Prints status of passed host peripheral. Available peripherals:\r\n"
            "       Interrupts\r\n"
            "       Clocks\r\n"
            "       PMD\r\n"
            "       WDT\r\n"
            "       DMT\r\n"
            "       Prefetch\r\n"
            "       DMA\r\n"
            //"       ADC\r\n"
            //"       ADC Channels\r\n"
            "       I2C Master\r\n"
            "       RTCC\r\n"
            "       Timer <x> (x = 1-9)",
            peripheralStatusCommand);
    usbUartAddCommand("Platform Status?",
        "Prints current state of surrounding circuitry, including PGOOD, time of flight, I2C slaves",
        platformStatusCommand);
    usbUartAddCommand("Error Status?",
            "Prints the status of various error handler flags",
            errorStatusCommand);
    usbUartAddCommand("Clear Errors",
            "Clears all error handler flags",
            clearErrorsCommand);
    if (TELEMETRY_HARDSTRAP_PIN == LOW) {
        usbUartAddCommand("Live Telemetry",
                "Toggles live updates of system level telemetry",
                liveTelemetryCommand);
    }
    usbUartAddCommand("Ping",
            "Pings the alarm buzzer for a short duration",
            pingCommand);
    usbUartAddCommand("Time and Date?",
            "Prints the current system time and date",
            timeAndDateCommand);
    usbUartAddCommand("Set Date: ",
            "\b\b<mm>/<dd>/<yyyy>: Sets the system date",
            setDateCommand);
    usbUartAddCommand("Set Time: ",
            "\b\b<hh>:<mm>:<ss>: Sets the system time. (Must be 24 hr time)",
            setTimeCommand);
    usbUartAddCommand("Set Weekday: ",
            "\b\b<weekday>: Sets the system weekday",
            setWeekdayCommand);
    usbUartAddCommand("Set Unix Time: ",
            "\b\b<decimal unix time>, <hour offset from UTC to local time>: sets the RTCC to the supplied UNIX time with hour offset from UTC",
            setUnixTimeCommand);
}