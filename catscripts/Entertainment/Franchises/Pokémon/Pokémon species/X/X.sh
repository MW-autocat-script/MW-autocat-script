#!/bin/bash
cat newpages.txt | egrep -i 'Xatu' >> Xatu.txt

Xatu=`stat --print=%s Xatu.txt`

if [ $Xatu -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/X/catXatu.sh
fi

rm Xatu.txt
