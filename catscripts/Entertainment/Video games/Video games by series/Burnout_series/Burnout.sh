#!/bin/bash

egrep 'Burnout' newpages.txt | egrep -iv 'Burnout(| )Paradise' >> Burnout.txt
egrep -i 'Burnout(| )2' newpages.txt >> Burnout2.txt
egrep -i 'Burnout(| )3' newpages.txt >> Burnout3.txt
egrep -i 'Burnout(| )Revenge' newpages.txt >> BurnoutRevenge.txt
egrep -i 'Burnout(| )Legend' newpages.txt >> BurnoutLegends.txt
egrep -i 'Burnout(| )Dominator' newpages.txt >> BurnoutDominator.txt
egrep -i 'Burnout(| )Paradise' newpages.txt >> BurnoutParadise.txt
egrep -i 'Burnout(| )Crash' newpages.txt >> BurnoutCrash.txt

BURNOUT=`stat --print=%s Burnout.txt`
TWO=`stat --print=%s Burnout2.txt`
THREE=`stat --print=%s Burnout3.txt`
REVENGE=`stat --print=%s BurnoutRevenge.txt`
LEGENDS=`stat --print=%s BurnoutLegends.txt`
DOMINATOR=`stat --print=%s BurnoutDominator.txt`
PARADISE=`stat --print=%s BurnoutParadise.txt`
CRASH=`stat --print=%s BurnoutCrash.txt`

if [ $BURNOUT -ne 0 ];
then
  export CATFILE="Burnout.txt"
  export CATNAME="Burnout series"
  ./catscripts/Categorize.sh
fi

if [ $TWO -ne 0 ];
then
  export CATFILE="Burnout2.txt"
  export CATNAME="Burnout series"
  ./catscripts/Categorize.sh
fi

if [ $THREE -ne 0 ];
then
  export CATFILE="Burnout3.txt"
  export CATNAME="Burnout series"
  ./catscripts/Categorize.sh
fi

if [ $REVENGE -ne 0 ];
then
  export CATFILE="BurnoutRevenge.txt"
  export CATNAME="Burnout series"
  ./catscripts/Categorize.sh
fi

if [ $LEGENDS -ne 0 ];
then
  export CATFILE="BurnoutLegends.txt"
  export CATNAME="Burnout series"
  ./catscripts/Categorize.sh
fi

if [ $DOMINATOR -ne 0 ];
then
  export CATFILE="BurnoutDominator.txt"
  export CATNAME="Burnout series"
  ./catscripts/Categorize.sh
fi

if [ $PARADISE -ne 0 ];
then
  export CATFILE="BurnoutParadise.txt"
  export CATNAME="Burnout Paradise"
  ./catscripts/Categorize.sh
fi

if [ $CRASH -ne 0 ];
then
  export CATFILE="BurnoutCrash.txt"
  export CATNAME="Burnout series"
  ./catscripts/Categorize.sh
fi

rm Burnout*.txt