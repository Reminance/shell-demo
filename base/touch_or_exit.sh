#!/bin/bash
# 判断参数数量 不是2就退出
if [ "$#" -ne 2 ];then
  echo "USAGE: $0 <file name><file suffix>"
  exit 2
else
  touch $1\.$2
  trap "rm -rf $1.$2; echo Bye." exit
fi
