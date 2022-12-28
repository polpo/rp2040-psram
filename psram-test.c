#include <stdio.h>

#include <pico/stdlib.h>


#include "psram_spi.h"
pio_spi_inst_t psram_spi;
// UART_TX_PIN is defined in isa_io.pio.h

int main()
{
    // Overclock!
    set_sys_clock_khz(280000, true);

    stdio_init_all();
    
    puts("PSRAM test");

    puts("Initing PSRAM...");
    psram_spi = psram_init();

    puts("Writing PSRAM...");
    uint32_t psram_begin = time_us_32();
    uint8_t deadbeef[8] = {0xd, 0xe, 0xa, 0xd, 0xb, 0xe, 0xe, 0xf};
    for (uint32_t addr = 0; addr < (8 * 1024 * 1024); ++addr) {
        psram_write8(&psram_spi, addr, (addr & 0xFF));
        /* psram_write8_async(&psram_spi, addr, (addr & 0xFF)); */
    }
    uint32_t psram_elapsed = time_us_32() - psram_begin;
    float psram_speed = 1000000.0 * 8 * 1024.0 * 1024 / psram_elapsed;
    printf("8 bit: PSRAM write 8MB in %d us, %d B/s\n", psram_elapsed, (uint32_t)psram_speed);

    puts("Reading PSRAM...");
    psram_begin = time_us_32();
    for (uint32_t addr = 0; addr < (8 * 1024 * 1024); ++addr) {
        uint8_t result = psram_read8(&psram_spi, addr);
        // printf("%x", result);
        if ((uint8_t)(addr & 0xFF) != result) {
            printf("\nPSRAM failure at address %x (%x != %x)\n", addr, addr & 0xFF, result);
            // err_blink();
            return 1;
        }
    }
    psram_elapsed = time_us_32() - psram_begin;
    psram_speed = 1000000.0 * 8 * 1024.0 * 1024 / psram_elapsed;
    printf("8 bit: PSRAM read 8MB in %d us, %d B/s\n", psram_elapsed, (uint32_t)psram_speed);

    psram_begin = time_us_32();
    for (uint32_t addr = 0; addr < (8 * 1024 * 1024); addr += 2) {
        uint16_t result = psram_read16(&psram_spi, addr);
        if ((uint16_t)(
                (((addr + 1) & 0xFF) << 8) |
                (addr & 0XFF)) != result
        ) {
            printf("PSRAM failure at address %x (%x != %x) ", addr, addr & 0xFF, result & 0xFF);
            // err_blink();
            return 1;
        }
    }
    psram_elapsed = (time_us_32() - psram_begin);
    psram_speed = 1000000.0 * 8 * 1024 * 1024 / psram_elapsed;
    printf("16 bit: PSRAM read 8MB in %d us, %d B/s\n", psram_elapsed, (uint32_t)psram_speed);

    psram_begin = time_us_32();
    for (uint32_t addr = 0; addr < (8 * 1024 * 1024); addr += 4) {
        uint32_t result = psram_read32(&psram_spi, addr);
        if ((uint32_t)(
                (((addr + 3) & 0xFF) << 24) |
                (((addr + 2) & 0xFF) << 16) |
                (((addr + 1) & 0xFF) << 8)  |
                (addr & 0XFF)) != result
        ) {
            printf("PSRAM failure at address %x (%x != %x) ", addr, addr & 0xFF, result & 0xFF);
            // err_blink();
            return 1;
        }
    }
    psram_elapsed = (time_us_32() - psram_begin);
    psram_speed = 1000000.0 * 8 * 1024 * 1024 / psram_elapsed;
    printf("32 bit: PSRAM read 8MB in %d us, %d B/s\n", psram_elapsed, (uint32_t)psram_speed);

}
