#!/bin/bash

cat newpages.txt | egrep -i 'Monster Hunter.+series' >> MonsterHunterSeries.txt
cat newpages.txt | egrep -i 'Monster Hunter' | egrep -iv '2|3|Freedom|Frontier|series|portable' >> MonsterHunter.txt
cat newpages.txt | egrep -i 'Monster Hunter Freedom' | egrep -iv '2|Unite' >> MonsterHunterFreedom.txt
cat newpages.txt | egrep -i 'Monster Hunter Freedom Unit.|\bMHFU\b' >> MonsterHunterFreedomUnite.txt #The . instead of an 'e' is intentional
cat newpages.txt | egrep -i 'Monster Hunter Freedom 2|\bMHF2\b' >> MonsterHunterFreedom2.txt
cat newpages.txt | egrep -i 'Monster Hunter Frontier' >> MonsterHunterFrontier.txt

SERIES=`stat --print=%s MonsterHunterSeries.txt`
HUNTER=`stat --print=%s MonsterHunter.txt`
FREEDOM=`stat --print=%s MonsterHunterFreedom.txt`
MHFU=`stat --print=%s MonsterHunterFreedomUnite.txt`
MHF2=`stat --print=%s MonsterHunterFreedom2.txt`
FRONTIER=`stat --print=%s MonsterHunterFrontier.txt`

if [ $SERIES -ne 0 ];
then
  export CATFILE="MonsterHunterSeries.txt"
  export CATNAME="MonsterHunter series"
  ./catscripts.Categorize.sh
fi

if [ $HUNTER -ne 0 ];
then
  export CATFILE="MonsterHunter.txt"
  export CATNAME="Monster Hunter"
  ./catscripts/Categorize.sh
fi

if [ $FREEDOM -ne 0 ];
then
  export CATFILE="MonsterHunterFreedom.txt"
  export CATNAME="Monster Hunter Freedom"
  ./catscripts/Categorize.sh
fi

if [ $MHFU -ne 0 ];
then
  export CATFILE="MonsterHunterFreedomUnite.txt"
  export CATNAME="Monster Hunter Freedom Unite"
  ./catscripts/Categorize.sh
fi

if [ $MHF2 -ne 0 ];
then
  export CATFILE="MonsterHunterFreedom2.txt"
  export CATNAME="Monster Hunter Freedom 2"
  ./catscripts/Categorize.sh
fi

if [ $FRONTIER -ne 0 ];
then
  export CATFILE="MonsterHunterFrontier.txt"
  export CATNAME="Monster Hunter Frontier"
  ./catscripts/Categorize.sh
fi

rm MonsterHunterSeries.txt
rm MonsterHunter.txt
rm MonsterHunterFreedom.txt
rm MonsterHunterFreedom2.txt
rm MonsterHunterFreedomUnite.txt
rm MonsterHunterFrontier.txt