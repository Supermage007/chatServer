#!/bin/bash

# -v $PWD/conf/my.cnf:/etc/mysql/my.cnf
 docker run -p 3306:3306 --name mysqlchat  -v $PWD/logs:/logs -v $PWD/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7

