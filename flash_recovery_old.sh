#!/bin/sh

adb reboot bootloader
fastboot flash recovery img/recovery.img
fastboot reboot
sleep 15
adb reboot recovery
