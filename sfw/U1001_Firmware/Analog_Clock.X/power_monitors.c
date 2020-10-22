
#include <stdio.h>

#include "power_monitors.h"

#include "pin_macros.h"
#include "telemetry.h"
#include "terminal_control.h"

// This function initializes all temperature sensors in the project, if available
void powerMonitorsInitialize(void) {
 
    // Reset chips and write data to config registers
    INA219PowerMonitorInitialize(POS12_MON_ADDR, &error_handler.flags.pos12_mon);
    INA219PowerMonitorInitialize(POS3P3_MON_ADDR, &error_handler.flags.pos3p3_mon);
    INA219PowerMonitorInitialize(POS20_MON_ADDR, &error_handler.flags.pos20_mon);
    INA219PowerMonitorInitialize(USB_MON_ADDR, &error_handler.flags.usb_mon);
   
    // Write calibration data to allow power monitors to calculate current
    INA219SetCalibration(POS12_MON_ADDR, &error_handler.flags.pos12_mon, POS12_MON_CLSB, POS12_MON_RSHUNT);
    INA219SetCalibration(POS3P3_MON_ADDR, &error_handler.flags.pos3p3_mon, POS3P3_MON_CLSB, POS3P3_MON_RSHUNT);
    INA219SetCalibration(POS20_MON_ADDR, &error_handler.flags.pos20_mon, POS20_MON_CLSB, POS20_MON_RSHUNT);
    INA219SetCalibration(USB_MON_ADDR, &error_handler.flags.usb_mon, USB_MON_CLSB, USB_MON_RSHUNT);
    
}

// this function gets temperature data for all temperature sensors
void powerMonitorsGetData(void) {
 
    // Get bus voltage data for each power monitor and stash in telemetry structure
    telemetry.pos12.voltage         = INA219GetVoltage(POS12_MON_ADDR, &error_handler.flags.pos12_mon);
    telemetry.pos3p3.voltage        = INA219GetVoltage(POS3P3_MON_ADDR, &error_handler.flags.pos3p3_mon);
    telemetry.pos20.voltage        = INA219GetVoltage(POS20_MON_ADDR, &error_handler.flags.pos20_mon);
    telemetry.usb.voltage           = INA219GetVoltage(USB_MON_ADDR, &error_handler.flags.usb_mon);

    // Get current data for each power monitor and stash in telemetry structure
    telemetry.pos12.current         = INA219GetCurrent(POS12_MON_ADDR, &error_handler.flags.pos12_mon, POS12_MON_CLSB);
    telemetry.pos3p3.current        = INA219GetCurrent(POS3P3_MON_ADDR, &error_handler.flags.pos3p3_mon, POS3P3_MON_CLSB);
    telemetry.pos20.current        = INA219GetCurrent(POS20_MON_ADDR, &error_handler.flags.pos20_mon, POS20_MON_CLSB);
    telemetry.usb.current           = INA219GetCurrent(USB_MON_ADDR, &error_handler.flags.usb_mon, USB_MON_CLSB);

    // Get power data for each power monitor and stash in telemetry structure
    telemetry.pos12.power         = INA219GetPower(POS12_MON_ADDR, &error_handler.flags.pos12_mon, POS12_MON_CLSB);
    telemetry.pos3p3.power        = INA219GetPower(POS3P3_MON_ADDR, &error_handler.flags.pos3p3_mon, POS3P3_MON_CLSB);
    telemetry.pos20.power        = INA219GetPower(POS20_MON_ADDR, &error_handler.flags.pos20_mon, POS20_MON_CLSB);
    telemetry.usb.power           = INA219GetPower(USB_MON_ADDR, &error_handler.flags.usb_mon, USB_MON_CLSB);

    power_monitor_data_request = 0;
    
}

// this function prints status for all used power monitors to stdio
void printPowerMonitorStatus(void) {
    
    INA219printStatus(POS12_MON_ADDR, &error_handler.flags.pos12_mon);
    INA219printStatus(POS3P3_MON_ADDR, &error_handler.flags.pos3p3_mon);
    INA219printStatus(POS20_MON_ADDR, &error_handler.flags.pos20_mon);
    INA219printStatus(USB_MON_ADDR, &error_handler.flags.usb_mon);
    
}