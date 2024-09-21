#!/bin/bash

cd linux
KERNEL=kernel_2712
make -j6 Image.gz modules dtbs
