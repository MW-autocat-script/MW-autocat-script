#!/bin/bash 

KEYWORDS_SCANDIUM="Scandium"
KEYWORDS_YTTRIUM="Yttrium"
KEYWORDS_GROUP3_ELEMENTS="$KEYWORDS_SCANDIUM|$KEYWORDS_YTTRIUM"

if [ "$1" == "" ];
then
  
  debug_start "Group 3 elements"

  SCANDIUM="$(egrep -i "$KEYWORDS_SCANDIUM" "$NEWPAGES")"
  YTTRIUM="$(egrep -i "$KEYWORDS_YTTRIUM" "$NEWPAGES")"

  if [ "$SCANDIUM" != "" ];
  then
    printf "%s" "$SCANDIUM" > Scandium.txt
    export CATFILE="Scandium.txt"
    export CATNAME="Scandium"
    $CATEGORIZE
    rm Scandium.txt
    unset SCANDIUM
  fi

  if [ "$YTTRIUM" != "" ];
  then
    printf "%s" "$YTTRIUM" > Yttrium.txt
    export CATFILE="Yttrium.txt"
    export CATNAME="Yttrium"
    $CATEGORIZE
    rm Yttrium.txt
    unset YTTRIUM
  fi

  debug_end "Group 3 elements"

fi