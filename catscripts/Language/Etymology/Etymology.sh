#!/bin/bash

egrep -i 'etymology' newpages.txt >> Etymology.txt
egrep -i 'Where (does|did) the (word|phrase|saying) .+ (originate|come from)' newpages.txt >> Etymology.txt
egrep -i 'origin of the word [a-z]{1,}' newpages.txt >> Etymology.txt
egrep -i 'Where (does|did) the (sur|)name [a-z]{1,} (originate|come from)' newpages.txt >> NameOrigins.txt

ETYMOLOGY=`stat --print=%s Etymology.txt`
ORIGINS=`stat --print=%s NameOrigins.txt`

if [ $ETYMOLOGY -ne 0 ];
then
  export CATFILE="Etymology.txt"
  export CATNAME="Etymology"
  ./catscripts/Categorize.sh
fi

if [ $ORIGINS -ne 0 ];
then
  export CATFILE="NameOrigins.txt"
  export CATNAME="Name origins"
  ./catscripts/Categorize.sh
fi

rm Etymology.txt
rm NameOrigins.txt