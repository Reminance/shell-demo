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
echo -e "head -3 /proc/meminfo | awk 'NR==1{print \$2}':\n`head -3 /proc/meminfo | awk 'NR==1{print $0}'`\n"
echo -e "head -3 /proc/meminfo | awk 'NR==1{print \$2}':\n`head -3 /proc/meminfo | awk 'NR==1{print $2}'`\n"


# awk 定义变量  使用变量计算内存使用率
echo -e "head -3 /proc/meminfo | awk 'NR==1{t=\$2}NR==2{f=\$2;print (t-f)*100/t \"%\"':\n`head -3 /proc/meminfo | awk 'NR==1{t=$2}NR==2{f=$2;print (t-f)*100/t "%"}'`\n"
# awk 简单变量使用
echo -e "awk 'BEGIN{name=\"xc\";print name}':\n`awk 'BEGIN{name="xc";print name}'`\n"
echo -e "awk 'BEGIN{name[0]=\"xc\";name[1]=\"yzy\";print name[1]}':\n`awk 'BEGIN{name[0]="xc";name[1]="yzy";print name[1]}'`\n"

# awk运算 比较运算如果是字符串 则使用的时ascii码进行比较  为真则是1   为假则是0
echo -e "awk 'BEGIN{print \"a\" <= \"b\"}':\n`awk 'BEGIN{print "a" <= "b"}'`\n"
# 100^3 = 1000000
echo -e "awk 'BEGIN{print 100**3}':\n`awk 'BEGIN{print 100**3}'`\n"

# awk 测试条件检索
echo -e "seq 1 10 > num.txt && awk '\$1>5{print \$0}' num.txt:\n`seq 1 10 > num.txt && awk '$1>5{print $0}' num.txt`\n"
echo -e "seq 1 10 > num.txt && awk '\$1!=5{print \$0}' num.txt:\n`seq 1 10 > num.txt && awk '$1!=5{print $0}' num.txt`\n"

# awk -v 赋值初始化
echo -e "awk -v 'count=0' 'BEGIN{count++;print count}':\n`awk -v 'count=0' 'BEGIN{count++;print count}'`\n"

# awk 匹配运算
# 精确匹配  序列1-10内 匹配等于5的行
echo -e "seq 1 10 > num.txt && awk -F: '\$1==5{print \$0}' num.txt:\n`seq 1 10 > num.txt && awk -F: '$1==5{print $0}' num.txt`\n"

# 模糊匹配  序列1-10内 匹配包含1的行
echo -e "seq 1 10 > num.txt && awk -F: '\$1 ~ 1{print \$0}' num.txt:\n`seq 1 10 > num.txt && awk -F: '$1 ~ 1{print $0}' num.txt`\n"

# 指定输出列宽
echo -e "awk 'BEGIN{FIELDWIDTHS=\"2 2 2\"}NR==1{print \$1,\$2,\$3}' data_for_sed.txt:\n`awk 'BEGIN{FIELDWIDTHS="2 2 2"}NR==1{print $1,$2,$3}' data_for_sed.txt`\n"

#  awk FS指定数据源分隔符 OFS指定输出分隔符  RS指定数据源行分隔符(默认是"\n")
echo -e "awk 'BEGIN{FS=\":\";OFS=\"-\"}\$1==\"root\"{print \$1,\$2,\$3,\$6,\$7}' /etc/passwd:\n`awk 'BEGIN{FS=":";OFS="-"}$1=="root"{print $1,$2,$3,$6,$7}' /etc/passwd`\n"
echo -e "awk 'BEGIN{RS=\"\\\n\";ORS=\"####\"};NR<3{print \$0,\$2,\"\\\n\"}' data_for_sed.txt:\n`awk 'BEGIN{RS="\n";ORS="####"};NR<3{print $0,$2,"\n"}' data_for_sed.txt`\n"


# 使用awk 查找正在使用的网卡
echo -e `ifconfig|grep enp|awk -F ":" 'NR==1{print $1}'`
