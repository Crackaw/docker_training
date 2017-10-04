#!/bin/bash
find /var/lib/mysql -type f -exec touch {} \;
mysqladmin -u root password "${MYSQL_ROOT_PASS}"
mysql -u root -p${MYSQL_ROOT_PASS} -e "create database ${MYSQL_DB}"
