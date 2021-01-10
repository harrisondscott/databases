#!/bin/bash
query="USE mysql";
password=`cat ~/.password`
create="CREATE USER harrison@'localhost' IDENTIFIED BY '$password'"
permission="GRANT ALL PRIVILEGES ON *.* TO harrison@'localhost'"
mysql -uroot -e "$query"
mysql -uroot -e "$create"
mysql -uroot -e "$permission"
mysql -e "flush privileges"
