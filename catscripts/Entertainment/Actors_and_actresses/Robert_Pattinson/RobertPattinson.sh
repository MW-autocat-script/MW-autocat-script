#!/bin/bash

export KEYWORDS_ACTOR_ROBERTPATTINSON="Robert(| )Pattinson"

egrep -i "$KEYWORDS_ACTOR_ROBERTPATTINSON" newpages.txt >> RobertPattinson.txt

PATTINSON=`stat --print=%s RobertPattinson.txt`

if [ $PATTINSON -ne 0 ];
then
  export CATFILE="RobertPattinson.txt"
  export CATNAME="Robert Pattinson"
  $CATEGORIZE
fi

rm RobertPattinson.txt
