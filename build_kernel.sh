#!/bin/bash

cd linux
KERNEL=kernel8
make -j6 Image.gz modules dtbs
