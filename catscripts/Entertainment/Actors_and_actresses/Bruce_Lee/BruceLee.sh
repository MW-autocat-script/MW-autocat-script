#!/bin/bash

export KEYWORDS_ACTOR_BRUCELEE="Bruce(| )Lee"

egrep -i "$KEYWORDS_ACTOR_BRUCELEE" newpages.txt >> BruceLee.txt

BRUCELEE=`stat --print=%s BruceLee.txt`

if [ $BRUCELEE -ne 0 ];
then
  export CATFILE="BruceLee.txt"
  export CATNAME="Bruce Lee"
  $CATEGORIZE
fi

rm BruceLee.txt
