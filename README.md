# Development on STM32MP157F-DK2 board  

A general-purpose microprocessor portfolio enabling easy development for a broad range of applications, the [STM32MP1 series][1] is based on an Arm Cortex-A7 and Cortex-M4 cores architecture. The Cortex-A7 core provides access to open-source operating systems (Linux/Android) while the Cortex-M4 core leverages the STM32 MCU ecosystem.

STM32MP157-DK2 discovery kit includes a touchscreen and also embeds up to 37 communication peripherals including 10/100M or Gigabit Ethernet, 3x USB 2.0 Host/OTG, 29x Timers and Advanced Analog.

![STM32MP157F-DK2 hardware](https://github.com/darkquesh/stm32mp1/blob/main/images/STM32MP157F-DK2_board.png)

This guide includes  
- How to set up Linux environment on your host computer  
- Build your own Linux image  
- Configure the kernel  
- Add layers and custom recipes to Linux image  
- Customise device tree and apply patches for peripherals including I2C and CAN-FD  
- Communicate over Ethernet and FDCAN simultaneously on your board

<br>

### I highly recommend you to refer to the [tutorial I have written](https://github.com/darkquesh/stm32mp1/blob/main/Yocto_Linux.md) for every essential information to begin your journey into Embedded Linux on your STM32MP157x board (also in [PDF](https://github.com/darkquesh/stm32mp1/blob/main/Yocto_STM32MP157F-DK2_Linux_Image.pdf)). 

Although a bit outdated, the Digikey's tutorial on STM32MP1 board is also quite useful (which mine is based on): [Introduction to Embedded Linux | Digikey](https://www.youtube.com/playlist?list=PLEBQazB0HUyTpoJoZecRK6PpDG31Y7RPB)  
  
<br>

## Device Tree Usage
https://elinux.org/Device_Tree_Usage


[1]: <https://www.st.com/en/microcontrollers-microprocessors/stm32mp1-series.html> "STM32MP1"
