#! /bin/bash
sudo ifdown eth0
sudo mkdir /etc/network/if-pre-up.d
sudo ifup eth0
