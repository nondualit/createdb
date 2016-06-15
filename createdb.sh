#!/bin/bash
# By Anibal OJeda
# create databases script by Anibal v2
# without asking mysql passwd, passwd is stored in my.cnf
echo -n "Enter dbname: "
read var1
echo -n "Enter user: "
read var2
echo -n "Enter passwd: "
read var3


echo ""         # force a carriage return to be output

mysql -u root -e "create database $var1";
mysql -u root -e "grant usage on *.* to $var2@localhost identified by '$var3'";
mysql -u root -e "grant all privileges on $var1.* to $var2@localhost" ;
