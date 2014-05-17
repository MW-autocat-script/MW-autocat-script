#!/bin/bash

egrep -i 'Battlefield 1942|The Road to Rome|Secret Weapons of World War II|Battlefield series' newpages.txt >> Battlefieldseries.txt
egrep -i 'Battlefield Vietnam' newpages.txt >> Battlefieldseries.txt
egrep -i 'Battlefield 2 |Battlefield 2$' newpages.txt >> Battlefieldseries.txt
egrep -i 'Battlefield 2142' newpages.txt >> Battlefieldseries.txt
egrep -i 'Battlefield(:| ) Bad Company' newpages.txt >> Battlefieldseries.txt
egrep -i 'Battlefield Heroes' newpages.txt >> Battlefieldseries.txt
egrep -i 'Battlefield 1943' newpages.txt >> Battlefieldseries.txt
egrep -i 'Battlefield Online' newpages.txt >> Battlefieldseries.txt
egrep -i 'Battlefield Play4Free' newpages.txt >> Battlefieldseries.txt
egrep -i 'Battlefield 3' newpages.txt >> Battlefieldseries.txt
egrep -i 'Battlefield 4' newpages.txt >> Battlefieldseries.txt

BATTLEFIELD=$(stat --print=%s Battlefieldseries.txt)

if [ $BATTLEFIELD -ne 0 ];
then
  export CATFILE="Battlefieldseries.txt"
  export CATNAME="Battlefield series"
  $CATEGORIZE
fi

rm Battlefieldseries.txt