
#ifndef _PIN_MACROS_H    /* Guard against multiple inclusion */
#define _PIN_MACROS_H


#include <xc.h>

#define HIGH    1
#define LOW     0

// These pin macros allow for easier manipulation of GPIO with matching
// signal names from the hardware schematic

// Port A
// NO PORT A

// Port B
#define CAP_TOUCH_POWER_PIN         PORTBbits.RB8
#define CAP_TOUCH_FUNCTION_PIN      PORTBbits.RB9
#define nDAC_SPI_SYNC_0_PIN         LATBbits.LATB11
#define nDAC_SPI_SYNC_1_PIN         LATBbits.LATB12
#define nDAC_SPI_SYNC_2_PIN         LATBbits.LATB13

// Port C
#define POSC_EC_ENABLE_PIN          LATCbits.LATC15

// Port D
#define VBAT_PGOOD_PIN              PORTDbits.RD1
#define POS20_PGOOD_PIN             PORTDbits.RD4
#define POS20_RUN_PIN               LATDbits.LATD5
#define POS3P3_PGOOD_PIN            PORTDbits.RD9
#define POS5_USB_PGOOD_PIN          PORTDbits.RD10
#define POS12_PGOOD_PIN             PORTDbits.RD11

// Port E
#define FUNCTION_TIME_LED_PIN       LATEbits.LATE0
#define FUNCTION_DATE_LED_PIN       LATEbits.LATE1
#define FUNCTION_WEEKDAY_LED_PIN    LATEbits.LATE2
#define ALARM_ARM_LED_PIN           LATEbits.LATE3
#define POS3P3_PGL_SHDN_PIN         LATEbits.LATE4
#define BUZZER_ENABLE_PIN           LATEbits.LATE5

// Port F
#define TELEMETRY_HARDSTRAP_PIN     PORTFbits.RF0
#define METER_LED_ENABLE_PIN        LATFbits.LATF1

// Port G
#define HEARTBEAT_LED_PIN           LATGbits.LATG6
#define RESET_LED_PIN               LATGbits.LATG7
#define CPU_TRAP_LED_PIN            LATGbits.LATG8
#define ERROR_LED_PIN               LATGbits.LATG9

#endif /* _PIN_MACROS_H */

/* *****************************************************************************
 End of File
 */