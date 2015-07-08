#!/bin/sh

adb reboot bootloader
fastboot flash boot img/boot_new.img
fastboot reboot
