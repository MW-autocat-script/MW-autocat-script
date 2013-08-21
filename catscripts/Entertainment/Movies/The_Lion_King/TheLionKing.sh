#!/bin/bash

export KEYWORDS_MOVIES_THELIONKING="Lion(| )King|Simba|Mufasa|\bNala|Sarabi|Sarafina|Shenzi|Rafiki|\bTimon|Pumbaa|Kiara|Kovu|\bZira|Vitani|Pride Rock|Pridelands"

egrep -i "$KEYWORDS_MOVIES_THELIONKING" newpages.txt >> TheLionKing.txt

LIONKING=`stat --print=%s TheLionKing.txt`

if [ $LIONKING -ne 0 ];
then
  export CATFILE="TheLionKing.txt"
  export CATNAME="The Lion King"
  $CATEGORIZE
fi

rm TheLionKing.txt
