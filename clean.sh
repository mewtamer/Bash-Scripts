# /bin/bash
cd ~
rm -Rf .bash_history .c* .dbus .gconf .local/share/recently* .mplayer .macromedia .nano
sudo apt-get clean
sudo rm -Rf /1 /.cache /var/lib/apt/lists/* /tmp/* /var/log/*
cd /usr/share/
sudo rm -Rf app* bug doc* i18n info m* lintian locale perl* pix* py* t* z*
cd /var/lib/dpkg/info
sudo rm -Rf *inst *triggers *sums
sudo find / -type d -empty -delete
sudo find / -xtype l -delete
find ~ /media/ -empty -delete
sudo mkdir /var/lib/dpkg/updates /etc/dbus-1/session.d /var/log
