#!/bin/sh -e
export CSTOOLS=~/CodeSourcery/Sourcery_CodeBench_Lite_for_ARM_GNU_Linux
export CSTOOLS_INC=${CSTOOLS}/arm-none-linux-gnueabi/libc/usr/include
export CSTOOLS_LIB=${CSTOOLS}/arm-none-linux-gnueabi/libc/usr/lib
export TARGET_ARCH="-march=armv7-a" # must be at least armv5te
export TARGET_TUNE="-mtune=cortex-a8 -mfpu=neon -mthumb-interwork" # optional

export CPP="arm-none-linux-gnueabi-gcc -E"
export STRIP="arm-none-linux-gnueabi-strip"
export OBJCOPY="arm-none-linux-gnueabi-objcopy"
export AR="arm-none-linux-gnueabi-ar"
export F77="arm-none-linux-gnueabi-g77 ${TARGET_ARCH} ${TARGET_TUNE}"
unset LIBC
export RANLIB="arm-none-linux-gnueabi-ranlib"
export LD="arm-none-linux-gnueabi-g++"
export LDFLAGS="-L${CSTOOLS_LIB} -Wl,-O1 -Wl,--hash-style=gnu"
export MAKE="make"
export CXXFLAGS="-isystem${CSTOOLS_INC} -fexpensive-optimizations -frename-registers -fomit-frame-pointer -O2 -ggdb3 -fpermissive -fvisibility-inlines-hidden"
export LANG="en_US.UTF-8"
export HOME="/home/peru"
export CCLD="arm-none-linux-gnueabi-gcc ${TARGET_ARCH} ${TARGET_TUNE}"
export CFLAGS="-isystem${CSTOOLS_INC} -fexpensive-optimizations -frename-registers -fomit-frame-pointer -O2 -ggdb3"
export OBJDUMP="arm-none-linux-gnueabi-objdump"
export CPPFLAGS="-isystem${CSTOOLS_INC}"
export CC="arm-none-linux-gnueabi-gcc ${TARGET_ARCH} ${TARGET_TUNE}"
export SHELL="/bin/bash"
export CXX="arm-none-linux-gnueabi-g++ ${TARGET_ARCH} ${TARGET_TUNE}"
export NM="arm-none-linux-gnueabi-nm"
export AS="arm-none-linux-gnueabi-as"

bash --norc
