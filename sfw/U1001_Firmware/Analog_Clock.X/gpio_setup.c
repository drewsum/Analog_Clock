
#include <xc.h>
#include <proc/p32mz0512efe064.h>

#include "gpio_setup.h"

// this function allows for a more convenient way to setup pins
void gpioPinSetup(volatile uint32_t port_name, 
    uint8_t pin_number,
    uint8_t tris_setting,
    uint8_t lat_setting,
    uint8_t open_drain_setting,
    uint8_t analog_setting) {

    #ifdef LATA
    if (port_name == PORTA) {
        // Set TRIS for this pin
        TRISACLR = (1 << pin_number);
        TRISASET = (tris_setting << pin_number);
        // set LAT for this pin
        LATACLR = (1 << pin_number);
        LATASET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCACLR = (1 << pin_number);
        ODCASET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELA
        ANSELACLR = (1 << pin_number);
        ANSELASET = (analog_setting << pin_number);
        #endif
    }
    #endif

    #ifdef LATB
    if (port_name == PORTB) {
        // Set TRIS for this pin
        TRISBCLR = (1 << pin_number);
        TRISBSET = (tris_setting << pin_number);
        // set LAT for this pin
        LATBCLR = (1 << pin_number);
        LATBSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCBCLR = (1 << pin_number);
        ODCBSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELB
        ANSELBCLR = (1 << pin_number);
        ANSELBSET = (analog_setting << pin_number);
        #endif
    }
    #endif

    #ifdef LATC
    if (port_name == PORTC) {
        // Set TRIS for this pin
        TRISCCLR = (1 << pin_number);
        TRISCSET = (tris_setting << pin_number);
        // set LAT for this pin
        LATCCLR = (1 << pin_number);
        LATCSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCCCLR = (1 << pin_number);
        ODCCSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELC
        ANSELCCLR = (1 << pin_number);
        ANSELCSET = (analog_setting << pin_number);
        #endif
    }
    #endif

    #ifdef LATD
    if (port_name == PORTD) {
        // Set TRIS for this pin
        TRISDCLR = (1 << pin_number);
        TRISDSET = (tris_setting << pin_number);
        // set LAT for this pin
        LATDCLR = (1 << pin_number);
        LATDSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCDCLR = (1 << pin_number);
        ODCDSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELD
        ANSELDCLR = (1 << pin_number);
        ANSELDSET = (analog_setting << pin_number);
        #endif
    }
    #endif

    #ifdef LATE
    if (port_name == PORTE) {
        // Set TRIS for this pin
        TRISECLR = (1 << pin_number);
        TRISESET = (tris_setting << pin_number);
        // set LAT for this pin
        LATECLR = (1 << pin_number);
        LATESET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCECLR = (1 << pin_number);
        ODCESET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELE
        ANSELECLR = (1 << pin_number);
        ANSELESET = (analog_setting << pin_number);
        #endif
    }
    #endif

    #ifdef LATF
    if (port_name == PORTF) {
        // Set TRIS for this pin
        TRISFCLR = (1 << pin_number);
        TRISFSET = (tris_setting << pin_number);
        // set LAT for this pin
        LATFCLR = (1 << pin_number);
        LATFSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCFCLR = (1 << pin_number);
        ODCFSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELF
        ANSELFCLR = (1 << pin_number);
        ANSELFSET = (analog_setting << pin_number);
        #endif
    }
    #endif

    #ifdef LATG
    if (port_name == PORTG) {
        // Set TRIS for this pin
        TRISGCLR = (1 << pin_number);
        TRISGSET = (tris_setting << pin_number);
        // set LAT for this pin
        LATGCLR = (1 << pin_number);
        LATGSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCGCLR = (1 << pin_number);
        ODCGSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELG
        ANSELGCLR = (1 << pin_number);
        ANSELGSET = (analog_setting << pin_number);
        #endif
    }
    #endif

    #ifdef LATH
    if (port_name == PORTH) {
        // Set TRIS for this pin
        TRISHCLR = (1 << pin_number);
        TRISHSET = (tris_setting << pin_number);
        // set LAT for this pin
        LATHCLR = (1 << pin_number);
        LATHSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCHCLR = (1 << pin_number);
        ODCHSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELH
        ANSELHCLR = (1 << pin_number);
        ANSELHSET = (analog_setting << pin_number);
        #endif
    }
    #endif

    #ifdef LATJ
    if (port_name == PORTJ) {
        // Set TRIS for this pin
        TRISJCLR = (1 << pin_number);
        TRISJSET = (tris_setting << pin_number);
        // set LAT for this pin
        LATJCLR = (1 << pin_number);
        LATJSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCJCLR = (1 << pin_number);
        ODCJSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELJ
        ANSELJCLR = (1 << pin_number);
        ANSELJSET = (analog_setting << pin_number);
        #endif
    }
    #endif

    #ifdef LATK
    if (port_name == PORTK) {
        // Set TRIS for this pin
        TRISKCLR = (1 << pin_number);
        TRISKSET = (tris_setting << pin_number);
        // set LAT for this pin
        LATKCLR = (1 << pin_number);
        LATKSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCKCLR = (1 << pin_number);
        ODCKSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELK
        ANSELKCLR = (1 << pin_number);
        ANSELKSET = (analog_setting << pin_number);
        #endif
    }
    #endif

}

