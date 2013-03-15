#!/bin/bash

egrep -i "\bMoon\b|\bMoon's" newpages.txt | egrep -iv 'Sailor Moon|Type( |-)Moon|Harvest Moon|moon stone|Twilight|Pokémon|Pokemon|Jacob|Bella|Edward' >> Moon.txt

MOON=`stat --print=%s Moon.txt`

if [ $MOON -ne 0 ];
then
  export CATFILE="Moon.txt"
  export CATNAME="Moon"
  $CATEGORIZE
fi

rm Moon.txt