
# Consider dependencies only in project.
set(CMAKE_DEPENDS_IN_PROJECT_ONLY OFF)

# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "ASM"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_ASM
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_divider/divider.S" "/Users/ian/src/rp2040-psram/examples/build/CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_divider/divider.S.obj"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_irq/irq_handler_chain.S" "/Users/ian/src/rp2040-psram/examples/build/CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_irq/irq_handler_chain.S.obj"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_bit_ops/bit_ops_aeabi.S" "/Users/ian/src/rp2040-psram/examples/build/CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_bit_ops/bit_ops_aeabi.S.obj"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_divider/divider.S" "/Users/ian/src/rp2040-psram/examples/build/CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_divider/divider.S.obj"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/double_aeabi.S" "/Users/ian/src/rp2040-psram/examples/build/CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/double_aeabi.S.obj"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/double_v1_rom_shim.S" "/Users/ian/src/rp2040-psram/examples/build/CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/double_v1_rom_shim.S.obj"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/float_aeabi.S" "/Users/ian/src/rp2040-psram/examples/build/CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/float_aeabi.S.obj"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/float_v1_rom_shim.S" "/Users/ian/src/rp2040-psram/examples/build/CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/float_v1_rom_shim.S.obj"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_int64_ops/pico_int64_ops_aeabi.S" "/Users/ian/src/rp2040-psram/examples/build/CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_int64_ops/pico_int64_ops_aeabi.S.obj"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_mem_ops/mem_ops_aeabi.S" "/Users/ian/src/rp2040-psram/examples/build/CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_mem_ops/mem_ops_aeabi.S.obj"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_standard_link/crt0.S" "/Users/ian/src/rp2040-psram/examples/build/CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_standard_link/crt0.S.obj"
  )
set(CMAKE_ASM_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS_ASM
  "LIB_PICO_BIT_OPS=1"
  "LIB_PICO_BIT_OPS_PICO=1"
  "LIB_PICO_DIVIDER=1"
  "LIB_PICO_DIVIDER_HARDWARE=1"
  "LIB_PICO_DOUBLE=1"
  "LIB_PICO_DOUBLE_PICO=1"
  "LIB_PICO_FLOAT=1"
  "LIB_PICO_FLOAT_PICO=1"
  "LIB_PICO_INT64_OPS=1"
  "LIB_PICO_INT64_OPS_PICO=1"
  "LIB_PICO_MALLOC=1"
  "LIB_PICO_MEM_OPS=1"
  "LIB_PICO_MEM_OPS_PICO=1"
  "LIB_PICO_PLATFORM=1"
  "LIB_PICO_PRINTF=1"
  "LIB_PICO_PRINTF_PICO=1"
  "LIB_PICO_RUNTIME=1"
  "LIB_PICO_STANDARD_LINK=1"
  "LIB_PICO_STDIO=1"
  "LIB_PICO_STDIO_UART=1"
  "LIB_PICO_STDLIB=1"
  "LIB_PICO_SYNC=1"
  "LIB_PICO_SYNC_CORE=1"
  "LIB_PICO_SYNC_CRITICAL_SECTION=1"
  "LIB_PICO_SYNC_MUTEX=1"
  "LIB_PICO_SYNC_SEM=1"
  "LIB_PICO_TIME=1"
  "LIB_PICO_UTIL=1"
  "PICO_BOARD=\"pico\""
  "PICO_BUILD=1"
  "PICO_CMAKE_BUILD_TYPE=\"Release\""
  "PICO_COPY_TO_RAM=1"
  "PICO_CXX_ENABLE_EXCEPTIONS=0"
  "PICO_DEFAULT_UART=0"
  "PICO_DEFAULT_UART_RX_PIN=-1"
  "PICO_DEFAULT_UART_TX_PIN=0"
  "PICO_NO_FLASH=0"
  "PICO_NO_HARDWARE=0"
  "PICO_ON_DEVICE=1"
  "PICO_PROGRAM_VERSION_STRING=\"1.0.0\""
  "PICO_TARGET_NAME=\"psram-test\""
  "PICO_USE_BLOCKED_RAM=0"
  "PSRAM_MUTEX=1"
  "PSRAM_PIN_CS=9"
  "PSRAM_PIN_MISO=12"
  "PSRAM_PIN_MOSI=11"
  "PSRAM_PIN_SCK=10"
  "PSRAM_PIN_SIO2=13"
  "PSRAM_PIN_SIO3=14"
  )

