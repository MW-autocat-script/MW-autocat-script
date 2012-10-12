#!/bin/bash
cat newpages.txt | egrep -i 'Umbreon' >> Umbreon.txt
cat newpages.txt | egrep -i 'Unfezant' >> Unfezant.txt
cat newpages.txt | egrep -i 'Unown' >> Unown.txt
cat newpages.txt | egrep -i 'Ursaring' >> Ursaring.txt
cat newpages.txt | egrep -i 'Uxie' >> Uxie.txt

Umbreon=`stat --print=%s Umbreon.txt`
Unfezant=`stat --print=%s Unfezant.txt`
Unown=`stat --print=%s Unown.txt`
Ursaring=`stat --print=%s Ursaring.txt`
Uxie=`stat --print=%s Uxie.txt`

if [ $Umbreon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/U/catUmbreon.sh
fi

if [ $Unfezant -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/U/catUnfezant.sh
fi

if [ $Unown -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/U/catUnown.sh
fi

if [ $Ursaring -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/U/catUrsaring.sh
fi

if [ $Uxie -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/U/catUxie.sh
fi


rm Umbreon.txt
rm Unfezant.txt
rm Unown.txt
rm Ursaring.txt
rm Uxie.txt
