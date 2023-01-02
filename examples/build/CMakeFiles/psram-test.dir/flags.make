# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# compile ASM with /opt/local/bin/arm-none-eabi-gcc
# compile C with /opt/local/bin/arm-none-eabi-gcc
# compile CXX with /opt/local/bin/arm-none-eabi-g++
ASM_DEFINES = -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_UART=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Release\" -DPICO_COPY_TO_RAM=1 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_DEFAULT_UART=0 -DPICO_DEFAULT_UART_RX_PIN=-1 -DPICO_DEFAULT_UART_TX_PIN=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PROGRAM_VERSION_STRING=\"1.0.0\" -DPICO_TARGET_NAME=\"psram-test\" -DPICO_USE_BLOCKED_RAM=0 -DPSRAM_MUTEX=1 -DPSRAM_PIN_CS=9 -DPSRAM_PIN_MISO=12 -DPSRAM_PIN_MOSI=11 -DPSRAM_PIN_SCK=10 -DPSRAM_PIN_SIO2=13 -DPSRAM_PIN_SIO3=14

ASM_INCLUDES = -I/Users/ian/src/rp2040-psram -I/Users/ian/src/rp2040-psram/examples/build/rp2040-psram -I/Users/ian/src/pico/pico-sdk/src/common/pico_stdlib/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_gpio/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_base/include -I/Users/ian/src/rp2040-psram/examples/build/generated/pico_base -I/Users/ian/src/pico/pico-sdk/src/boards/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_platform/include -I/Users/ian/src/pico/pico-sdk/src/rp2040/hardware_regs/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_base/include -I/Users/ian/src/pico/pico-sdk/src/rp2040/hardware_structs/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_claim/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_sync/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_irq/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_sync/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_time/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_timer/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_util/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_uart/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_divider/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_runtime/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_clocks/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_resets/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pll/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_vreg/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_watchdog/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_xosc/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_printf/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_bootrom/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_bit_ops/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_divider/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_int64_ops/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_malloc/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/boot_stage2/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_binary_info/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio_uart/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pio/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_dma/include

ASM_FLAGS = -mcpu=cortex-m0plus -mthumb -O3 -DNDEBUG -ffunction-sections -fdata-sections

C_DEFINES = -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_UART=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Release\" -DPICO_COPY_TO_RAM=1 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_DEFAULT_UART=0 -DPICO_DEFAULT_UART_RX_PIN=-1 -DPICO_DEFAULT_UART_TX_PIN=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PROGRAM_VERSION_STRING=\"1.0.0\" -DPICO_TARGET_NAME=\"psram-test\" -DPICO_USE_BLOCKED_RAM=0 -DPSRAM_MUTEX=1 -DPSRAM_PIN_CS=9 -DPSRAM_PIN_MISO=12 -DPSRAM_PIN_MOSI=11 -DPSRAM_PIN_SCK=10 -DPSRAM_PIN_SIO2=13 -DPSRAM_PIN_SIO3=14

C_INCLUDES = -I/Users/ian/src/rp2040-psram -I/Users/ian/src/rp2040-psram/examples/build/rp2040-psram -I/Users/ian/src/pico/pico-sdk/src/common/pico_stdlib/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_gpio/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_base/include -I/Users/ian/src/rp2040-psram/examples/build/generated/pico_base -I/Users/ian/src/pico/pico-sdk/src/boards/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_platform/include -I/Users/ian/src/pico/pico-sdk/src/rp2040/hardware_regs/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_base/include -I/Users/ian/src/pico/pico-sdk/src/rp2040/hardware_structs/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_claim/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_sync/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_irq/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_sync/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_time/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_timer/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_util/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_uart/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_divider/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_runtime/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_clocks/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_resets/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pll/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_vreg/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_watchdog/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_xosc/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_printf/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_bootrom/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_bit_ops/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_divider/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_int64_ops/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_malloc/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/boot_stage2/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_binary_info/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio_uart/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pio/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_dma/include

C_FLAGS = -mcpu=cortex-m0plus -mthumb -O3 -DNDEBUG -ffunction-sections -fdata-sections -std=gnu11

CXX_DEFINES = -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_UART=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Release\" -DPICO_COPY_TO_RAM=1 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_DEFAULT_UART=0 -DPICO_DEFAULT_UART_RX_PIN=-1 -DPICO_DEFAULT_UART_TX_PIN=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PROGRAM_VERSION_STRING=\"1.0.0\" -DPICO_TARGET_NAME=\"psram-test\" -DPICO_USE_BLOCKED_RAM=0 -DPSRAM_MUTEX=1 -DPSRAM_PIN_CS=9 -DPSRAM_PIN_MISO=12 -DPSRAM_PIN_MOSI=11 -DPSRAM_PIN_SCK=10 -DPSRAM_PIN_SIO2=13 -DPSRAM_PIN_SIO3=14

CXX_INCLUDES = -I/Users/ian/src/rp2040-psram -I/Users/ian/src/rp2040-psram/examples/build/rp2040-psram -I/Users/ian/src/pico/pico-sdk/src/common/pico_stdlib/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_gpio/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_base/include -I/Users/ian/src/rp2040-psram/examples/build/generated/pico_base -I/Users/ian/src/pico/pico-sdk/src/boards/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_platform/include -I/Users/ian/src/pico/pico-sdk/src/rp2040/hardware_regs/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_base/include -I/Users/ian/src/pico/pico-sdk/src/rp2040/hardware_structs/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_claim/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_sync/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_irq/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_sync/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_time/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_timer/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_util/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_uart/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_divider/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_runtime/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_clocks/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_resets/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pll/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_vreg/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_watchdog/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_xosc/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_printf/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_bootrom/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_bit_ops/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_divider/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_int64_ops/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_malloc/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/boot_stage2/include -I/Users/ian/src/pico/pico-sdk/src/common/pico_binary_info/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio_uart/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pio/include -I/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_dma/include

CXX_FLAGS = -mcpu=cortex-m0plus -mthumb -O3 -DNDEBUG -ffunction-sections -fdata-sections -fno-exceptions -fno-unwind-tables -fno-rtti -fno-use-cxa-atexit

