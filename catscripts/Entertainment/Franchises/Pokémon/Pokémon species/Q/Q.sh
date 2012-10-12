#!/bin/bash
cat newpages.txt | egrep -i 'Quagsire' >> Quagsire.txt
cat newpages.txt | egrep -i 'Quilava' >> Quilava.txt
cat newpages.txt | egrep -i 'Qwilfish' >> Qwilfish.txt

Quagsire=`stat --print=%s Quagsire.txt`
Quilava=`stat --print=%s Quilava.txt`
Qwilfish=`stat --print=%s Qwilfish.txt`

if [ $Quagsire -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Q/catQuagsire.sh
fi

if [ $Quilava -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Q/catQuilava.sh
fi

if [ $Qwilfish -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Q/catQwilfish.sh
fi


rm Quagsire.txt
rm Quilava.txt
rm Qwilfish.txt
