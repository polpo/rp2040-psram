#pragma once

#include "hardware/pio.h"
#include "hardware/gpio.h"
#include "hardware/timer.h"
#include "hardware/dma.h"
#ifdef PSRAM_SPINLOCK
#include "hardware/sync.h"
#elif defined(PSRAM_MUTEX)
#include "pico/mutex.h"
#endif
#include "stdio.h"

#include "psram_spi.pio.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct pio_spi_inst {
    PIO pio;
    uint sm;
#ifdef PSRAM_SPINLOCK
    spin_lock_t* spinlock;
#elif defined(PSRAM_MUTEX)
    mutex_t mtx;
#endif
    int write_dma_chan;
    dma_channel_config write_dma_chan_config;
    int read_dma_chan;
    dma_channel_config read_dma_chan_config;
    int async_dma_chan;
    dma_channel_config async_dma_chan_config;
} pio_spi_inst_t;

static pio_spi_inst_t* async_spi_inst;

__force_inline extern void __time_critical_func(pio_spi_write_read_blocking)(
        pio_spi_inst_t* spi,
        const uint8_t* src, const size_t src_len,
        uint8_t* dst, const size_t dst_len
) {
    size_t tx_remain = src_len, rx_remain = dst_len;

#ifdef PSRAM_SPINLOCK
    uint32_t irq_state = spin_lock_blocking(spi->spinlock);
#elif defined(PSRAM_MUTEX)
    mutex_enter_blocking(&spi->mtx); 
#endif
    /*
    // Put bits to write in X
    pio_sm_put_blocking(spi->pio, spi->sm, src_len * 8);
    // Put bits to read in Y
    pio_sm_put_blocking(spi->pio, spi->sm, dst_len * 8);
    */

    // putchar(']');
    io_rw_8 *txfifo = (io_rw_8 *) &spi->pio->txf[spi->sm];
    while (tx_remain) {
        if (!pio_sm_is_tx_fifo_full(spi->pio, spi->sm)) {
            *txfifo = *src++;
            --tx_remain;
        }
    }

    // putchar('[');
    io_rw_8 *rxfifo = (io_rw_8 *) &spi->pio->rxf[spi->sm];
    while (rx_remain) {
        if (!pio_sm_is_rx_fifo_empty(spi->pio, spi->sm)) {
            *dst++ = *rxfifo;
            --rx_remain;
        }
    }

#ifdef PSRAM_SPINLOCK
    spin_unlock(spi->spinlock, irq_state);
#elif defined(PSRAM_MUTEX)
    mutex_exit(&spi->mtx);
#endif
}

__force_inline extern void __time_critical_func(pio_spi_write_dma_blocking)(
        pio_spi_inst_t* spi,
        const uint8_t* src, const size_t src_len
) {
#ifdef PSRAM_MUTEX
    mutex_enter_blocking(&spi->mtx); 
#endif
    /*
    dma_channel_configure(
        spi->write_dma_chan,
        &spi->write_dma_chan_config,
        &spi->pio->txf[spi->sm], // Write to PIO TX FIFO
        src,
        src_len,
        true // Start immediately
    );
    */
    /*
    dma_channel_set_read_addr(spi->write_dma_chan, src, false);
    dma_channel_set_trans_count(spi->write_dma_chan, src_len, false);
    dma_channel_set_config(spi->write_dma_chan, &spi->write_dma_chan_config, true);
    */
    dma_channel_transfer_from_buffer_now(spi->write_dma_chan, src, src_len);

    dma_channel_wait_for_finish_blocking(spi->write_dma_chan);
#ifdef PSRAM_MUTEX
    mutex_exit(&spi->mtx);
#endif
}

