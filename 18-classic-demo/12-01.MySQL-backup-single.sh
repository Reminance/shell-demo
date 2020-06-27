# 12-01.MySQL数据库备份单循环.sh
ps -eo user,pid,pcpu,pmem,args --sort=-pcpu  |head -n 10

ps -eo user,pid,pcpu,pmem,args --sort=-pmem  |head -n 10
