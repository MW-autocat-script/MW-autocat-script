#!/bin/bash

cat newpages.txt | egrep -i '\[\[How do you spell [a-z]{1,}\]\]' >> Spelling.txt
cat newpages.txt | egrep -i '\[\[How do you spell "[a-z]{1,}"\]\]' >> Spelling.txt
cat newpages.txt | egrep -i "\[\[How do you spell '[a-z]{1,}'\]\]" >> Spelling.txt
cat newpages.txt | egrep -i '\[\[How to spell [a-z]{1,}\]\]' >> Spelling.txt
cat newpages.txt | egrep -i '\[\[How to spell "[a-z]{1,}"\]\]' >> Spelling.txt
cat newpages.txt | egrep -i "\[\[How to spell '[a-z]{1,}'\]\]" >> Spelling.txt

SPELLING=`stat --print=%s Spelling.txt`

if [ $SPELLING -ne 0 ];
then
  export CATFILE="Spelling.txt"
  export CATNAME="Spelling"
  ./catscripts/Categorize.sh
fi

rm Spelling.txt