__force_inline extern void __time_critical_func(pio_spi_write_read_dma_blocking)(
        pio_spi_inst_t* spi,
        const uint8_t* src, const size_t src_len,
        uint8_t* dst, const size_t dst_len
) {
#ifdef PSRAM_MUTEX
    mutex_enter_blocking(&spi->mtx); 
#endif
    /*
    dma_channel_configure(
        spi->write_dma_chan,
        &spi->write_dma_chan_config,
        &spi->pio->txf[spi->sm], // Write to PIO TX FIFO
        src,
        src_len,
        true // Start immediately
    );
    */
    /*
    dma_channel_set_read_addr(spi->write_dma_chan, src, false);
    dma_channel_set_trans_count(spi->write_dma_chan, src_len, false);
    dma_channel_set_config(spi->write_dma_chan, &spi->write_dma_chan_config, true);
    */
    dma_channel_transfer_from_buffer_now(spi->write_dma_chan, src, src_len);
    /*
    dma_channel_configure(
        spi->read_dma_chan,
        &spi->read_dma_chan_config,
        dst,
        &spi->pio->rxf[spi->sm], // Read from PIO RX FIFO
        dst_len,
        true // Start immediately
    );
    */
    /*
    dma_channel_set_write_addr(spi->read_dma_chan, dst, false);
    dma_channel_set_trans_count(spi->read_dma_chan, dst_len, false);
    dma_channel_set_config(spi->read_dma_chan, &spi->read_dma_chan_config, true);
    */
    dma_channel_transfer_to_buffer_now(spi->read_dma_chan, dst, dst_len);

    dma_channel_wait_for_finish_blocking(spi->write_dma_chan);
    dma_channel_wait_for_finish_blocking(spi->read_dma_chan);
#ifdef PSRAM_MUTEX
    mutex_exit(&spi->mtx);
#endif
}

#define DMA_CHANNEL 1
#define DMA_CHANNEL_MASK (1u << DMA_CHANNEL)

void __isr dma_complete_handler() {
    // putchar('.');
    // uint32_t dma_chan_mask = (1u << async_spi_inst->write_dma_chan);
    // if (dma_hw->ints0 & dma_chan_mask) {
        // clear IRQ
    dma_hw->ints1 = 1u << async_spi_inst->async_dma_chan;
    // }
    /*
    if (dma_irqn_get_channel_status(1, async_spi_inst->write_dma_chan)) {
        dma_irqn_acknowledge_channel(1, async_spi_inst->write_dma_chan);
    }
    */
#ifdef PSRAM_MUTEX
    mutex_exit(&async_spi_inst->mtx);
#endif
}

__force_inline extern void __time_critical_func(pio_spi_write_async)(
        pio_spi_inst_t* spi,
        const uint8_t* src, const size_t src_len
) {
    // putchar('-');
#ifdef PSRAM_MUTEX
    mutex_enter_blocking(&spi->mtx); 
#endif

    dma_channel_wait_for_finish_blocking(spi->async_dma_chan);
    async_spi_inst = spi;

    /*
    dma_channel_configure(
        spi->async_dma_chan,
        &spi->async_dma_chan_config,
        &spi->pio->txf[spi->sm], // Write to PIO TX FIFO
        src,
        src_len,
        true // Start immediately
    );
    */
    dma_channel_transfer_from_buffer_now(spi->async_dma_chan, src, src_len);
}


/**
 * Basic interface to SPI PSRAMs such as Espressif ESP-PSRAM64, apmemory APS6404L, IPUS IPS6404, Lyontek LY68L6400, etc.
 * NOTE that the read/write functions abuse type punning to avoid shifts and masks to be as fast as possible!
 * I'm open to suggestions that this is really dumb or insane. This is a fixed platform (arm-none-eabi-gcc) so I'm OK with it
 */
