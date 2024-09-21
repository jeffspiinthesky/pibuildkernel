#!/bin/bash

cd linux
KERNEL=kernel
make -j6 modules_install

cp /boot/firmware/$KERNEL.img /boot/firmware/$KERNEL-backup.img
cp arch/arm/boot/zImage /boot/firmware/$KERNEL.img
KERNEL_VER=$(uname -r | cut -f2 -d'.')
if [ "${KERNEL_VER}" -le "4" ]
then
	cp arch/arm/boot/dts/*.dtb /boot/firmware/
else
	cp arch/arm/boot/dts/broadcom/*.dtb /boot/firmware/
fi
cp arch/arm/boot/dts/overlays/*.dtb* /boot/firmware/overlays/
cp arch/arm/boot/dts/overlays/README /boot/firmware/overlays/
