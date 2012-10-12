#!/bin/bash
cat newpages.txt | egrep -i 'Igglybuff' >> Igglybuff.txt
cat newpages.txt | egrep -i 'Illumise' >> Illumise.txt
cat newpages.txt | egrep -i 'Infernape' >> Infernape.txt
cat newpages.txt | egrep -i 'Ivysaur' >> Ivysaur.txt

Igglybuff=`stat --print=%s Igglybuff.txt`
Illumise=`stat --print=%s Illumise.txt`
Infernape=`stat --print=%s Infernape.txt`
Ivysaur=`stat --print=%s Ivysaur.txt`

if [ $Igglybuff -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/I/catIgglybuff.sh
fi

if [ $Illumise -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/I/catIllumise.sh
fi

if [ $Infernape -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/I/catInfernape.sh
fi

if [ $Ivysaur -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/I/catIvysaur.sh
fi

rm Igglybuff.txt
rm Illumise.txt
rm Infernape.txt
rm Ivysaur.txt
