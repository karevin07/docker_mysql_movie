#!/bin/bash
set -e

#查看mysql服務的狀態，方便測試，這條命令可以删除
echo `service mysql status`

echo '1.啟動mysql....'
#啟動mysql
service mysql start
sleep 3
echo `service mysql status`

echo '2.載入資料....'
#載入資料
mysql < /mysql/script.sql
echo '3.載入資料完畢....'

sleep 3
echo `service mysql status`

#重新設置mysql密碼
echo '4.開始修改密碼....'
mysql < /mysql/privileges.sql
echo '5.修改密碼完畢....'

#sleep 3
echo 'service mysql status'
echo 'mysql容器成功啟動完畢，且資料導入成功'

tail -f /dev/null

