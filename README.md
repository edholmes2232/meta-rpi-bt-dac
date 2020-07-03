# meta-rpi-bt-dac

Yocto layer to build Bluetooth DAC image for Raspberry Pi 3 

## Description
Based on the ZeroW repo

## Dependencies

This layer depends on:

* URI: git://git.yoctoproject.org/poky
    * branch: warrior

* URI: git://git.openembedded.org/meta-openembedded
    * layers: meta-oe, meta-networking, meta-python
    * branch: warrior

* URI: git://git.yoctoproject.org/meta-raspberrypi
    * branch: warrior

## Quick Start

1. Clone the dependencies and switch to correct branch
2. source poky/oe-init-build-env build
3. Add this layer to build/conf/bblayers.conf and the dependencies above
4. Set MACHINE in local.conf to raspberrypi3
    * To remove unnecessary features, the following can also be added to local.conf:
    * `MACHINE_FEATURES_remove = "apm wifi screen touchscreen"`
    * `DISTRO_FEATURES_remove = "ipv4 ipv6 irda usbgadget usbhost wifi nfs zeroconf 3g nfc x11 wayland vulkan"`
    * For read-only root filesystem, add `IMAGE_FEATURES += "read-only-rootfs"` to local.conf
5. bitbake core-image-base
6. dd to a SD card the generated sdimg file (build/tmp/deploy/images/raspberrypi3/core-image-base-raspberrypi3.rpi-sdimg)
7. Boot your RPI.

## License

The source is released under the MIT license. See LICENSE for details. The binary releases contain third-party components in binary form. See the accompanied licenses archive for individual licenses.
