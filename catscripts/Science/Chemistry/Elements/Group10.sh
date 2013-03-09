#!/bin/bash 

egrep -i 'Nickel' newpages.txt | egrep -iv 'penny|dime|quarter|cent|dollar|nickel bag|on the nickel|[0-9]{1,}.+nickel|worth|buffalo|poptropica|mint|a nickel\b|coin' >> Nickel.txt
egrep -i 'Palladium' newpages.txt >> Palladium.txt
egrep -i 'Platinum' newpages.txt | egrep -iv "record|album|go platinum|Pokemon|Pok'mon|Pokémon|platinum card|platinum medal|Mass Effect" >> Platinum.txt
egrep -i 'Darmstadtium' newpages.txt >> Darmstadtium.txt

NICKEL=`stat --print=%s Nickel.txt`
PALLADIUM=`stat --print=%s Palladium.txt`
PLATINUM=`stat --print=%s Platinum.txt`
DARMSTADTIUM=`stat --print=%s Darmstadtium.txt`

if [ $NICKEL -ne 0 ];
then
  export CATFILE="Nickel.txt"
  export CATNAME="Nickel"
  ./catscripts/Categorize.sh
fi

if [ $PALLADIUM -ne 0 ];
then
  export CATFILE="Palladium.txt"
  export CATNAME="Palladium"
  ./catscripts/Categorize.sh
fi

if [ $PLATINUM -ne 0 ];
then
  export CATFILE="Platinum.txt"
  export CATNAME="Platinum"
  ./catscripts/Categorize.sh
fi

if [ $DARMSTADTIUM -ne 0 ];
then
  export CATFILE="Darmstadtium.txt"
  export CATNAME="Darmstadtium"
  ./catscripts/Categorize.sh
fi

rm Nickel.txt
rm Palladium.txt
rm Platinum.txt
rm Darmstadtium.txt