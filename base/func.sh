#!/bin/bash
func1 () {
  echo "func1 executed"
  return 0
}

func1

function func2 {
  echo "func2 executed"
  return 1
}

func2

function func3(){
  count=0
  for cont in {1..3}; do
    count=`expr $count + 1`
  done
  # 函数中使用return返回时，返回值的数据类型必须是数字
  return $count
}

# 在$()的圆括号中可以执行linux命令,当然也包括执行函数
res1=$(func3)

# 变量res2将会接收函数的返回值，这里是3
res2=`echo $?`

if [[ $res2 == 3 ]]; then
  echo "func3() succeeded!"
else
  echo "Not a right number!"
fi


# 也可在函数中使用echo作返回值
function func4(){
  first_name=$1
  middle_name=$2
  family_name=$3
  echo -n "$first_name "
  echo -n "$middle_name "
  echo -n "$family_name"
}

# 使用$(func_name arg1 arg2 ...)来获取函数中所有的echo值
res3=$(func4 "tony" "kid" "leung")
echo -e "func4 'tony' 'kid'  'leung' RESULT IS \033[4m$res3\033[0m"

res4=$(func4 'who' 'is' 'the' 'most' 'handsome' 'guy?')
echo -e "func4 'who' 'is' 'the' 'most' 'handsome' 'guy?' RESULT IS \033[4m$res4\033[0m"

if [[ $res4 =~ "tony" ]]; then
  echo "it includes tony ^_^ "
else
  echo "Input name doesn't include 'tony'!"
fi

