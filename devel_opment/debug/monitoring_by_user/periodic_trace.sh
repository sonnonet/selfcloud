#!/bin/bash
# Author : http://github.com/jeonghoonkang
this_path=$(readlink -f $0)
date > $this_path.start.log

#while true; do sudo vcgencmd measure_temp >  ./temp_cpu.log 2>&1; sleep 60; done;

while true 
do
  date
  date > $this_path.log
  echo "save date info to $this_path.log"
  sudo vcgencmd measure_temp > $this_path.temp.cpu.log 2>&1 
  echo "fan speed :" >> $this_path.temp.cpu.log 2>&1 
  sudo cat /sys/class/thermal/cooling_device0/cur_state >> $this_path.temp.cpu.log 2>&1
  sleep 60
  clear
done
