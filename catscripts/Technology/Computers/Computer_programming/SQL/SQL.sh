#!/bin/bash

KEYWORDS_SQL="SQL|Maria(| )DB"

if [ "$1" == "" ];
then

  debug_start "SQL"

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

  debug_end "SQL"

fi