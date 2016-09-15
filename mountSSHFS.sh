# /bin/bash
sudo mkdir /media/ecsu
sudo chown knoppix:knoppix /media/ecsu
chmod 755 /media/ecsu
sshfs dbwright@oracledev.ecsu.edu: /media/ecsu
