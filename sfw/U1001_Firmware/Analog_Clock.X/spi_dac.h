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

#ifndef _SPI_DAC_H    /* Guard against multiple inclusion */
#define _SPI_DAC_H

#include <xc.h>

#include "pin_macros.h"
#include "spi_master.h"

// enumerate SPI dac state type
enum spi_dac_state_t {

    spi_dac0_write_state = 0,
    spi_dac1_write_state = 1,
    spi_dac2_write_state = 2,
    spi_dac_idle_state = 3
    
} spi_dac_state;

// this array handles data to write to any given SPI dac
uint8_t spi_dac_data[3];

// Function to set GPIO pins for ~SYNC
void spiDACGPIOSet(void);

// Function to reset GPIO pins for ~SYNC
void spiDACGPIOReset(void);

// this function writes three bytes (spi_dac_data) to the passed spi dac
// can pass 0, 1 or 2
void spiDACUpdate(uint8_t destination_dac, double voltage);

// this function writes three bytes (spi_dac_data) to the passed spi dac
// can pass 0, 1 or 2, which correspond to the three DACs on the platform
// it powers down the DAC
void spiDACPowerDown(uint8_t destination_dac);

#endif /* _SPI_DAC_H */

/* *****************************************************************************
 End of File
 */
