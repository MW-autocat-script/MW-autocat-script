#!/bin/bash

egrep -i 'Dwarf planet' newpages.txt | egrep -iv 'Pluto|Eris' >> Dwarf.txt
egrep -i "Pluto\b|Plutos" newpages.txt | egrep -iv 'Pluto the Pup' >> Pluto.txt
egrep -i '\bEris' newpages.txt >> Eris.txt

DWARF=$(stat --print=%s Dwarf.txt)
PLUTO=$(stat --print=%s Pluto.txt)
ERIS=$(stat --print=%s Eris.txt)

if [ $DWARF -ne 0 ];
then
  export CATFILE="Dwarf.txt"
  export CATNAME="Dwarf planets"
  $CATEGORIZE
fi

if [ $PLUTO -ne 0 ];
then
  export CATFILE="Pluto.txt"
  export CATNAME="Pluto"
  $CATEGORIZE
fi

if [ $ERIS -ne 0 ];
then
  export CATFILE="Eris.txt"
  export CATNAME="Eris"
  $CATEGORIZE
fi

rm Dwarf.txt
rm Pluto.txt
rm Eris.txt