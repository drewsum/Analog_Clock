/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _SPI_MASTER_H    /* Guard against multiple inclusion */
#define _SPI_MASTER_H

#include <stdbool.h>

#include <sys/attribs.h>

// Function to initialize SPI
void spiMasterInit(void);

// Function to set GPIO pins for ~CE/~SS
void spiMasterGPIOSet(void);

// Function to reset GPIO pins for ~CE/~SS
void spiMasterGPIOReset(void);

// Function to print status
void printSPIMasterStatus(void);

// SPI3 Fault interrupt service routine
void __ISR(_SPI3_FAULT_VECTOR, ipl1SRS) spi3FaultISR(void);

// SPI3 Receive Done interrupt service routine
void __ISR(_SPI3_RX_VECTOR, ipl2SRS) spi3ReceiveISR(void);

//SPI3 Transfer Done interrupt service routine
void __ISR(_SPI3_TX_VECTOR, ipl2SRS) spi3TransferISR(void);

// Function to write single byte to transmit FIFO
void spiMasterWriteByte(uint8_t write_byte);

// Function to read single byte from receive FIFO
uint8_t spiMasterReadByte(void);

// this function returns if the spi master module is busy or not
bool spiMasterIsBusy(void);


#endif /* _SPI_MASTER_H */

/* *****************************************************************************
 End of File
 */
