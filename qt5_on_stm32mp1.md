## Resources

- https://wiki.dh-electronics.com/index.php/Add_Yocto_SDK_with_QT5_to_QT_Creator  
- https://www.emsyslabs.com/how-to-compile-linux-using-yocto-for-stm32mp1/  
- https://wiki.st.com/stm32mpu/wiki/How_to_build_and_use_an_SDK_for_QT  
- https://medium.com/@BradenSunwold/how-to-set-up-stm32mp1-with-qt-part-1-7576eec8f1fe  
- https://embeddeduse.com/2020/06/19/qt-embedded-systems-2-build-qt-sdk-with-yocto/  
- https://doc.qt.io/Boot2Qt/b2qt-meta-qt6.html  


### Download the layer for Qt5  
    cd ~/Projects/yocto
    git clone https://github.com/meta-qt5/meta-qt5  
    cd meta-qt5  
    git checkout kirkstone  

### Then, edit the layer config file  
    cd ~/Projects/yocto/build-mp1  
    gedit conf/bblayers.conf

### Change BBLAYERS with the following
>BBLAYERS ?= " \
>  /home/dell/Projects/yocto/poky/meta \\  
>  /home/dell/Projects/yocto/poky/meta-poky \\  
>  /home/dell/Projects/yocto/poky/meta-yocto-bsp \\  
>  /home/dell/Projects/yocto/meta-openembedded/meta-oe \\  
>  /home/dell/Projects/yocto/meta-openembedded/meta-python \\  
>  /home/dell/Projects/yocto/meta-st-stm32mp \\  
>  /home/dell/Projects/yocto/meta-custom \\  
>  /home/dell/Projects/yocto/meta-qt5 \\    
>  "

### save and exit, and run:

    bitbake meta-toolchain-qt5
