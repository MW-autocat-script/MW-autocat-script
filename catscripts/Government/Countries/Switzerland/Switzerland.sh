#!/bin/bash

KEYWORDS_SWITZERLAND="Switzerland|Swiss"
KEYWORDS_GENEVA="Geneva"
KEYWORDS_ZURICH="Zurich"
KEYWORDS_SWITZERLAND_EXCLUDE="$KEYWORDS_GENEVA|$KEYWORDS_ZURICH"

egrep -i "$KEYWORDS_SWITZERLAND" newpages.txt | egrep -iv "$KEYWORDS_SWITZERLAND_EXCLUDE" >> Switzerland.txt
egrep -i "$KEYWORDS_GENEVA" newpages.txt >> Geneva.txt
egrep -i "$KEYWORDS_ZURICH" newpages.txt >> Zurich.txt

SWITZERLAND=$(stat --print=%s Switzerland.txt)
GENEVA=$(stat --print=%s Geneva.txt)
ZURICH=$(stat --print=%s Zurich.txt)

if [ $SWITZERLAND -ne 0 ];
then
  export CATFILE="Switzerland.txt"
  export CATNAME="Switzerland"
  $CATEGORIZE
fi

if [ $GENEVA -ne 0 ];
then
  export CATFILE="Geneva.txt"
  export CATNAME="Geneva"
  $CATEGORIZE
fi

if [ $ZURICH -ne 0 ];
then
  export CATFILE="Zurich.txt"
  export CATNAME="Zurich"
  $CATEGORIZE
fi

rm Switzerland.txt
rm Geneva.txt
rm Zurich.txt