#!/bin/bash

# sudo access check
  source ./auth.sh
  set -e

# main
  echo '--- update'
  sudo apt-get update
  echo '--- upgrade'
  sudo apt-get upgrade -y
  echo '--- dist-upgrade'
  sudo apt-get dist-upgrade -y
  # echo '--- rpi-update'
  # sudo rpi-update
  echo '--- install some packages'
  sudo apt-get install -y git i2c-tools libi2c-dev python3-dev python3-pip python3-serial python3-smbus python3-jinja2 python3-xmltodict python3-psutil 
  echo '--- pip install rpi.gpio'
  sudo pip3 install RPi.GPIO
  echo '--- pip install psutil'
  sudo pip3 install psutil
  echo '--- pip install xmltodict'
  sudo pip3 install xmltodict
  echo '--- all done, rebooting'
  sudo reboot
  exit 0
