# rp2040-psram

A header-only library to allow access to SPI PSRAM via PIO on the RP2040 microcontroller as used on the Raspberry Pi Pico. Due to the timing requirements of these PSRAM devices, reading data from them at high speed (>84MHz) requires the following clock behavior:

- Read data needs to be sampled on the clock falling edge.
- An extra "fudge factor" clock cycle is required before reading data.

I could not get the hardware SPI interface on the RP2040 to work at high speed with this behavior, so I created a PIO SPI implementation specifically tailored to the behavior of the PSRAM chips and optimized for the highest speed possible:

- A read or write command is given, followed by an optional read of data.
- Chip select is driven by PIO.
- DMA is used so CPU cycles are not used to service the PIO TX and RX FIFOs.
- Special optimized functions are provided for writing 8, 16, and 32 bit data as fast as possible.
- All functions are tagged with `__force_inline` for the fastest speed possible.

Tested PSRAM chips:

- apmemory APS6404L
- Lyontek LY68L6400
- IPUS IPS6404
- Espressif ESP-PSRAM64H

## Examples

An example that tests the PSRAM by writing and reading 8MB of data with 8, 16, 32, and 128 bit access sizes is included in the `examples/` directory.

## Using this library

### Including in the build

Clone this repository and copy to a subdirectory or add as a submodule in your project. In your project's `CMakeLists.txt` file, add the following:

```
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/rp2040-psram rp2040-psram)
```

And then add `rp2040-psram` to your project's `target_link_libraries`.

### Using in your code

Include `psram_spi.h` in your file. See the documentation for this file for how to initialize and use this library.

## Projects that use rp2040-psram

[PicoGUS](https://github.com/polpo/picogus) - uses PSRAM to emulate the Gravis Ultrasound's 1MB sample RAM
