#!/bin/bash

cd linux
KERNEL=kernel71
make -j6 zImage modules dtbs
