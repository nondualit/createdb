#!/bin/bash
################################################################################
# Author    : Anibal Ojeda
# Version   : 1.0
# Date      : 15-06-2016
# Description: Create databases without asking mysql passwd, passwd is stored in my.cnf
################################################################################
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
