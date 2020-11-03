
#include "32mz_interrupt_control.h"

#include <stdio.h>

#include "terminal_control.h"

#include "user_interface.h"

// this function initializes the "Power" capacitive pushbutton interrupt
void capTouchPushbuttonsInitialize(void) {
    
    // INT2, INT3 polarity is rising edge
    INTCONbits.INT2EP = 1;
    INTCONbits.INT3EP = 1;
    
    // power button
    disableInterrupt(External_Interrupt_2);
    setInterruptPriority(External_Interrupt_2, 7);
    setInterruptSubpriority(External_Interrupt_2, 1);
    clearInterruptFlag(External_Interrupt_2);
    enableInterrupt(External_Interrupt_2);
    
    // function button
    disableInterrupt(External_Interrupt_3);
    setInterruptPriority(External_Interrupt_3, 7);
    setInterruptSubpriority(External_Interrupt_3, 1);
    clearInterruptFlag(External_Interrupt_3);
    enableInterrupt(External_Interrupt_3);
    
}

// this is the cap touch power toggle button interrupt service routine
void __ISR(_EXTERNAL_2_VECTOR, IPL7SRS) powerCapTouchPushbuttonISR(void) {
    
    terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("User pressed power button\r\n");
    terminalTextAttributesReset();
    
    power_button_callback_rq = 1;
    
    clearInterruptFlag(External_Interrupt_2);
    
}

// this is the cap touch function toggle button interrupt service routine
void __ISR(_EXTERNAL_3_VECTOR, IPL7SRS) functionCapTouchPushbuttonISR(void) {
    
    terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("User pressed function button\r\n");
    terminalTextAttributesReset();
    
    function_button_callback_rq = 1;
    
    clearInterruptFlag(External_Interrupt_3);
    
}