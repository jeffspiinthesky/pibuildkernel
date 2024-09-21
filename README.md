# Helper scripts for building Raspberry PI kernel on PI5

## Intro

These scripts are nothing complex, they're just what exist as instructions on raspberrypi.com and are provided to prevent typos from getting in the way!

## How to use the scripts

### Prepare the kernel build
Initially, install required dependencies:
```
sudo apt install bc bison flex libssl-dev make git libncurses
```
Then clone the kernel source code from GitHub:
```
git clone --depth=1 https://github.com/raspberrypi/linux
```
Note that will pull the native (current) kernel version. To pull a specific version, pull that branch with:
```
git clone --depth=1 --branch <branch> https://github.com/raspberrypi/linux
```
e.g. to pull the kernel 6.11 branch, use:
```
git clone --depth=1 --branch rpi-6.11.y https://github.com/raspberrypi/linux
```
After this, you need to perform the default build:
```
./prepare_kernel.sh
```

## Configure the kernel
Now, you can customise what features you want in your kernel. Do this by running:
```
./config_kernel.sh
```

## Build the kernel
Now you can build your custom kernel with:
```
./build_kernel.sh
```

## Install the kernel
Finally, you can install your kernel with:
```
./install_kernel.sh
```
Once that's complete, go ahead and reboot!! You can then verify you're running your custom kernel with:
```
uname -r
```
