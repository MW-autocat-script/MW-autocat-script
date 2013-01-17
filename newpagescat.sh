#!/bin/bash

#Set global variables
##GBT is Throttle (pywikipedia default is 10, and if you need something faster than 1, you should pay somebody to write something better)
##NPL is the limit for the page generator
#beep
date > lastrun
export GBT=3
export NPL=200
export PYWIKIPEDIADIR=..
export PIDFILE="pidfile.lock"
#Fetch new pages


if [ -e "$PIDFILE" ]; then
PID=`cat $PIDFILE`
if kill -0 $PID > /dev/null 2>&1; then
printf 'Already running\n'
exit 1
else
rm $PIDFILE
fi
fi
echo $$ > $PIDFILE

echo "Generating pages"

python $PYWIKIPEDIADIR/pagegenerators.py -new:$NPL|sed 's|[0-9][0-9][0-9]: |\* \[\[|'| sed 's|[0-9][0-9]: |\* \[\[|' | sed 's|[0-9]: |\* \[\[|' | sed 's:$:]]:' > newpages.txt

#This fetches pages that may be older but have been edited recently; a great way to play catchup
python $PYWIKIPEDIADIR/pagegenerators.py -recentchanges -ns:0|sed 's|[0-9][0-9][0-9]: |\* \[\[|'| sed 's|[0-9][0-9]: |\* \[\[|' | sed 's|[0-9]: |\* \[\[|' | sed 's:$:]]:' >> newpages.txt

#This fetches a random redirect and checks its target. Inefficient, but better than nothing ATM
python $PYWIKIPEDIADIR/pagegenerators.py -randomredirect:1 -ns:0|sed 's|[0-9][0-9][0-9]: |\* \[\[|'| sed 's|[0-9][0-9]: |\* \[\[|' | sed 's|[0-9]: |\* \[\[|' | sed 's:$:]]:' >> newpages.txt
 
#grep keywords from list


##Poptropica

cat newpages.txt | egrep -i 'poptropica|potropica|poptopica' > Poptropica.txt

##Moshi Monsters

cat newpages.txt | egrep -i 'Moshi Monsters|moshimonsters|moshling|furnando|furando|meowford|dustbin beaver|dustbinbeaver|dustin beaver|meowford' > MoshiMonsters.txt

##Woozworld

cat newpages.txt | egrep -i 'Woozworld|Wooz world' > Woozworld.txt

##PNPA

cat newpages.txt | egrep -i 'PNPA' > PNPA.txt
cat newpages.txt | egrep -i '(pnp\b.+neuro|neuro.+pnp)' >> PNPA.txt


#Size test

POPTROPICA=`stat --print=%s Poptropica.txt`
MOSHIMONSTERS=`stat --print=%s MoshiMonsters.txt`
WOOZWORLD=`stat --print=%s Woozworld.txt`
PNPA=`stat --print=%s PNPA.txt`


if [ $POPTROPICA -ne 0 ];
then
  export CATFILE="Poptropica.txt"
  export CATNAME="Poptropica"
  ./catscripts/Categorize.sh
fi

if [ $MOSHIMONSTERS -ne 0 ];
then
  export CATFILE="MoshiMonsters.txt"
  export CATNAME="Moshi Monsters"
  ./catscripts/Categorize.sh
fi

if [ $WOOZWORLD -ne 0 ];
then
  export CATFILE="Woozworld.txt"
  export CATNAME="Woozworld"
  ./catscripts/Categorize.sh
fi

if [ $PNPA -ne 0 ];
then
  export CATFILE="PNPA.txt"
  export CATNAME="PNPA"
  ./catscripts/Categorize.sh
fi

echo "Running subscripts"

./catscripts/Language/Language.sh
./catscripts/Technology/Technology.sh
./catscripts/Transportation/Transportation.sh
./catscripts/Math/Math.sh
./catscripts/Entertainment/Entertainment.sh
./catscripts/Science/Science.sh
./catscripts/Government/Government.sh
./catscripts/Maintenance/Maintenance.sh

#Cleanup

echo "Cleanup"

rm Poptropica.txt
rm MoshiMonsters.txt
rm Woozworld.txt
rm PNPA.txt

rm $PIDFILE
