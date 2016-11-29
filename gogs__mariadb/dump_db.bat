SET CONTAINER=gogsmariadb_mariadb
SET MYSQL_USER=gogs
SET MYSQL_PASSWORD=password
SET MYSQL_DATABASE=gogs

mkdir dumps
docker exec %CONTAINER% sh -c "exec mysqldump -u%MYSQL_USER% -p%MYSQL_PASSWORD% -B --add-drop-database %MYSQL_DATABASE%" >./dumps/%date:~10,4%-%date:~4,2%-%date:~7,2%__gogs.sql
pause
