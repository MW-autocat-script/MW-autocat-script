#!/bin/bash
cat newpages.txt | egrep -i 'Zangoose' >> Zangoose.txt
cat newpages.txt | egrep -i 'Zapdos' >> Zapdos.txt
cat newpages.txt | egrep -i 'Zebstrika' >> Zebstrika.txt
cat newpages.txt | egrep -i 'Zekrom' >> Zekrom.txt
cat newpages.txt | egrep -i 'Zigzagoon' >> Zigzagoon.txt
cat newpages.txt | egrep -i 'Zoroark' >> Zoroark.txt
cat newpages.txt | egrep -i 'Zorua' >> Zorua.txt
cat newpages.txt | egrep -i 'Zweilous' >> Zweilous.txt
cat newpages.txt | egrep -i 'Zubat' >> Zubat.txt

Zangoose=`stat --print=%s Zangoose.txt`
Zapdos=`stat --print=%s Zapdos.txt`
Zebstrika=`stat --print=%s Zebstrika.txt`
Zekrom=`stat --print=%s Zekrom.txt`
Zigzagoon=`stat --print=%s Zigzagoon.txt`
Zoroark=`stat --print=%s Zoroark.txt`
Zorua=`stat --print=%s Zorua.txt`
Zweilous=`stat --print=%s Zweilous.txt`
Zubat=`stat --print=%s Zubat.txt`

if [ $Zangoose -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Z/catZangoose.sh
fi

if [ $Zapdos -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Z/catZapdos.sh
fi

if [ $Zebstrika -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Z/catZebstrika.sh
fi

if [ $Zekrom -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Z/catZekrom.sh
fi

if [ $Zigzagoon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Z/catZigzagoon.sh
fi

if [ $Zoroark -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Z/catZoroark.sh
fi

if [ $Zorua -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Z/catZorua.sh
fi

if [ $Zweilous -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Z/catZweilous.sh
fi

if [ $Zubat -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/Z/catZubat.sh
fi


rm Zangoose.txt
rm Zapdos.txt
rm Zebstrika.txt
rm Zekrom.txt
rm Zigzagoon.txt
rm Zoroark.txt
rm Zorua.txt
rm Zweilous.txt
rm Zubat.txt
