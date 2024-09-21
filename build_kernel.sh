#!/bin/bash

cd linux
KERNEL=kernel
make -j6 zImage modules dtbs
