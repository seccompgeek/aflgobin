#!/bin/bash

# 현재 디렉토리에서 make clean 실행
make clean

# 디버그 모드에서 make 실행
make DEBUG=1

# qemu-mode 디렉토리로 이동
cd qemu_mode/qemuafl

make clean
# support.sh 스크립트를 디버그 모드로 실행
#for 32bit
CPU_TARGET=i386 ../build_qemu_support.sh DEBUG=1
#for default
#../build_qemu_support.sh DEBUG=1