// initializes GPIO ports on microcontroller
void gpioInitialize (void) {
    
    // Unlock peripheral pin select
    PPSUnlock();
    
    portAGPIOInitialize();
    portBGPIOInitialize();
    portCGPIOInitialize();
    portDGPIOInitialize();
    portEGPIOInitialize();
    portFGPIOInitialize();
    portGGPIOInitialize();
    
    // Lock PPS
    PPSLock();
    
}

// initializes port A GPIO pins
void portAGPIOInitialize (void) {
    Nop();      // Port A doesn't exist
}

// initializes port B GPIO pins
void portBGPIOInitialize (void) {
    
    gpioPinSetup(PORTB, 0, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_ENABLE);
    gpioPinSetup(PORTB, 1, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_ENABLE);
    gpioPinSetup(PORTB, 2, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_ENABLE);
    gpioPinSetup(PORTB, 3, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_ENABLE);
    gpioPinSetup(PORTB, 4, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_ENABLE);
    gpioPinSetup(PORTB, 5, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_ENABLE);
    gpioPinSetup(PORTB, 6, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTB, 7, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTB, 8, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    INT2Rbits.INT2R = RPB8_PPS_INPUT;       // assign INT2 input to RB8
    gpioPinSetup(PORTB, 9, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    INT3Rbits.INT3R = RPB9_PPS_INPUT;       // assign INT3 input to RB9
    gpioPinSetup(PORTB, 10, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    RPB10Rbits.RPB10R = SDO3_PPS_OUTPUT;    // assign SDO3 to RB10
    gpioPinSetup(PORTB, 11, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTB, 12, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTB, 13, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTB, 14, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTB, 15, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_ENABLE);
    
}

// initializes port C GPIO pins
void portCGPIOInitialize (void) {
    
    gpioPinSetup(PORTC, 12, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTC, 13, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    RPC13Rbits.RPC13R = REFCLKO1_PPS_OUTPUT;         // Assign REFCLKO1 to RC13
    gpioPinSetup(PORTC, 14, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTC, 15, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    
}

// initializes port D GPIO pins
void portDGPIOInitialize (void) {
    
    gpioPinSetup(PORTD, 0, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTD, 1, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTD, 2, TRIS_INPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    U1RXRbits.U1RXR = RPD2_PPS_INPUT;           // Assign U1RX to RD2
    gpioPinSetup(PORTD, 3, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    RPD3Rbits.RPD3R = U1TX_PPS_OUTPUT;           // Assign U1TX to RD3
    gpioPinSetup(PORTD, 4, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTD, 5, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTD, 9, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTD, 10, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTD, 11, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    
}

// initializes port E GPIO pins
void portEGPIOInitialize (void) {
    
    gpioPinSetup(PORTE, 0, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTE, 1, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTE, 2, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTE, 3, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTE, 4, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTE, 5, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTE, 6, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTE, 7, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    
}

// initializes port F GPIO pins
void portFGPIOInitialize (void) {
    
    gpioPinSetup(PORTF, 0, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTF, 1, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTF, 3, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTF, 4, TRIS_INPUT, LAT_LOW, ODC_ENABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTF, 5, TRIS_INPUT, LAT_LOW, ODC_ENABLE, ANALOG_DISABLE);
    
}

// initializes port G GPIO pins
void portGGPIOInitialize (void) {
    
    gpioPinSetup(PORTG, 6, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    RPG6Rbits.RPG6R = OC5_PPS_OUTPUT;           // Assign OC5 to RG6
    gpioPinSetup(PORTG, 7, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTG, 8, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(PORTG, 9, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    
}
