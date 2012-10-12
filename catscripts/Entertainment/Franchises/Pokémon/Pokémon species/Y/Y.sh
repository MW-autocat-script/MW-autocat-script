#!/bin/bash
cat newpages.txt | egrep -i 'Yamask' >> Yamask.txt
cat newpages.txt | egrep -i '\bYanma\b' >> Yanma.txt
cat newpages.txt | egrep -i 'Yanmega' >> Yanmega.txt

Yamask=`stat --print=%s Yamask.txt`
Yanma=`stat --print=%s Yanma.txt`
Yanmega=`stat --print=%s Yanmega.txt`

if [ $Yamask -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Y/catYamask.sh
fi

if [ $Yanma -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Y/catYanma.sh
fi

if [ $Yanmega -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Y/catYanmega.sh
fi


rm Yamask.txt
rm Yanma.txt
rm Yanmega.txt
