#!/bin/bash
# 18.目录文件变化监控和实时文件同步.sh
DATE=$(date +%F_%T)

WWWROOT=/usr/local/nginx/html/$1


BACKUP_DIR=/data/backup
WORK_DIR=/tmp
PROJECT_NAME=php-demo


# 拉取代码
cd $WORK_DIR
if [ ! -d $PROJECT_NAME ]; then
   git clone https://github.com/lizhenliang/php-demo
   cd $PROJECT_NAME
else
   cd $PROJECT_NAME
   git pull
fi


# 部署
if [ ! -d $WWWROOT ]; then
   mkdir -p $WWWROOT
   rsync -avz --exclude=.git $WORK_DIR/$PROJECT_NAME/* $WWWROOT
else
   rsync -avz --exclude=.git $WORK_DIR/$PROJECT_NAME/* $WWWROOT
fi
