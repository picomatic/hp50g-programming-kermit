#!/bin/sh

if [ $# -eq 1 ]
  then
  echo "%%HP: T(1)A(R)F(.);" > $1
    bbe -e "s/\x3C\x3C/\xAB/" $1.s|bbe -e "s/\x3E\x3E/\xBB/"|bbe -e "s/\x2D\x3E/\x8D/"|bbe -e "s/\x3C\x43\x52\x3E/\x0A/"|bbe -e "s/\x3C\x50\x49\x3E/\x87/"|bbe -e "s/\x3C\x53\x51\x52\x54\x3E/\x83/"  >> $1
    sudo kermit settings-hp50g -l /dev/ttyUSB0 -s $1
    rm $1
  exit 0
fi
echo "Error you have t give 1 parameter, the xx.s without the s!"

#2D 3E
#3C 43 52 3E        #<CR>   return
#3C 50 49 3E        #<PI>   pi
#3C 53 51  52 54 3E #<SQRT> Square root
