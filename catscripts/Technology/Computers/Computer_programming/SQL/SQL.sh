#!/bin/bash

egrep -i 'SQL' newpages.txt | egrep -iv 'MySQL' >> SQL.txt
egrep -i 'MySQL|Maria(| )DB' newpages.txt >> MySQL.txt

SQL=`stat --print=%s SQL.txt`
MYSQL=`stat --print=%s MySQL.txt`

if [ $SQL -ne 0 ];
then
  export CATFILE="SQL.txt"
  export CATNAME="SQL"
  $CATEGORIZE
fi

if [ $MYSQL -ne 0 ];
then
  export CATFILE="MySQL.txt"
  export CATNAME="MySQL"
  $CATEGORIZE
fi

rm SQL.txt
rm MySQL.txt