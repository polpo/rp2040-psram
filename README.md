# rp2040-psram

A header-only library to allow access to SPI PSRAM via PIO on the RP2040 microcontroller as used on the Raspberry Pi Pico. Due to the timing requirements of these PSRAM devices, reading data from them at high speed (>84MHz) requires the following clock behavior:

- Read data needs to be sampled on the clock falling edge.
- An extra "fudge factor" clock cycle is required before reading data.

I could not get the hardware SPI interface on the RP2040 to work at high speed with this behavior, so I created a PIO SPI implementation specifically tailored to the behavior of the PSRAM chips and optimized for the highest speed possible:

- A read or write command is given, followed by an optional read of data.
- Chip select is driven by PIO.
- DMA is used so CPU cycles are not used to service the PIO TX and RX FIFOs.
- Special optimized functions are provided for writing 8, 16, and 32 bit data as fast as possible.

Tested PSRAM chips:

- apmemory APS6404L
- Lyontek LY68L6400
- IPUS IPS6404
- Espressif ESP-PSRAM64H

## Projects that use rp2040-psram

[PicoGUS](https://github.com/polpo/picogus) - uses PSRAM to emulate the Gravis Ultrasound's 1MB sample RAM
