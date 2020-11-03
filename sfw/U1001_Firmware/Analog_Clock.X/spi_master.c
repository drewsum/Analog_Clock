#include <xc.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#include "terminal_control.h"
#include "spi_master.h"
#include "32mz_interrupt_control.h"
#include "error_handler.h"
#include "pin_macros.h"
#include "device_control.h"
#include "usb_uart.h"

// Function to initialize SPI
void spiMasterInit(void)
{
    
    // Disable SPI3 Fault interrupt
    disableInterrupt(SPI3_Fault);
    setInterruptPriority(SPI3_Fault, 1);
    setInterruptSubpriority(SPI3_Fault, 2);
    clearInterruptFlag(SPI3_Fault);
    
    // Disable SPI3 Receive Done Interrupt
    disableInterrupt(SPI3_Receive_Done);
    setInterruptPriority(SPI3_Receive_Done, 2);
    setInterruptSubpriority(SPI3_Receive_Done, 3);
    clearInterruptFlag(SPI3_Receive_Done);
    
    // Disable SPI3 Transfer Done Interrupt
    disableInterrupt(SPI3_Transfer_Done);    
    setInterruptPriority(SPI3_Transfer_Done, 2);
    setInterruptSubpriority(SPI3_Transfer_Done, 2);
    clearInterruptFlag(SPI3_Transfer_Done);
       
    // Turn off module before configuration
    SPI3CONbits.ON = 0;         
    SPI3BUF = 0;                
    SPI3CONbits.ENHBUF = 0;     // Disable enhanced buffer
    SPI3BRG = 2;                // Baud Rate configuration
    SPI3STATbits.SPIROV = 0;    
    SPI3CONbits.MSTEN = 1;      // Master mode
    
    // Configure SPI3 registers
    SPI3CONbits.FRMEN = 0;      // Framed SPI support is disabled
    SPI3CONbits.MSSEN = 0;      // Disable slave select SPI support
    SPI3CONbits.FRMSYPW = 0;    // Set frame sync pulse as one word length wide <1> or one clock wide <0>
    SPI3CONbits.MCLKSEL = 0;    // PBCLK is used
    SPI3CONbits.SIDL = 0;       // Continue operation in IDLE mode
    SPI3CONbits.DISSDO = 0;     // SDO3 pin is controlled by module
    SPI3CONbits.MODE16 = 0;     // 16 bit mode disabled
    SPI3CONbits.MODE32 = 0;     // 32 bit mode disabled
    SPI3CONbits.SMP = 1;        // Input data sampled at the end of data output time
    SPI3CONbits.CKE = 0;        // Output data changes on clock rising edge
    SPI3CONbits.SSEN = 0;       // Slave Select pin is controlled by PORT 
    SPI3CONbits.CKP = 0;        // Idle state for clock is low, active state is high
    SPI3CONbits.DISSDI = 1;     // SDI3 pin is controlled by module
    SPI3CONbits.STXISEL = 0b01; // Interrupt is generated when buffer is empty
    SPI3CONbits.SRXISEL = 0b01; // Interrupt is generated when buffer is not empty
    SPI3CON2bits.AUDEN = 0;     // Disable audio mode
    // SPI3CON2bits.SPITUREN = 1;  // Transmit underrun triggers a fault interrupt
    SPI3CON2bits.SPITUREN = 0;  // Transmit underrun does not trigger a fault interrupt
    SPI3CON2bits.SPIROVEN = 0;  // Receive overflow doesn't cause an fault interrupt
    
    SPI3CON2bits.IGNROV = 1;    // Receive overflow does not stop SPI operation
    SPI3CON2bits.IGNTUR = 1;    // Transfer overflow does not stop SPI operation
    
    // Configure bits for Framed Mode ONLY
    SPI3CONbits.FRMSYNC = 0;  
    SPI3CONbits.FRMPOL = 0;  
    SPI3CONbits.FRMCNT = 0;   
    SPI3CONbits.SPIFE = 0;
    
    // Turn on module after configuration
    SPI3CONbits.ON = 1;
       
    enableInterrupt(SPI3_Fault);
    
}

