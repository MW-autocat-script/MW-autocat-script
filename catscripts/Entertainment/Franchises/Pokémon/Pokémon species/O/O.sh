#!/bin/bash
cat newpages.txt | egrep -i 'Octillery' >> Octillery.txt
cat newpages.txt | egrep -i 'Oddish' >> Oddish.txt
cat newpages.txt | egrep -i 'Omanyte' >> Omanyte.txt
cat newpages.txt | egrep -i 'Omastar' >> Omastar.txt
cat newpages.txt | egrep -i 'Onix' >> Onix.txt
cat newpages.txt | egrep -i 'Oshawott' >> Oshawott.txt

Octillery=`stat --print=%s Octillery.txt`
Oddish=`stat --print=%s Oddish.txt`
Omanyte=`stat --print=%s Omanyte.txt`
Omastar=`stat --print=%s Omastar.txt`
Onix=`stat --print=%s Onix.txt`
Oshawott=`stat --print=%s Oshawott.txt`

if [ $Octillery -ne 0 ];
then
  export CATFILE="Octillery.txt"
  export CATNAME="Octillery"
  ./catscripts/Categorize.sh
fi

if [ $Oddish -ne 0 ];
then
  export CATFILE="Oddish.txt"
  export CATNAME="Oddish"
  ./catscripts/Categorize.sh
fi

if [ $Omanyte -ne 0 ];
then
  export CATFILE="Omanyte.txt"
  export CATNAME="Omanyte"
  ./catscripts/Categorize.sh
fi

if [ $Omastar -ne 0 ];
then
  export CATFILE="Omastar.txt"
  export CATNAME="Omastar"
  ./catscripts/Categorize.sh
fi

if [ $Onix -ne 0 ];
then
  export CATFILE="Onix.txt"
  export CATNAME="Onix"
  ./catscripts/Categorize.sh
fi

if [ $Oshawott -ne 0 ];
then
  export CATFILE="Oshawott.txt"
  export CATNAME="Oshawott"
  ./catscripts/Categorize.sh
fi


rm Octillery.txt
rm Oddish.txt
rm Omanyte.txt
rm Omastar.txt
rm Onix.txt
rm Oshawott.txt
