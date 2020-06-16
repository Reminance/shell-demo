#!/usr/bin/bash

# awk $0 整行      $1 第一列    NF 最后一行
echo -e "awk '{print \$0}' data_for_sed.txt:\n`awk '{print $0}' data_for_sed.txt`\n"
echo -e "awk '{print \$1}' data_for_sed.txt:\n`awk '{print $1}' data_for_sed.txt`\n"
echo -e "awk '{print \$NF}' data_for_sed.txt:\n`awk '{print $NF}' data_for_sed.txt`\n"

# awk 'NR==3{print $0}' data_for_sed.txt   此处NR表示检索的行号
echo -e "awk 'NR==3{print \$0}' data_for_sed.txt:\n`awk 'NR==3{print $0}' data_for_sed.txt`\n"

# awk -F 指定字段分隔符
echo -e "awk -F "." 'NR==1{print \"\\\$1:\" \$1 \", \\\$2:\"  \$2 \", \\\$3:\"  \$3' data_for_sed.txt:\n`awk -F "." 'NR==1{print "\$1:" $1  ", \$2:"  $2  ", \$3:"  $3}' data_for_sed.txt`\n"

# awk 示例， awk输出MemTotal内存:
# MemTotal:       16328416 kB
# MemFree:        12829544 kB
# MemAvailable:   14071040 kB
echo -e "head -3 /proc/meminfo | awk 'NR==1{print \$2}':\n `head -3 /proc/meminfo | awk 'NR==1{print $0}'`\n"
echo -e "head -3 /proc/meminfo | awk 'NR==1{print \$2}':\n `head -3 /proc/meminfo | awk 'NR==1{print $2}'`\n"
