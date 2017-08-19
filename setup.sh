#!/bin/bash

echo " "
echo "Running setup.sh script to configure the BBB"

echo "Change passwords to 'BBB*' for both debian and root users"
echo "debian:BBB*" | chpasswd
echo "root:BBB*" | chpasswd


echo " "
