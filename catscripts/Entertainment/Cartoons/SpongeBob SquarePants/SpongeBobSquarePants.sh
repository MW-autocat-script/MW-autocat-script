#!/bin/bash
#Categorization script for the children's cartoon SpongeBob SquarePants

egrep -i 'SpongeBob|sponge bob|SquarePants|Krusty Krab|Patrick Star|Sandy Cheeks|(Eugene|Mr(|\.)) Krabs' newpages.txt >> SpongeBobSquarePants.txt

SPONGEBOB=`stat --print=%s SpongeBobSquarePants.txt`

if [ $SPONGEBOB -ne 0 ];
then
  export CATFILE="SpongeBobSquarePants.txt"
  export CATNAME="SpongeBob SquarePants"
  ./catscripts/Categorize.sh
fi


rm SpongeBobSquarePants.txt