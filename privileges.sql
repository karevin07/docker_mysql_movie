use mysql;
select host, user from user;
-- 因為mysql版本是5.7，因此新建用户為如下命令：
create user docker identified by '123456';
-- 将docker_mysql資料庫的權限授權给創建的docker用户，密碼為123456：
grant all on docker_mysql.* to docker@'%' identified by '123456' with grant option;
-- 這一條命令一定要有：
flush privileges;
