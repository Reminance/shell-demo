#!/usr/bin/bash

# man sed  查看sed的help doc

# sed -a 追加(不修改源文件)
echo -e "sed 'a\hello world' data_for_sed.txt:\n`sed 'a\hello world' data_for_sed.txt`\n"
echo -e "sed 'ahello world' data_for_sed.txt:\n`sed 'a\hello world' data_for_sed.txt`\n"
echo -e "sed '3a\hello world' data_for_sed.txt:\n`sed '3a\hello world' data_for_sed.txt`\n"
echo -e "sed '2,4a\hello world' data_for_sed.txt:\n`sed '2,4a\hello world' data_for_sed.txt`\n"

# sed -i 在匹配前面添加
# 略

# 在command之前使用// 开启匹配模式
echo -e "sed '/3 line/a\hello world' data_for_sed.txt:\n`sed '/3 line/a\hello world' data_for_sed.txt`\n"

# sed -d 删除(不修改源文件)
echo -e "sed 'd' data_for_sed.txt:\n`sed 'd' data_for_sed.txt`\n"
echo -e "sed '3d' data_for_sed.txt:\n`sed '3d' data_for_sed.txt`\n"
echo -e "sed '2,4d' data_for_sed.txt:\n`sed '2,4d' data_for_sed.txt`\n"
echo -e "sed '/3 line/d' data_for_sed.txt:\n`sed '/3 line/d' data_for_sed.txt`\n"
# sed -r 匹配正则
echo -e "sed -r '/^#/d' nginx.conf:\n`sed -r '/^#/d' nginx.conf`\n"
echo -e "sed -r '/(^#|#|^$)/d' nginx.conf:\n`sed -r '/(^#|#|^$)/d' nginx.conf`\n"

# sed -s 查找替换
echo -e "sed 's/line/enil/' data_for_sed.txt:\n`sed -r 's/line/enil/' data_for_sed.txt`\n"

# sed -c 更改
echo -e "sed 'c\hello world' data_for_sed.txt:\n`sed -r 'c\hello world' data_for_sed.txt`\n"

# sed -y 转换
echo -e "sed 'y/lot/LOT/' data_for_sed.txt:\n`sed -r 'y/lot/LOT/' data_for_sed.txt`\n"

# sed -p 在匹配前面添加
echo -e "sed 'p' data_for_sed.txt:\n`sed 'p' data_for_sed.txt`\n"

