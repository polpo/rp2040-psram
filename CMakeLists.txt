# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)

# Initialise pico_sdk from installed location
# (note this can come from environment, CMake cache etc)
set(PICO_SDK_PATH "${CMAKE_SOURCE_DIR}/../pico/pico-sdk")

# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)

project(psram-test C CXX ASM)

# set(PICO_DEOPTIMIZED_DEBUG "1")
set(CMAKE_BUILD_TYPE "Release")
set(PICO_COPY_TO_RAM 1)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# Add executable. Default name is the project name, version 0.1
add_executable(psram-test psram-test.c)
pico_set_program_version(psram-test "1.0.0")

add_compile_definitions(
    PICO_DEFAULT_UART=0
    PICO_DEFAULT_UART_TX_PIN=0
    PICO_DEFAULT_UART_RX_PIN=-1
)

# CE 9
# SCK 10
# SI/SIO0 11
# SO/SIO1 12
# SIO2 13
# SIO3 14
target_compile_definitions(psram-test PRIVATE
    PSRAM_MUTEX=1
    # PSRAM_SPINLOCK=1
    PSRAM_PIN_CS=9
    PSRAM_PIN_SCK=10
    PSRAM_PIN_MOSI=11
    PSRAM_PIN_MISO=12
    PSRAM_PIN_SIO2=13
    PSRAM_PIN_SIO3=14
)

pico_generate_pio_header(psram-test ${CMAKE_CURRENT_LIST_DIR}/psram_spi.pio)

target_link_libraries(
    psram-test
    pico_stdlib
    hardware_pio
    hardware_dma
    hardware_pll
)

pico_add_extra_outputs(psram-test)

add_custom_target(
    program
    DEPENDS psram-test
    COMMAND openocd -f interface/picoprobe.cfg -f target/rp2040.cfg -c "program psram-test.elf verify reset exit"
)
