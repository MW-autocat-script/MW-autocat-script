#!/bin/bash

cat newpages.txt | egrep -i '\[\[What is a [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i '\[\[What is an [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i '\[\[What are [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i '\[\[What is the definition of [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i '\[\[What is the definition of a [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i '\[\[Definition of [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i '\[\[Defination of [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i '\[\[Difinition of [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i "\[\[What's a [abcdefghijklmnopqrstuvwxyz]{1,}\]\]" >> Definitions.txt
cat newpages.txt | egrep -i "\[\[What's an [abcdefghijklmnopqrstuvwxyz]{1,}\]\]" >> Definitions.txt
cat newpages.txt | egrep -i '\[\[Whats a [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i '\[\[Whats an [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i '\[\[What does [abcdefghijklmnopqrstuvwxyz]{1,} mean\]\]' >> Definitions.txt
cat newpages.txt | egrep -i '\[\[What is [abcdefghijklmnopqrstuvwxyz]{1,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i '\[\[What is [a-z]{6,} [a-z]{6,}\]\]' >> Definitions.txt
cat newpages.txt | egrep -i 'What does the word [a-z]{1,} mean' >> Definitions.txt

DEFINITIONS=`stat --print=%s Definitions.txt`

if [ $DEFINITIONS -ne 0 ];
then
  export CATFILE="Definitions.txt"
  export CATNAME="Definitions"
  ./catscripts/Categorize.sh
fi

rm Definitions.txt
