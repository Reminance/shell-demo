#!/bin/bash
# 17.Dos攻击防范（自动屏蔽攻击IP）.sh
DATE=$(date +%F_%T)

TOMCAT_NAME=$1
TOMCAT_DIR=/usr/local/$TOMCAT_NAME
ROOT=$TOMCAT_DIR/webapps/ROOT

BACKUP_DIR=/data/backup
WORK_DIR=/tmp
PROJECT_NAME=tomcat-java-demo

# 拉取代码
cd $WORK_DIR
if [ ! -d $PROJECT_NAME ]; then
   git clone https://github.com/lizhenliang/tomcat-java-demo
   cd $PROJECT_NAME
else
   cd $PROJECT_NAME
   git pull
fi

# 构建
mvn clean package -Dmaven.test.skip=true
if [ $? -ne 0 ]; then
   echo "maven build failure!"
   exit 1
fi

# 部署
TOMCAT_PID=$(ps -ef |grep "$TOMCAT_NAME" |egrep -v "grep|$$" |awk 'NR==1{print $2}')
[ -n "$TOMCAT_PID" ] && kill -9 $TOMCAT_PID
[ -d $ROOT ] && mv $ROOT $BACKUP_DIR/${TOMCAT_NAME}_ROOT$DATE
unzip $WORK_DIR/$PROJECT_NAME/target/*.war -d $ROOT
$TOMCAT_DIR/bin/startup.sh

