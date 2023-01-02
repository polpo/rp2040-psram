# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/ian/src/pico/pico-sdk/tools/elf2uf2"
  "/Users/ian/src/rp2040-psram/examples/build/elf2uf2"
  "/Users/ian/src/rp2040-psram/examples/build/elf2uf2"
  "/Users/ian/src/rp2040-psram/examples/build/elf2uf2/tmp"
  "/Users/ian/src/rp2040-psram/examples/build/elf2uf2/src/ELF2UF2Build-stamp"
  "/Users/ian/src/rp2040-psram/examples/build/elf2uf2/src"
  "/Users/ian/src/rp2040-psram/examples/build/elf2uf2/src/ELF2UF2Build-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/ian/src/rp2040-psram/examples/build/elf2uf2/src/ELF2UF2Build-stamp/${subDir}")
endforeach()
