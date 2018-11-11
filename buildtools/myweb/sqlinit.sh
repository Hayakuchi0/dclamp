#!/bin/bash

here=`dirname ${0}`
here=`cd ${here};pwd`
mysql -u root -h dbserver -pexample < ${here}/init.sql
while [ ${?} -eq 1 ]
do
echo ${?}
sleep 1
mysql -u root -h dbserver -pexample < ${here}/init.sql
done
