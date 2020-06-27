#!/bin/bash
# 10.一键部署LNMP网站平台脚本.sh
DATE=$@
USER_FILE=user.txt
for USER in $USER_LIST; do
    if ! id $USER &>/dev/null; then
        PASS=$(echo $RANDOM |md5sum |cut -c 1-8)
        useradd $USER
        echo $PASS |passwd --stdin $USER &>/dev/null
        echo "$USER   $PASS" >> $USER_FILE
        echo "$USER User create successful."
    else
        echo "$USER User already exists!"
    fi
done
