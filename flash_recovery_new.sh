#!/bin/sh

adb reboot bootloader
fastboot flash recovery img/recovery_new.img
fastboot reboot
sleep 15
adb reboot recovery
