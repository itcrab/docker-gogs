# Docker-Gogs
Fast deploy Go Git Service on your server.

## What is Gogs?
Something like the GitHub/Bitbucket/GitLab/etc in local server (with GIT in container).
https://gogs.io/

## Databases
* `[gogs__mariadb]`: Gogs with MariaDB
* `[gogs__mysql]`: Gogs with MySQL
* `[gogs__postgresql]`: Gogs with PostgreSQL

## Defaults
* `host`: {mariadb|mysql|postgres}
* `db_name`: gogs
* `db_user`: gogs
* `db_pass`: password

## Structure
* `[dumps]`: directory for all dumps from main database;
* `[volumes]`: directory for all volumes from containers;
* `docker-compose.yml`: configurations for docker containers;
* `dump_db.bat`: dump main database;
* `run.bat`: containers up (run first).

## Using
* add `gogs.local` to your `hosts`
* in browser `http://gogs.local:3000`
* enjoy!
