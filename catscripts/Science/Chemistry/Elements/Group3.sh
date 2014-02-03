#!/bin/bash 

KEYWORDS_SCANDIUM="Scandium"
KEYWORDS_YTTRIUM="Yttrium"
KEYWORDS_GROUP3_ELEMENTS="$KEYWORDS_SCANDIUM|$KEYWORDS_YTTRIUM"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Group 3 elements\n"
  fi

  SCANDIUM="$(egrep -i "$KEYWORDS_SCANDIUM" newpages.txt)"
  YTTRIUM="$(egrep -i "$KEYWORDS_YTTRIUM" newpages.txt)"

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

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Group 3 elements\n"
  fi

fi