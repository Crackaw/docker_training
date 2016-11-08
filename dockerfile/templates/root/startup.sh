#!/bin/bash
mysqladmin -u root password "pass"
mysql -u root -ppass -e "create database wordpress"
