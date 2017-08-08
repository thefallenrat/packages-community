#!/bin/bash
# This file should be updated after every kernel build.
#
# If the checksum changes for one of the kernels, all extra
# modules need to be recompiled. 
#
# In rare cases extra modules need to be recompiled, 
# even if the checksum is the same.
#
# Please also test your system with at least one virtualbox
# module installed

arch=$(uname -m)

if [ -e rt-kernel-modules.sum ]; then
    timestamp=$(stat -c %y rt-kernel-modules.sum | sed s'~ ~-~'g | cut -d. -f1)
    mv rt-kernel-modules.sum rt-kernel-modules-$timestamp.sum
fi
md5sum /usr/lib/modules/*rt*/build/Module.symvers | sed s'~/usr/lib/modules/~Kernel: ~'g | sed s'~/build/Module.symvers~~'g > rt-kernel-modules.sum
if [ -e rt-kernel-modules-$timestamp.sum ]; then
    echo "Possible ABI-change detected. Please check:"
    echo " "
    diff -Npur rt-kernel-modules-$timestamp.sum rt-kernel-modules.sum > abi-change-rt-since-$timestamp.abi
    cat abi-change-rt-since-$timestamp.abi
fi