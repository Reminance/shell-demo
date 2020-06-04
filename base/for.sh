#!/bin/bash
# 倒计时
echo -n "倒计时: "
for i in `seq 5 -1 1`
  do
    echo -n -e "\b$i"
    sleep 1
done
echo

echo 'for i in `seq 1 3`'
for i in `seq 1 3`
  do
    echo $i
done
echo

echo 'for i in `seq 3 -1 1`'
for i in `seq 3 -1 1`
  do
    echo $i
done
echo

echo 'for i in "fsf" "gsgg" "hgr"'
for i in "fsf" "gsgg" "gr"
  do
    echo $i
done
echo

echo 'for ((i=1;i<3;i++))'
for ((i=1;i<3;i++))
  do
    echo $i
done
echo

echo 'c language style: for ((a=0, b=5; a<6; a++,b--))'
for ((a=0, b=5; a<6; a++,b--))
  do
    if [ $a -eq 2 ]; then
        continue
    fi
    if [ $a -eq 4 ]; then
        break
    fi
    echo $a $b
    echo -e "\033[32m $a \033[0m\t\033[31m $b \033[0m\n"
    sleep 1
done
echo