pio_spi_inst_t psram_init(void) {
    printf("add program\n");
    uint spi_offset = pio_add_program(pio1, &spi_fudge_program);
    printf("claim unused sm\n");
    uint spi_sm = pio_claim_unused_sm(pio1, true);
    pio_spi_inst_t spi;
    spi.pio = pio1;
    spi.sm = spi_sm;
#ifdef PSRAM_SPINLOCK
    int spin_id = spin_lock_claim_unused(true);
    spi.spinlock = spin_lock_init(spin_id);
#elif defined(PSRAM_MUTEX)
    mutex_init(&spi.mtx);
#endif
    printf("sm is %d\n", spi_sm);

    gpio_set_drive_strength(PSRAM_PIN_CS, GPIO_DRIVE_STRENGTH_2MA);
    gpio_set_drive_strength(PSRAM_PIN_SCK, GPIO_DRIVE_STRENGTH_2MA);
    gpio_set_drive_strength(PSRAM_PIN_MOSI, GPIO_DRIVE_STRENGTH_2MA);
    gpio_set_slew_rate(PSRAM_PIN_CS, GPIO_SLEW_RATE_FAST);
    gpio_set_slew_rate(PSRAM_PIN_SCK, GPIO_SLEW_RATE_FAST);
    gpio_set_slew_rate(PSRAM_PIN_MOSI, GPIO_SLEW_RATE_FAST);

    printf("about to init fudge\n", spi_sm);
    pio_spi_fudge_cs_init(pio1, spi_sm, spi_offset, 8 /*n_bits*/, 1 /*clkdiv*/, PSRAM_PIN_CS, PSRAM_PIN_MOSI, PSRAM_PIN_MISO);

    // SPI initialisation.
    printf("Inited SPI PIO... at sm %d\n", spi.sm);

    busy_wait_us(150);
    uint8_t psram_reset_en_cmd[] = {
        8, 0, 0x66u
    };
    pio_spi_write_read_blocking(&spi, psram_reset_en_cmd, 3, 0, 0);
    busy_wait_us(50);
    uint8_t psram_reset_cmd[] = {
        8, 0, 0x99u
    };
    pio_spi_write_read_blocking(&spi, psram_reset_cmd, 3, 0, 0);
    busy_wait_us(100);
    
    spi.write_dma_chan = dma_claim_unused_channel(true);
    spi.write_dma_chan_config = dma_channel_get_default_config(spi.write_dma_chan);
    channel_config_set_transfer_data_size(&spi.write_dma_chan_config, DMA_SIZE_8);
    channel_config_set_read_increment(&spi.write_dma_chan_config, true);
    channel_config_set_write_increment(&spi.write_dma_chan_config, false);
    channel_config_set_dreq(&spi.write_dma_chan_config, pio_get_dreq(spi.pio, spi.sm, true));
    dma_channel_set_write_addr(spi.write_dma_chan, &spi.pio->txf[spi.sm], false);
    dma_channel_set_config(spi.write_dma_chan, &spi.write_dma_chan_config, false);
    printf("write DMA chan is %d\n", spi.write_dma_chan);

    spi.read_dma_chan = dma_claim_unused_channel(true);
    spi.read_dma_chan_config = dma_channel_get_default_config(spi.read_dma_chan);
    channel_config_set_transfer_data_size(&spi.read_dma_chan_config, DMA_SIZE_8);
    channel_config_set_read_increment(&spi.read_dma_chan_config, false);
    channel_config_set_write_increment(&spi.read_dma_chan_config, true);
    channel_config_set_dreq(&spi.read_dma_chan_config, pio_get_dreq(spi.pio, spi.sm, false));
    dma_channel_set_read_addr(spi.read_dma_chan, &spi.pio->rxf[spi.sm], false);
    dma_channel_set_config(spi.read_dma_chan, &spi.read_dma_chan_config, false);
    printf("read DMA chan is %d\n", spi.read_dma_chan);

    spi.async_dma_chan = dma_claim_unused_channel(true);
    spi.async_dma_chan_config = dma_channel_get_default_config(spi.async_dma_chan);
    channel_config_set_transfer_data_size(&spi.async_dma_chan_config, DMA_SIZE_8);
    channel_config_set_read_increment(&spi.async_dma_chan_config, true);
    channel_config_set_write_increment(&spi.async_dma_chan_config, false);
    channel_config_set_dreq(&spi.async_dma_chan_config, pio_get_dreq(spi.pio, spi.sm, true));
    dma_channel_set_write_addr(spi.async_dma_chan, &spi.pio->txf[spi.sm], false);
    dma_channel_set_config(spi.async_dma_chan, &spi.async_dma_chan_config, false);
    printf("async DMA chan is %d\n", spi.async_dma_chan);
    irq_set_exclusive_handler(DMA_IRQ_1, dma_complete_handler);
    dma_irqn_set_channel_enabled(1, spi.async_dma_chan, true);
    irq_set_enabled(DMA_IRQ_1, true);

    return spi;
};

