#!/bin/bash

KEYWORDS_ANTIGUAANDBARBUDA="Antigua|Barbuda"
KEYWORDS_ANTIGUAANDBARBUDA_ALL="$KEYWORDS_ANTIGUAANDBARBUDA"

if [ "$1" == "" ];
then
  
  debug_start "Antigua and Barbuda"

  ANTIGUA=$(egrep -i "$KEYWORDS_ANTIGUAANDBARBUDA" newpages.txt)

  if [ "$ANTIGUA" != "" ];
  then
    printf "%s" "$ANTIGUA" > Antigua.txt
    export CATFILE="Antigua.txt"
    export CATNAME="Antigua and Barbuda"
    $CATEGORIZE
    rm Antigua.txt
    unset ANTIGUA
  fi

  debug_end "Antigua and Barbuda"

fi
