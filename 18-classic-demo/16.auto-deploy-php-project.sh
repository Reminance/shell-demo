#!/bin/bash
# 16.自动发布PHP项目脚本.sh

MON_DIR=/opt
inotifywait -mqr --format %f -e create $MON_DIR |\
while read files; do
   rsync -avz /opt /tmp/opt
   #echo "$(date +'%F %T') create $files" | mail -s "dir monitor" xxx@163.com
done
