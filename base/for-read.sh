#!/bin/bash
for ((;;))
  do
    read -p "char:" char
    if [ $char == "Q" ]
      then break
    else
      echo "你输入的字符时: $char"
    fi
done
