#!/bin/bash
# dbbkup 
# make dump without passwd, passwd stored in my.cnf v2
CURRENT=`date +%d-%m-%y`
DB="databases"
backupdir="directory"

# make dbbackup 
for db in $DB
do 
mysqldump -h localhost -u root --databases $db > $backupdir/$db-$CURRENT.sql
done
exit 0