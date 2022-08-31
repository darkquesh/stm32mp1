# How to set FDCAN on STM32MP157F-DK2 #

############ TUTORIALS ###########
# 1. https://wiki.st.com/stm32mpu/wiki/How_to_set_up_a_SocketCAN_interface
# 2. https://wiki.st.com/stm32mpu/wiki/How_to_send_or_receive_CAN_data
##################################

######### TROUBLESHOOTING ##################
# If ip link/iplink gives an error like 
# 	ip: either "dev" is duplicate, or "type" is garbage 
cd ../build-mp1
bitbake -c menuconfig busybox
# Under Networking Utilities enable iproute
# And check these websites: http://www.armadeus.org/wiki/index.php?title=CAN_bus_Linux_driver https://developer.ridgerun.com/wiki/index.php/How_to_configure_and_use_CAN_bus
############################################

## 0. Activate CAN driver in kernel configuration (enabled by default)

cd ~/Projects/yocto/build-mp1
bitbake -c menuconfig virtual/kernel

[*] Networking support --->
	<*> CAN bus subsystem support --->
			CAN Device Drivers --->
				<*> Bosch M_CAN support
					<*> Bosch M_CAN support for io-mapped devices


## 1. First, install the required stuff

cd ~/Projects/yocto/build-mp1/conf
# Add the following line to local.conf for sending/receiving CAN data

IMAGE_INSTALL:append = " can-utils"

# Rebuild the image, flash it onto an SD card and boot the system


## 2. Check the available CAN devices

ls /sys/class/net
ifconfig -a


## 3. Configure the available SocketCAN interface

ip link set can0 type can bitrate 1000000 dbitrate 2000000 fd on

# Print the status of the SocketCAN link

ip -details link show can0


## 4. Enable the CAN interface and check whether it is up

ip link set can0 up
ip -details link show can0

# To disable CAN, run

ip link set can0 down


## 5. Hardware self-test / Loopback test mode; configure and enable in the same command line

ip link set can0 up type can bitrate 1000000 dbitrate 2000000 fd on loopback on
ip  -details link show can0

# Send and receive message in internal loopback mode

candump can0 -L &
cansend can0 300#AC.AB.AD.AE.75.49.AD.D1
