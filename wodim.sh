#! /bin/bash
wodim -eject  -tao speed=0 dev=/dev/sg1 -v -data $1
