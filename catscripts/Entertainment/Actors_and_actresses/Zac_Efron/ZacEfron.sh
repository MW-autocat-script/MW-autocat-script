#!/bin/bash

export KEYWORDS_ACTOR_ZACEFRON="Zac(| )Efron"

egrep -i "$KEYWORDS_ACTOR_ZACEFRON" newpages.txt >> ZacEfron.txt

ZACEFRON=`stat --print=%s ZacEfron.txt`

if [ $ZACEFRON -ne 0 ];
then
  export CATFILE="ZacEfron.txt"
  export CATNAME="Zac Efron"
  $CATEGORIZE
fi

rm ZacEfron.txt