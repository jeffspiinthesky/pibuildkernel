#!/bin/bash

cd linux
KERNEL=kernel7
make -j6 zImage modules dtbs
