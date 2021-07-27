#!/bin/bash

device_number=`xinput | grep Touchpad | cut -d"=" -f2 | cut -d"[" -f1`
option_number=`xinput list-props $device_number | grep Typing | grep -v Default | cut -d"(" -f2 | cut -d")" -f1`


echo Would you like to disable w-typing? [y/n]
read value

if [[ $value == y || $value == 1 ]]
then
  value=1
else
  value=0
fi
echo Your device number is $device_number
echo Your option number is $option_number
echo Running xinput $device_number $option_number $value

xinput set-prop $device_number $option_number $value
