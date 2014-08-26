#!/bin/bash

KEYWORDS_SQL="SQL|Maria(| )DB"
KEYWORDS_SQL_ALL="$KEYWORDS_SQL"

if [ "$1" == "" ];
then

  debug_start "SQL"

  SQL=$(egrep -i "$KEYWORDS_SQL" "$NEWPAGES" | egrep -iv "$KEYWORDS_SQL_EXCLUDE")

  catrgorize "SQL" "SQL"

  debug_end "SQL"

fi

#This is here so ShellCheck won't complain about KEYWORDS_SQL_ALL, which is used elsewhere

KEYWORDS_SQL_ALL="$KEYWORDS_SQL_ALL"