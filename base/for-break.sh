#!/bin/bash
for ((i=0;i<9;i++))
  do
    echo "#loop $i"
    for ((;;))
      do
        if [ $i -eq 5 ]
        then
          break 2
        fi
        echo "haha"
        break
      done
    sleep 1
done
