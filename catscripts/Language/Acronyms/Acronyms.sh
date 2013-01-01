#!/bin/bash

cat newpages.txt | egrep -i 'acronym|initialism' >> Acronyms.txt
cat newpages.txt | egrep '\[\[What does [A-Z]{2,} stand for\]\]' >> Acronyms.txt
cat newpages.txt | egrep '\[\[What do the initials [A-Z]{2,} stand for' >> Acronyms.txt

ACRONYMS=`stat --print=%s Acronyms.txt`

if [ $ACRONYMS 0-ne 0 ];
then
  export CATFILE="Acronyms.txt"
  export CATNAME="Acronyms"
  ./catscripts/Categorize.sh
fi

rm Acronyms.txt