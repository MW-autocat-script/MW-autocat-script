#!/bin/bash

export KEYWORDS_ACTRESS_MARILYNMONROE="Marilyn(| )Monroe"

egrep -i "$KEYWORDS_ACTRESS_MARILYNMONROE" newpages.txt >> MarilynMonroe.txt

MARILYNMONROE=`stat --print=%s MarilynMonroe.txt`

if [ $MARILYNMONROE -ne 0 ];
then
  export CATFILE="MarilynMonroe.txt"
  export CATNAME="Marilyn Monroe"
  $CATEGORIZE
fi

rm MarilynMonroe.txt
