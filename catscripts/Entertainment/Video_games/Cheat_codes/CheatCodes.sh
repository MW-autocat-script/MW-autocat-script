#!/bin/bash

egrep -i 'cheat code' newpages.txt >> CheatCodes.txt
egrep -i 'cheats for' newpages.txt >> CheatCodes.txt

egrep -i 'Action Replay' newpages.txt >> ActionReplay.txt
egrep -i '\bar codes' newpages.txt >> ActionReplay.txt 


CHEATCODES=`stat --print=%s CheatCodes.txt`
ACTIONREPLAY=`stat --print=%s ActionReplay.txt`


if [ $CHEATCODES -ne 0 ];
then
  export CATFILE="CheatCodes.txt"
  export CATNAME="Cheat codes"
  $CATEGORIZE
fi

if [ $ACTIONREPLAY -ne 0 ];
then
  export CATFILE="ActionReplay.txt"
  export CATNAME="Action Replay"
  $CATEGORIZE
fi

rm CheatCodes.txt
rm ActionReplay.txt