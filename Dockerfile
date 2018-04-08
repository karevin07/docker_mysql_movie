FROM mysql

FROM mysql:5.7

#设置免密登录
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

#将所需文件放到容器中
COPY setup.sh /mysql/setup.sh
COPY script.sql /mysql/script.sql
COPY privileges.sql /mysql/privileges.sql
COPY data/Movie_cf/output_final.csv /mysql/output_final.csv
COPY data/Movie_km/output.csv /mysql/output.csv


#设置容器启动时执行的命令
CMD ["sh", "/mysql/setup.sh"]







