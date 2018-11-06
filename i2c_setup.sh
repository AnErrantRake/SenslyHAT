#!/bin/bash


apt-get -o Acquire::ForceIPv4=true update
apt-get -o Acquire::ForceIPv4=true upgrade

apt-get -o Acquire::ForceIPv4=true install i2c-tools python-smbus python3-smbus python-dev python3-dev -f
echo "dtparam=i2c_arm=on" >> /boot/config.txt
