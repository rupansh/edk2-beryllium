#!/bin/bash
# based on the instructions from edk2-platform
set -e
. build_common.sh
# not actually GCC5;
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -s -n 0 -a AARCH64 -t GCC5 -p beryllium/beryllium.dsc
gzip -c < workspace/Build/beryllium/DEBUG_GCC5/FV/BERYLLIUM_UEFI.fd >uefi.img
cat beryllium.dtb >>uefi.img
