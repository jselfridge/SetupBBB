#!/bin/bash

echo " "
echo "Running setup.sh script to configure the BBB"

echo "Changing passwords to 'BBB*' for both debian and root users"
echo "debian:BBB*" | chpasswd
echo "root:BBB*" | chpasswd

echo "Setting environment variables"
echo "SLOTS=/sys/devices/platform/bone_capemgr/slots" >> ~/.bashrc
echo "PINS=/sys/kernel/debug/pinctrl/44e10800.pinmux/pins" >> ~/.bashrc
echo "PINGROUPS=/sys/kernel/debug/pinctrl/44e10800.pinmux/pingroups" >> ~/.bashrc

echo " "