// Function to print status
void printSPIMasterStatus(void) {
    
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("SPI Master Status:\n\r");
    
    if (SPI3CONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    SPI Master Module is %s\n\r",
            SPI3CONbits.ON ? "On" : "Off");
    
    if (SPI3CONbits.FRMEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    SPI Frame Support %s\n\r",
            SPI3CONbits.FRMEN ? "Enabled" : "Disabled");

    if (SPI3CONbits.MSSEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Slave Select Support %s\n\r",
            SPI3CONbits.MSSEN ? "Enabled" : "Disabled");
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Frame Sync Pulse Width %s\n\r",
            SPI3CONbits.FRMSYPW ? "Word" : "Clock");
    printf("    Master Clock Select %s\n\r",
            SPI3CONbits.MCLKSEL ? "MCLK" : "PBCLK");
    
    if (SPI3CONbits.ENHBUF) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Enhanced Buffer Support %s\n\r",
            SPI3CONbits.ENHBUF ? "Enabled" : "Disabled");
    
    if (SPI3CONbits.SIDL) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Stop in Idle Mode %s\n\r",
            SPI3CONbits.SIDL ? "Discontinue" : "Continue");
        
    if (SPI3CONbits.DISSDO) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Module SDOx Pin Control %s\n\r",
            SPI3CONbits.DISSDO ? "Disabled" : "Enabled");
    
    if (SPI3CONbits.MODE16) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    16 Bit Communication %s\n\r",
            SPI3CONbits.MODE16 ? "Enabled" : "Disabled");
    
    if (SPI3CONbits.MODE32) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    32 Bit Communication %s\n\r",
            SPI3CONbits.MODE32 ? "Enabled" : "Disabled");
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Input Sample Phase %s\n\r",
            SPI3CONbits.SMP ? "End of Data" : "Middle of Data");
    printf("    Clock Edge Select %s\n\r",
            SPI3CONbits.CKE ? "Falling Edge" : "Rising Edge");
    
    if (SPI3CONbits.SSEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Slave Select Enable %s\n\r",
            SPI3CONbits.SSEN ? "Enabled" : "Disabled");
    
    if (SPI3CONbits.CKP) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Clock Polarity %s\n\r",
            SPI3CONbits.CKP ? "Inverted" : "Standard");
    
    if (SPI3CONbits.MSTEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Master Mode is %s\n\r",
            SPI3CONbits.MSTEN ? "Enabled" : "Disabled");
    
    if (SPI3CONbits.DISSDI) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Module SDIx Pin Control %s\n\r",
            SPI3CONbits.DISSDI ? "Disabled" : "Enabled");
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Transmit Buffer Interrupt: ");
    
    switch (SPI3CONbits.STXISEL) {
     
        case 0b00:
            printf("When transmit operations are complete\n\r");
            break;
            
        case 0b01:
            printf("When buffer is completely empty\n\r");
            break;
            
        case 0b10:
            printf("When buffer is less than half empty\n\r");
            break;
    
        case 0b11:
            printf("When the buffer is not full\n\r");
            break;
            
    }
    
    
    printf("    Receive Buffer Interrupt: ");
    
    switch (SPI3CONbits.SRXISEL) {
     
        case 0b00:
            printf("When last word in receive buffer is read\n\r");
            break;
            
        case 0b01:
            printf("When buffer is not empty\n\r");
            break;
            
        case 0b10:
            printf("When buffer is at least half full\n\r");
            break;
    
        case 0b11:
            printf("When buffer is full\n\r");
            break;
            
    }
        
    printf("    SPIBRG: %d\n\r", SPI3BRG);
    
    terminalTextAttributesReset();
}

// SPI3 Fault interrupt service routine
void __ISR(_SPI3_FAULT_VECTOR, ipl1SRS) spi3FaultISR(void) {
    
    // Record a SPI error
    error_handler.flags.spi_master = 1;
    
//    if (SPI3STATbits.SPIROV) {
//        error_handler.SPI_receive_overflow_error_flag = 1;
//        SPI3STATbits.SPIROV = 0;
//    }
//    
//    if (SPI3STATbits.SPITUR) {
//        error_handler.SPI_transfer_underrun_error_flag = 1;
//        SPI3STATbits.SPITUR = 0;
//    }
    
    // Disable SPI interrupts
    disableInterrupt(SPI3_Transfer_Done);
    disableInterrupt(SPI3_Receive_Done);
    
    // Clear interrupt flag after ISR
    clearInterruptFlag(SPI3_Fault);
}

// SPI3 Receive Done interrupt service routine
void __ISR(_SPI3_RX_VECTOR, ipl2SRS) spi3ReceiveISR(void) {
    
    
    
    // Clear interrupt flag after ISR
    clearInterruptFlag(SPI3_Receive_Done);
    clearInterruptFlag(SPI3_Transfer_Done);
    
}

//SPI3 Transfer Done interrupt service routine
void __ISR(_SPI3_TX_VECTOR, ipl2SRS) spi3TransferISR(void) {

    
    // Clear interrupt flag after ISR
    clearInterruptFlag(SPI3_Receive_Done);
    clearInterruptFlag(SPI3_Transfer_Done);

}

// Function to write single byte to transmit FIFO
inline void spiMasterWriteByte(uint8_t write_byte) {
    
    SPI3BUF = write_byte;
    
}


// Function to read single byte from receive FIFO
inline uint8_t spiMasterReadByte(void) {
    
    return SPI3BUF;
    
}

// this function returns if the spi master module is busy or not
bool spiMasterIsBusy(void) {
 
    if (SPI3STATbits.SPIBUSY) return true;
    else return false;
    
}