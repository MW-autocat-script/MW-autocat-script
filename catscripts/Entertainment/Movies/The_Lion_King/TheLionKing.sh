#!/bin/bash

export KEYWORDS_MOVIES_THELIONKING="Lion(| )King|Simba|Mufasa|\bNala|Sarabi|Sarafina|Shenzi|Rafiki|\bTimon|Pumbaa|Kiara|Kovu|\bZira|Vitani|Pride Rock|Pridelands"

if [ "$1" == "" ];
then

  debug_start "The Lion King"

  LIONKING=$(egrep -i "$KEYWORDS_MOVIES_THELIONKING" newpages.txt)

  if [ "$LIONKING" != "" ];
  then
    printf "%s" "$LIONKING" > TheLionKing.txt
    export CATFILE="TheLionKing.txt"
    export CATNAME="The Lion King"
    $CATEGORIZE
    rm TheLionKing.txt
    unset LIONKING
  fi

  debug_end "The Lion King"

fi
