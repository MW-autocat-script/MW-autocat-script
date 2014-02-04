#!/bin/bash

KEYWORDS_MYSQL="My(| )SQL|Maria(| )DB"
KEYWORDS_SQL="SQL"
KEYWORDS_SQL_EXCLUDE="$KEYWORDS_MYSQL"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting SQL\n"
  fi

  SQL="$(egrep -i "$KEYWORDS_SQL" newpages.txt | egrep -iv "$KEYWORDS_SQL_EXCLUDE")"

  if [ "$SQL" != "" ];
  then
    printf "%s" "$SQL" > SQL.txt
    export CATFILE="SQL.txt"
    export CATNAME="SQL"
    $CATEGORIZE
    rm SQL.txt
    unset SQL
  fi

  MYSQL="$(egrep -i "$KEYWORDS_MYSQL" newpages.txt)"

  if [ "$MYSQL" != "" ];
  then
    printf "%s" "$MYSQL" > MySQL.txt
    export CATFILE="MySQL.txt"
    export CATNAME="MySQL"
    $CATEGORIZE
    rm MySQL.txt
    unset MYSQL
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing SQL\n"
  fi

fi