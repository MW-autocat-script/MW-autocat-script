#!/bin/bash

egrep -i 'Harvest(| )Moon' newpages.txt >> HarvestMoon.txt

HARVESTMOON=`stat --print=%s HarvestMoon.txt`

if [ $HARVESTMOON -ne 0 ];
then
  export CATFILE="HarvestMoon.txt"
  export CATNAME="Harvest Moon series"
  $CATEGORIZE
fi

rm HarvestMoon.txt