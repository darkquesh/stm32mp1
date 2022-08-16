#Bash script to initialise STM32MP1 SDK

#!/usr/bin/bash

sudo -s

cd /home/STM32MPU_workspace/STM32MP1-Ecosystem-v4.0.0/Developer-Package

echo Inside the Developer-Package folder

source SDK/environment-setup-cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi

echo Starting SDK...
echo $'\n'

echo Checking the target architecture *arm*
echo $ARCH $'\n'

echo Checking the toolchain binary prefix for the target tools *arm-ostl-linux-gnueabi-*
echo $CROSS_COMPILE $'\n'

echo Checking the C compiler version *arm-ostl-linux-gnueabi-gcc 11.2.0*
echo $CC --version $'\n'

echo Checking that the SDK version is the expected one *4.0.1-openstlinux-5.15-yocto-kirkstone-mp1-v22.06.15*
echo $OECORE_SDK_VERSION $'\n'

echo DO NOT close this terminal until cross-compilation is done! 

/bin/bash
