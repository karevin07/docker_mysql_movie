#!/bin/bash
set -e

#查看mysql服务的状态，方便调试，这条语句可以删除
echo `service mysql status`

echo '1.啟動mysql....'
#启动mysql
service mysql start
sleep 3
echo `service mysql status`

echo '2.載入資料....'
#导入数据
mysql < /mysql/script.sql
echo '3.載入資料完畢....'

sleep 3
echo `service mysql status`

#重新设置mysql密码
echo '4.開始修改密碼....'
mysql < /mysql/privileges.sql
echo '5.修改密碼完畢....'

#sleep 3
echo 'service mysql status'
echo 'mysql容器成功啟動完畢，且資料導入成功'

tail -f /dev/null