# The include file search paths:
set(CMAKE_ASM_TARGET_INCLUDE_PATH
  "/Users/ian/src/rp2040-psram"
  "rp2040-psram"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_stdlib/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_gpio/include"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_base/include"
  "generated/pico_base"
  "/Users/ian/src/pico/pico-sdk/src/boards/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_platform/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2040/hardware_regs/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_base/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2040/hardware_structs/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_claim/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_sync/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_irq/include"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_sync/include"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_time/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_timer/include"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_util/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_uart/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_divider/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_runtime/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_clocks/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_resets/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pll/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_vreg/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_watchdog/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_xosc/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_printf/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_bootrom/include"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_bit_ops/include"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_divider/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_int64_ops/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_malloc/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/boot_stage2/include"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_binary_info/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio_uart/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pio/include"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_dma/include"
  )

# The set of dependency files which are needed:
set(CMAKE_DEPENDS_DEPENDENCY_FILES
  "/Users/ian/src/pico/pico-sdk/src/common/pico_sync/critical_section.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_sync/critical_section.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_sync/critical_section.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_sync/lock_core.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_sync/lock_core.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_sync/lock_core.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_sync/mutex.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_sync/mutex.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_sync/mutex.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_sync/sem.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_sync/sem.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_sync/sem.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_time/time.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_time/time.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_time/time.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_time/timeout_helper.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_time/timeout_helper.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_time/timeout_helper.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_util/datetime.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_util/datetime.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_util/datetime.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_util/pheap.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_util/pheap.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_util/pheap.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/common/pico_util/queue.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_util/queue.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/common/pico_util/queue.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_claim/claim.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_claim/claim.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_claim/claim.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_clocks/clocks.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_clocks/clocks.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_clocks/clocks.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_dma/dma.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_dma/dma.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_dma/dma.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_gpio/gpio.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_gpio/gpio.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_gpio/gpio.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_irq/irq.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_irq/irq.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_irq/irq.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pio/pio.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pio/pio.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pio/pio.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pll/pll.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pll/pll.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_pll/pll.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_sync/sync.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_sync/sync.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_sync/sync.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_timer/timer.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_timer/timer.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_timer/timer.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_uart/uart.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_uart/uart.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_uart/uart.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_vreg/vreg.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_vreg/vreg.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_vreg/vreg.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_watchdog/watchdog.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_watchdog/watchdog.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_watchdog/watchdog.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_xosc/xosc.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_xosc/xosc.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/hardware_xosc/xosc.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_bootrom/bootrom.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_bootrom/bootrom.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_bootrom/bootrom.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/double_init_rom.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/double_init_rom.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/double_init_rom.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/double_math.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/double_math.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_double/double_math.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/float_init_rom.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/float_init_rom.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/float_init_rom.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/float_math.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/float_math.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_float/float_math.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_malloc/pico_malloc.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_malloc/pico_malloc.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_malloc/pico_malloc.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_platform/platform.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_platform/platform.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_platform/platform.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_printf/printf.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_printf/printf.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_printf/printf.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_runtime/runtime.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_runtime/runtime.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_runtime/runtime.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_standard_link/binary_info.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio/stdio.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio/stdio.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio/stdio.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio_uart/stdio_uart.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio_uart/stdio_uart.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdio_uart/stdio_uart.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdlib/stdlib.c" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdlib/stdlib.c.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_stdlib/stdlib.c.obj.d"
  "/Users/ian/src/rp2040-psram/examples/psram-test.c" "CMakeFiles/psram-test.dir/psram-test.c.obj" "gcc" "CMakeFiles/psram-test.dir/psram-test.c.obj.d"
  "/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_standard_link/new_delete.cpp" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_standard_link/new_delete.cpp.obj" "gcc" "CMakeFiles/psram-test.dir/Users/ian/src/pico/pico-sdk/src/rp2_common/pico_standard_link/new_delete.cpp.obj.d"
  )

# Targets to which this target links.
set(CMAKE_TARGET_LINKED_INFO_FILES
  )

# Fortran module output directory.
set(CMAKE_Fortran_TARGET_MODULE_DIR "")