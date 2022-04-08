#!/bin/sh
PREFIX="/home/gouchy/friendlywrt-h3"
ARCH=arm
KSRC="$PREFIX/kernel"
STAGING_DIR="$PREFIX/friendlywrt/staging_dir"
TOOLCHAIN_DIR="$STAGING_DIR/toolchain-arm_cortex-a7+neon-vfpv4_gcc-7.3.0_musl_eabi/bin"
CROSS_COMPILE="arm-openwrt-linux-"
 
export STAGING_DIR=$STAGING_DIR
export "PATH=$TOOLCHAIN_DIR:$PATH"
make clean
make ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE KSRC=$KSRC V=s
