#!/bin/bash

egrep -i 'arachnid' newpages.txt | egrep -iv 'spider|tarantula|tick|scorpion' >> Arachnids.txt
egrep -i 'deer tick' newpages.txt >> Ticks.txt
egrep -i 'spider|tarantula|daddy( |-)long( |-)leg' newpages.txt | egrep -iv 'spider( ||-)man|Rune(| )Scape|Stronghold of Security|Varrock' >> Spiders.txt
egrep -i 'scorpion' newpages.txt | egrep -iv 'scorpion king' >> Scorpions.txt

ARACHNIDS=`stat --print=%s Arachnids.txt`
TICKS=`stat --print=%s Ticks.txt`
SPIDERS=`stat --print=%s Spiders.txt`
SCORPIONS=`stat --print=%s Scorpions.txt`

if [ $ARACHNIDS -ne 0 ];
then
  export CATFILE="Arachnids.txt"
  export CATNAME="Arachnids"
  $CATEGORIZE
fi

if [ $TICKS -ne 0 ];
then
  export CATFILE="Ticks.txt"
  export CATNAME="Ticks"
  $CATEGORIZE
fi

if [ $SPIDERS -ne 0 ];
then
  export CATFILE="Spiders.txt"
  export CATNAME="Spiders"
  $CATEGORIZE
fi

if [ $SCORPIONS -ne 0 ];
then
  export CATFILE="Scorpions.txt"
  export CATNAME="Scorpions"
  $CATEGORIZE
fi

rm Arachnids.txt
rm Ticks.txt
rm Spiders.txt
rm Scorpions.txt