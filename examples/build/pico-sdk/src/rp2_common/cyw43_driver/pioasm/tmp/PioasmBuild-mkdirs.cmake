# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/ian/src/pico/pico-sdk/tools/pioasm"
  "/Users/ian/src/rp2040-psram/examples/build/pioasm"
  "/Users/ian/src/rp2040-psram/examples/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm"
  "/Users/ian/src/rp2040-psram/examples/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/tmp"
  "/Users/ian/src/rp2040-psram/examples/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp"
  "/Users/ian/src/rp2040-psram/examples/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src"
  "/Users/ian/src/rp2040-psram/examples/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/ian/src/rp2040-psram/examples/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp/${subDir}")
endforeach()
