#!/bin/bash
read -p "num: " num
case $num in
1)
  echo 1 "haha"
  ;;
2)
  echo 2 "hehe"
  ;;
3|4)
  echo "3|4 heihei"
  ;;
*)
  echo "1|2|3|4"
  ;;
esac
