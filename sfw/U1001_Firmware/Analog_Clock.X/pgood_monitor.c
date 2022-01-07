
#include <stdio.h>

#include "pgood_monitor.h"

#include "pin_macros.h"

#include "terminal_control.h"

// this function prints current PGOOD status
void printPGOODStatus(void) {
 
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Current Power Supply Status:\r\n");
   
    if (POS12_PGOOD_PIN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    +12V Input Voltage is %s\n\r", POS12_PGOOD_PIN ? "within tolerance" : "out of tolerance");
    
    if (POS3P3_PGOOD_PIN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    +3.3V Power Supply is %s", POS12_PGOOD_PIN ? "enabled, " : "disabled\r\n");
    if (POS3P3_PGOOD_PIN) printf("output voltage is %s\r\n", POS3P3_PGOOD_PIN ? "within regulation" : "out of regulation");
    
    if (POS20_PGOOD_PIN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    +20V Power Supply is %s", POS20_RUN_PIN ? "enabled, " : "disabled\r\n");
    if (POS20_RUN_PIN) printf("output voltage is %s\r\n", POS20_PGOOD_PIN ? "within regulation" : "out of regulation");
    
    if (POS5_USB_PGOOD_PIN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    USB Bus Voltage voltage is %s\r\n", POS5_USB_PGOOD_PIN ? "within range" : "out of range");
    
    if (VBAT_PGOOD_PIN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTC Backup Battery voltage is %s\r\n", VBAT_PGOOD_PIN ? "within range" : "out of range");
    
    if (POS3P3_PGL_SHDN_PIN) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PGOOD LED voltage is %s\r\n", POS3P3_PGL_SHDN_PIN ? "disabled" : "enabled");
    
    terminalTextAttributesReset();
}
