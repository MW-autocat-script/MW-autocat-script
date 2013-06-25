#!/bin/bash

KEYWORDS_JORDAN="(king|queen|prince(|ss).+ of Jordan|Jordanian|(kingdom|country|flag|government) of Jordan"

egrep -i "$KEYWORDS_JORDAN" newpages.txt >> Jordan.txt

JORDAN=`stat --print=%s Jordan.txt`

if [ $JORDAN -ne 0 ];
then
  export CATFILE="Jordan.txt"
  export CATNAME="Jordan"
  $CATEGORIZE
fi

rm Jordan.txt