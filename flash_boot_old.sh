#!/bin/sh

adb reboot bootloader
fastboot flash boot img/boot.img
fastboot reboot
