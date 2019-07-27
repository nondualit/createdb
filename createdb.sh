#!/bin/bash
################################################################################
# Author    : Anibal Ojeda
# Version   : 2.0
# Date      : 27-07-2016
# Description: Create and drop databases without asking mysql passwd, passwd is stored in my.cnf
# Options    : -a add -d delete
################################################################################

# Options
while [ -n "$1" ]; do # while loop starts

case "$1" in

-a)

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
;;


-d)

#!/bin/bash
# drop databases script by Anibal v2
# without asking mysql passwd, passwd is stored in my.cnf
echo -n "Enter dbname: "
read var1

echo ""         # force a carriage return to be output

mysql -u root -e "drop database $var1";
mysql -u root -e "DROP USER $var1@localhost";

;;

 *) echo "Option $1 not recognized. Use -h for help" ;; # In case you typed a different option other than a,d,h,v

  esac

    shift

done
