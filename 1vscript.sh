#!/bin/bash
output=`xrandr | grep primary`
echo $output | sed 's/\([^  ]\) .*/\1/' 
