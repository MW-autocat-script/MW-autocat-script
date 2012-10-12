#!/bin/bash
cat newpages.txt | egrep -i "Farfetch'd|Farfetchd" >> Farfetchd.txt
cat newpages.txt | egrep -i 'Fearow' >> Fearow.txt
cat newpages.txt | egrep -i 'Feebas' >> Feebas.txt
cat newpages.txt | egrep -i 'Feraligatr' >> Feraligatr.txt
cat newpages.txt | egrep -i 'Ferroseed' >> Ferroseed.txt
cat newpages.txt | egrep -i 'Ferrothorn' >> Ferrothorn.txt
cat newpages.txt | egrep -i 'Finneon' >> Finneon.txt
cat newpages.txt | egrep -i 'Flaaffy' >> Flaaffy.txt
cat newpages.txt | egrep -i 'Flareon' >> Flareon.txt
cat newpages.txt | egrep -i 'Floatzel' >> Floatzel.txt
cat newpages.txt | egrep -i 'Flygon' >> Flygon.txt
cat newpages.txt | egrep -i 'Foongus' >> Foongus.txt
cat newpages.txt | egrep -i 'Forretress' >> Forretress.txt
cat newpages.txt | egrep -i 'Fraxure' >> Fraxure.txt
cat newpages.txt | egrep -i 'Frillish' >> Frillish.txt
cat newpages.txt | egrep -i 'Froslass' >> Froslass.txt
cat newpages.txt | egrep -i 'Furret' >> Furret.txt

Farfetchd=`stat --print=%s Farfetchd.txt`
Fearow=`stat --print=%s Fearow.txt`
Feebas=`stat --print=%s Feebas.txt`
Feraligatr=`stat --print=%s Feraligatr.txt`
Ferroseed=`stat --print=%s Ferroseed.txt`
Ferrothorn=`stat --print=%s Ferrothorn.txt`
Finneon=`stat --print=%s Finneon.txt`
Flaaffy=`stat --print=%s Flaaffy.txt`
Flareon=`stat --print=%s Flareon.txt`
Floatzel=`stat --print=%s Floatzel.txt`
Flygon=`stat --print=%s Flygon.txt`
Foongus=`stat --print=%s Foongus.txt`
Forretress=`stat --print=%s Forretress.txt`
Fraxure=`stat --print=%s Fraxure.txt`
Frillish=`stat --print=%s Frillish.txt`
Froslass=`stat --print=%s Froslass.txt`
Furret=`stat --print=%s Furret.txt`

if [ $Farfetchd -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFarfetchd.sh
fi

if [ $Fearow -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFearow.sh
fi

if [ $Feebas -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFeebas.sh
fi

if [ $Feraligatr -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFeraligatr.sh
fi

if [ $Ferroseed -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFerroseed.sh
fi

if [ $Ferrothorn -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFerrothorn.sh
fi

if [ $Finneon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFinneon.sh
fi

if [ $Flaaffy -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFlaaffy.sh
fi

if [ $Flareon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFlareon.sh
fi

if [ $Floatzel -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFloatzel.sh
fi

if [ $Flygon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFlygon.sh
fi

if [ $Foongus -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFoongus.sh
fi

if [ $Forretress -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catForretress.sh
fi

if [ $Fraxure -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFraxure.sh
fi

if [ $Frillish -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFrillish.sh
fi

if [ $Froslass -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFroslass.sh
fi

if [ $Furret -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/F/catFurret.sh
fi


rm Farfetchd.txt
rm Fearow.txt
rm Feebas.txt
rm Feraligatr.txt
rm Ferroseed.txt
rm Ferrothorn.txt
rm Finneon.txt
rm Flaaffy.txt
rm Flareon.txt
rm Floatzel.txt
rm Flygon.txt
rm Foongus.txt
rm Forretress.txt
rm Fraxure.txt
rm Frillish.txt
rm Froslass.txt
rm Furret.txt
