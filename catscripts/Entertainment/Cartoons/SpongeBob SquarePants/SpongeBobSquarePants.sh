#!/bin/bash

cat newpages.txt | egrep -i 'SpongeBob|sponge bob|SquarePants|Krusty Krab|Patrick Star|Sandy Cheeks|(Eugene|Mr(|\.)) Krabs' >> SpongeBobSquarePants.txt

SPONGEBOB=`stat --print=%s SpongeBobSquarePants.txt`

if [ $SPONGEBOB -ne 0 ];
then
  ./catscripts/Entertainment/Cartoons/SpongeBob\ SquarePants/catSpongeBobSquarePants.sh
fi


rm SpongeBobSquarePants.txt