static uint8_t write8_command[] = {
    40,
    0,
    0x02u,
    0, 0, 0, 0
};
__force_inline extern void psram_write8_async(pio_spi_inst_t* spi, uint32_t addr, uint8_t val) {
    write8_command[3] = addr >> 16;
    write8_command[4] = addr >> 8;
    write8_command[5] = addr;
    write8_command[6] = val;

    pio_spi_write_async(spi, write8_command, sizeof(write8_command));
};

__force_inline extern void psram_write8(pio_spi_inst_t* spi, uint32_t addr, uint8_t val) {
    write8_command[3] = addr >> 16;
    write8_command[4] = addr >> 8;
    write8_command[5] = addr;
    write8_command[6] = val;

    pio_spi_write_dma_blocking(spi, write8_command, sizeof(write8_command));
};


static uint8_t read8_command[] = {
    40,
    8,
    0x0bu, // fast read command
    0, 0, 0, 0
};
__force_inline extern uint8_t psram_read8(pio_spi_inst_t* spi, uint32_t addr) {
    read8_command[3] = addr >> 16;
    read8_command[4] = addr >> 8;
    read8_command[5] = addr;

    uint8_t val; 
    pio_spi_write_read_dma_blocking(spi, read8_command, sizeof(read8_command), &val, 1);
    return val;
};

static uint8_t write16_command[] = {
    48,
    0,
    0x02u,
    0, 0, 0, 0, 0
};
__force_inline extern void psram_write16(pio_spi_inst_t* spi, uint32_t addr, uint16_t val) {
    write16_command[3] = addr >> 16;
    write16_command[4] = addr >> 8;
    write16_command[5] = addr;
    write16_command[6] = val;
    write16_command[7] = val >> 8;

    pio_spi_write_dma_blocking(spi, write16_command, sizeof(write16_command));
};

static uint8_t read16_command[] = {
    40,
    16,
    0x0bu, // fast read command
    0, 0, 0, 0
};
__force_inline extern uint16_t psram_read16(pio_spi_inst_t* spi, uint32_t addr) {
    read16_command[3] = addr >> 16;
    read16_command[4] = addr >> 8;
    read16_command[5] = addr;

    uint16_t val; 
    pio_spi_write_read_dma_blocking(spi, read16_command, sizeof(read16_command), (unsigned char*)&val, 2);
    return val;
};

static uint8_t write32_command[] = {
    64,
    0,
    0x02u,
    0, 0, 0, 0, 0, 0, 0
};
__force_inline extern void psram_write32(pio_spi_inst_t* spi, uint32_t addr, uint32_t val) {
    // Break the address into three bytes and send read command
    write32_command[3] = addr << 16;
    write32_command[4] = addr << 8;
    write32_command[5] = addr;
    write32_command[6] = val;
    write32_command[7] = val >> 8;
    write32_command[8] = val >> 16;
    write32_command[9] = val >> 24;

    pio_spi_write_dma_blocking(spi, write32_command, sizeof(write32_command));
};

static uint8_t read32_command[] = {
    40,
    32,
    0x0bu, // fast read command
    0, 0, 0, 0
};
__force_inline extern uint32_t psram_read32(pio_spi_inst_t* spi, uint32_t addr) {
    read32_command[3] = addr >> 16;
    read32_command[4] = addr >> 8;
    read32_command[5] = addr;

    uint32_t val;
    pio_spi_write_read_dma_blocking(spi, read32_command, sizeof(read32_command), (unsigned char*)&val, 4);
    return val;
};

#ifdef __cplusplus
}
#endif
