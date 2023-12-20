#!/bin/bash

current_dir=$(dirname $(realpath $0))

log_file=$current_dir/log/blocked_ip.log

while true
do
  inotifywait -e modify $log_file

  echo "File $log_file has changed, do something!"

  echo "[$(date)] Intruder detected, sent new blocked_ip to all server" >> $current_dir/log/monitor.log
done

