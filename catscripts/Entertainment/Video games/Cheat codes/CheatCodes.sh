#!/bin/bash

cat newpages.txt | egrep -i 'cheat code' >> CheatCodes.txt
cat newpages.txt | egrep -i 'cheats for' >> CheatCodes.txt

cat newpages.txt | egrep -i 'Action Replay' >> ActionReplay.txt
cat newpages.txt | egrep -i '\bar codes' >> ActionReplay.txt 


CHEATCODES=`stat --print=%s CheatCodes.txt`
ACTIONREPLAY=`stat --print=%s ActionReplay.txt`


if [ $CHEATCODES -ne 0 ];
then
  ./catscripts/Entertainment/Video\ games/Cheat\ codes/catCheatCodes.sh
fi

if [ $ACTIONREPLAY -ne 0 ];
then
  ./catscripts/Entertainment/Video\ games/Cheat\ codes/catActionReplay.sh
fi

rm CheatCodes.txt
rm ActionReplay.txt