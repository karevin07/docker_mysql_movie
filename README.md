# mysql_docker
操作指令

build

`$ docker build -t iii/docker-mysql .`

---

run CONTAINER

`$ docker run -d -p 3306:3306 iii/docker-mysql`

---

在CONTAINER內用ROOT以及設定的密碼登入MYSQL

`$ docker exec -it containerid /bin/bash`

---

mysql 查詢

`$use BB105_03`


`$show tables;`
