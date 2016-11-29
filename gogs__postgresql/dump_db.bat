SET CONTAINER=gogspostresql_postgres
SET POSTGRES_USER=gogs
SET POSTGRES_DB=gogs

mkdir dumps
docker exec %CONTAINER% sh -c "exec pg_dump -U %POSTGRES_USER% -C %POSTGRES_DB%" >./dumps/%date:~10,4%-%date:~4,2%-%date:~7,2%__gogs.sql
pause
