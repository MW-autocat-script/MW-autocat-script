#!/bin/bash

cat newpages.txt | egrep -i '(US|U\.S\.|United States) Marine(|s) (|Corps)|USMC' >> USMC.txt
cat newpages.txt | egrep -i '(US|U\.S\.|United States) Army' >> USArmy.txt
cat newpages.txt | egrep -i '(US|U\.S\.|United States) (|ch)Air Force|USAF\b' >> USAF.txt
cat newpages.txt | egrep -i '(US|U\.S\.|United States) Navy|\bUSN\b' >> USNavy.txt
cat newpages.txt | egrep -i '(US|U\.S\.|United States) Coast Guard|USCG' >> USCG.txt

USMC=`stat --print=%s USMC.txt`
USARMY=`stat --print=%s USArmy.txt`
USAF=`stat --print=%s USAF.txt`
USNAVY=`stat --print=%s USNavy.txt`
USCG=`stat --print=%s USCG.txt`

if [ $USMC -ne 0 ];
then
  export CATFILE="USMC.txt"
  export CATNAME="United States Marine Corps"
  ./catscripts/Categorize.sh
fi

if [ $USARMY -ne 0 ];
then
  export CATFILE="USArmy.txt"
  export CATNAME="United States Army"
  ./catscripts/Categorize.sh
fi

if [ $USAF -ne 0 ];
then
  export CATFILE="USAF.txt"
  export CATNAME="United States Air Force"
  ./catscripts/Categorize.sh
fi

if [ $USNAVY -ne 0 ];
then
  export CATFILE="USNavy.txt"
  export CATNAME="United States Navy"
  ./catscripts/Categorize.sh
fi

if [ $USCG -ne 0 ];
then
  export CATFILE="USCG.txt"
  export CATNAME="United States Coast Guard"
  ./catscripts/Categorize.sh
fi

rm USMC.txt
rm USArmy.txt
rm USAF.txt
rm USNavy.txt
rm USCG.txt
