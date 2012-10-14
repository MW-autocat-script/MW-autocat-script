#!/bin/bash

cat newpages.txt | egrep -i 'cheat code' >> CheatCodes.txt
cat newpages.txt | egrep -i 'cheats for' >> CheatCodes.txt

cat newpages.txt | egrep -i 'Action Replay' >> ActionReplay.txt
cat newpages.txt | egrep -i '\bar codes' >> ActionReplay.txt 


CHEATCODES=`stat --print=%s CheatCodes.txt`
ACTIONREPLAY=`stat --print=%s ActionReplay.txt`


if [ $CHEATCODES -ne 0 ];
then
  export CATFILE="CheatCodes.txt"
  export CATNAME="Cheat codes"
  ./catscripts/Categorize.sh
fi

if [ $ACTIONREPLAY -ne 0 ];
then
  export CATFILE="ActionReplay.txt"
  export CATNAME="Action Replay"
  ./catscripts/Categorize.sh
fi

rm CheatCodes.txt
rm ActionReplay.txt