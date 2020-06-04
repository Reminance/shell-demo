#!/bin/bash
read -p "NUM: " num
while [ $num -gt 0 ]
do
  echo "$num 大于0"
  sleep 1
  ((num--))
done
