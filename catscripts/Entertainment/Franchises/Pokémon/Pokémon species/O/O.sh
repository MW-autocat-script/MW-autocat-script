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
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/O/catOctillery.sh
fi

if [ $Oddish -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/O/catOddish.sh
fi

if [ $Omanyte -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/O/catOmanyte.sh
fi

if [ $Omastar -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/O/catOmastar.sh
fi

if [ $Onix -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/O/catOnix.sh
fi

if [ $Oshawott -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/O/catOshawott.sh
fi


rm Octillery.txt
rm Oddish.txt
rm Omanyte.txt
rm Omastar.txt
rm Onix.txt
rm Oshawott.txt
