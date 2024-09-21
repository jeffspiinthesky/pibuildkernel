#!/bin/bash

cd linux
KERNEL=kernel8
make -j6 modules_install

cp /boot/firmware/$KERNEL.img /boot/firmware/$KERNEL-backup.img
cp arch/arm64/boot/Image.gz /boot/firmware/$KERNEL.img
cp arch/arm64/boot/dts/broadcom/*.dtb /boot/firmware/
cp arch/arm64/boot/dts/overlays/*.dtb* /boot/firmware/overlays/
cp arch/arm64/boot/dts/overlays/README /boot/firmware/overlays/
