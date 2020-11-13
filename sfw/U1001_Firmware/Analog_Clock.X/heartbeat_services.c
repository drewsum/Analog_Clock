
#include "heartbeat_services.h"

#include "error_handler.h"
#include "temperature_sensors.h"
#include "power_monitors.h"
#include "telemetry.h"
#include "device_control.h"
#include "terminal_control.h"
#include "pin_macros.h"
#include "user_interface.h"

#include <stdio.h>

// This function executes actions every call of the heartbeat timer, and is used as an easy interface to do some action every second
void heartbeatServices(void) {
 
    if (live_telemetry_enable) {

        // get new telemetry data every 200ms
        if ((heartbeat_systick + 5) % 20 == 0) {        
            // Get new temperature sensor data
            temp_sense_data_request = 1;

            // Get new power monitor data
            power_monitor_data_request = 1;
            
        }
        
        /* Trigger an ADC conversion scan */
        if ((heartbeat_systick + 10) % 20 == 0) ADCCON3bits.GSWTRG = 1;
        
        // print new telemetry to terminal every second
        if (heartbeat_systick % 100 == 0) live_telemetry_print_request = 1;
        
    }
        
    // Update error LEDs based on error handler status
    update_error_leds_flag = 1;
    
    // Increment on time counter
    if (heartbeat_systick % 100 == 0) device_on_time_counter++;
    
    // update meters if we're currently turned on
    if (ui_power_state && (heartbeat_systick + 10) % 20 == 0) ui_update_meters_rq = true;
    
}