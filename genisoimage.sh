#! /bin/bash
genisoimage -l -r -J -V "Adriane" -b boot/isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 -boot-info-table -c boot/isolinux/boot.cat -o Adriane8.iso Knoppix8
