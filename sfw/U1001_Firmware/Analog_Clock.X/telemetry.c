

#include "telemetry.h"

#include <xc.h>
#include <stdio.h>

#include "terminal_control.h"

// This prints all telemetry data in an easily digested format
void printCurrentTelemetry(void) {
 
    // Print stuff off for POS12
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("\t+12V Power Input:\033[K\r\n");
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\t\tVout: %.3fV"
           "\tIout: %.3fA"
           "\tPout: %.3fW\033[K\r\n"
           "\t\tTemp: %.3fC\033[K\r\n\033[K\r\n",
            telemetry.pos12.voltage,
            telemetry.pos12.current,
            telemetry.pos12.power,
            telemetry.pos12.temperature);
    
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("\t+3.3V Power Supply:\033[K\r\n");
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\t\tVout: %.3fV"
           "\tIout: %.3fA"
           "\tPout: %.3fW\033[K\r\n"
           "\t\tTemp: %.3fC\033[K\r\n\033[K\r\n",
            telemetry.pos3p3.voltage,
            telemetry.pos3p3.current,
            telemetry.pos3p3.power,
            telemetry.pos3p3.temperature);
    
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("\t+20V Power Supply:\033[K\r\n");
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\t\tVout: %.3fV"
           "\tIout: %.3fA"
           "\tPout: %.3fW\033[K\r\n"
           "\t\tTemp: %.3fC\033[K\r\n\033[K\r\n",
            telemetry.pos20.voltage,
            telemetry.pos20.current,
            telemetry.pos20.power,
            telemetry.pos20.temperature);
    
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("\tUSB Power Input:\033[K\r\n");
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\t\tVout: %.3fV"
           "\tIout: %.3fA"
           "\tPout: %.3fW\033[K\r\n"
           "\t\tTemp: %.3fC\033[K\r\n\033[K\r\n",
            telemetry.usb.voltage,
            telemetry.usb.current,
            telemetry.usb.power,
            telemetry.usb.temperature);
    
    // print stuff off other random data points
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("\tDAC Telemetry:\033[K\r\n");
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\t\tDAC 0 Output Voltage: %.3fV\033[K\r\n", telemetry.dac0_output_voltage);
    printf("\t\tDAC 0 Reference Voltage: %.3fV\033[K\r\n", telemetry.dac0_ref_voltage);
    printf("\t\tDAC 1 Output Voltage: %.3fV\033[K\r\n", telemetry.dac1_output_voltage);
    printf("\t\tDAC 1 Reference Voltage: %.3fV\033[K\r\n", telemetry.dac1_ref_voltage);
    printf("\t\tDAC 2 Output Voltage: %.3fV\033[K\r\n", telemetry.dac2_output_voltage);
    printf("\t\tDAC 2 Reference Voltage: %.3fV\033[K\r\n\r\n", telemetry.dac2_ref_voltage);
    
    // print stuff off other random data points
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("\tMiscellaneous Telemetry:\033[K\r\n");
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\t\tHost Die Temperature: %.3fC\033[K\r\n", telemetry.mcu_die_temp);
    printf("\t\tBackup RTC Die Temperature: %.3fC\033[K\r\n", telemetry.backup_rtc_temperature);
    printf("\t\tBackup Battery Voltage: %.3fV\033[K\r\n", telemetry.backup_battery_voltage);
    printf("\t\tHost ADC Reference Voltage: %.3fV\033[K\r\n", telemetry.adc_vref_voltage);
    printf("\t\tAmbient Temperature: %.3fC\033[K\r\n", telemetry.ambient_temperature);
    
    terminalTextAttributesReset();

    
}