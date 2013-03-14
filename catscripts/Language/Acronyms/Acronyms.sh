#!/bin/bash

egrep -i 'acronym|initialism' newpages.txt >> Acronyms.txt
egrep '\[\[What does [A-Z]{2,} stand for\]\]' newpages.txt >> Acronyms.txt
egrep '\[\[What do the initials [A-Z]{2,} stand for' newpages.txt >> Acronyms.txt

ACRONYMS=`stat --print=%s Acronyms.txt`

if [ $ACRONYMS -ne 0 ];
then
  export CATFILE="Acronyms.txt"
  export CATNAME="Acronyms"
  $CATEGORIZE
fi

rm Acronyms.txt
