#!/bin/bash
# Author : http://github.com/jeonghoonkang
this_path=$(readlink -f $0)
date > $this_path.start.log
while true 
do
  date
  date > $this_path.log
  echo "save date info to $this_path.log"
  sleep 30
  clear
done
