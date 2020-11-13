
#include "spi_dac.h"

// Function to set GPIO pins for ~SYNC
void spiDACGPIOSet(void) {
 
    switch (spi_dac_state) {
        
        case spi_dac0_write_state:
            nDAC_SPI_SYNC_0_PIN = LOW;
            break;
            
        case spi_dac1_write_state:
            nDAC_SPI_SYNC_1_PIN = LOW;
            break;
            
        case spi_dac2_write_state:
            nDAC_SPI_SYNC_2_PIN = LOW;
            break;
        
    }
    
}

// Function to reset GPIO pins for ~SYNC
void spiDACGPIOReset(void) {
 
    nDAC_SPI_SYNC_0_PIN = 1;
    nDAC_SPI_SYNC_1_PIN = 1;
    nDAC_SPI_SYNC_2_PIN = 1;
    
}

// this function writes three bytes (spi_dac_data) to the passed spi dac
// can pass 0, 1 or 2, which correspond to the three DACs on the platform
void spiDACUpdate(uint8_t destination_dac, double voltage) {
 
    spi_dac_state = destination_dac;
    spiDACGPIOSet();
    
    uint16_t output_voltage_encoding = (voltage / 20.48) * 0xFFFF;
    
    spi_dac_data[0] = 0x00;
    spi_dac_data[1] = (uint8_t) (output_voltage_encoding >> 8) & 0xFF;
    spi_dac_data[2] = (uint8_t) output_voltage_encoding & 0xFF;
    
    spiMasterWriteByte(spi_dac_data[0]);
    while(spiMasterIsBusy());
    spiMasterWriteByte(spi_dac_data[1]);
    while(spiMasterIsBusy());
    spiMasterWriteByte(spi_dac_data[2]);
    while(spiMasterIsBusy());
    
    spiDACGPIOReset();
    
    spi_dac_state = spi_dac_idle_state;
    
}

// this function writes three bytes (spi_dac_data) to the passed spi dac
// can pass 0, 1 or 2, which correspond to the three DACs on the platform
// it powers down the DAC
void spiDACPowerDown(uint8_t destination_dac) {
 
    spi_dac_state = destination_dac;
    spiDACGPIOSet();
    
    spi_dac_data[0] = 0x02;
    spi_dac_data[1] = 0x00;
    spi_dac_data[2] = 0x00;
    
    spiMasterWriteByte(spi_dac_data[0]);
    while(spiMasterIsBusy());
    spiMasterWriteByte(spi_dac_data[1]);
    while(spiMasterIsBusy());
    spiMasterWriteByte(spi_dac_data[2]);
    while(spiMasterIsBusy());
    
    spiDACGPIOReset();
    
    spi_dac_state = spi_dac_idle_state;
    
}