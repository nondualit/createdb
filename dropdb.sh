#!/bin/bash
# drop databases script by Anibal v2
# without asking mysql passwd, passwd is stored in my.cnf
echo -n "Enter dbname: "
read var1

echo ""         # force a carriage return to be output

mysql -u root -e "drop database $var1";
mysql -u root -e "DROP USER $var1@localhost";