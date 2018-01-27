#! /bin/bash
sudo ifdown wlan0
sudo mkdir /etc/network/if-pre-up.d
sudo rm /var/run/wpa_supplicant/wlan0
sudo ifup wlan0
