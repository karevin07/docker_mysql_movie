FROM mysql

FROM mysql:5.7

#設計免密碼登入
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

#將所需的文件放入container
COPY setup.sh /mysql/setup.sh
COPY script.sql /mysql/script.sql
COPY privileges.sql /mysql/privileges.sql
COPY data/Movie_cf/output_final.csv /mysql/output_final.csv
COPY data/Movie_km/output.csv /mysql/output.csv


#設置container執行時所需的命令
CMD ["sh", "/mysql/setup.sh"]







