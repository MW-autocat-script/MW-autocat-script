#!/bin/bash
cat newpages.txt | egrep -i 'Eelektrik' >> Eelektrik.txt
cat newpages.txt | egrep -i 'Eelektross' >> Eelektross.txt
cat newpages.txt | egrep -i 'Eevee' >> Eevee.txt
cat newpages.txt | egrep -i 'Ekans' >> Ekans.txt
cat newpages.txt | egrep -i 'Electabuzz' >> Electabuzz.txt
cat newpages.txt | egrep -i 'Electivire' >> Electivire.txt
cat newpages.txt | egrep -i 'Electrike' >> Electrike.txt
cat newpages.txt | egrep -i 'Electrode' >> Electrode.txt
cat newpages.txt | egrep -i 'Elekid' >> Elekid.txt
cat newpages.txt | egrep -i 'Elgyem' >> Elgyem.txt
cat newpages.txt | egrep -i 'Emboar' >> Emboar.txt
cat newpages.txt | egrep -i 'Emolga' >> Emolga.txt
cat newpages.txt | egrep -i 'Empoleon' >> Empoleon.txt
cat newpages.txt | egrep -i 'Entei' >> Entei.txt
cat newpages.txt | egrep -i 'Escavalier' >> Escavalier.txt
cat newpages.txt | egrep -i 'Espeon' >> Espeon.txt
cat newpages.txt | egrep -i 'Excadrill' >> Excadrill.txt
cat newpages.txt | egrep -i 'Exeggcute' >> Exeggcute.txt
cat newpages.txt | egrep -i 'Exeggutor' >> Exeggutor.txt
cat newpages.txt | egrep -i 'Exploud' >> Exploud.txt


Eelektrik=`stat --print=%s Eelektrik.txt`
Eelektross=`stat --print=%s Eelektross.txt`
Eevee=`stat --print=%s Eevee.txt`
Ekans=`stat --print=%s Ekans.txt`
Electabuzz=`stat --print=%s Electabuzz.txt`
Electivire=`stat --print=%s Electivire.txt`
Electrike=`stat --print=%s Electrike.txt`
Electrode=`stat --print=%s Electrode.txt`
Elekid=`stat --print=%s Elekid.txt`
Elgyem=`stat --print=%s Elgyem.txt`
Emboar=`stat --print=%s Emboar.txt`
Emolga=`stat --print=%s Emolga.txt`
Empoleon=`stat --print=%s Empoleon.txt`
Entei=`stat --print=%s Entei.txt`
Escavalier=`stat --print=%s Escavalier.txt`
Espeon=`stat --print=%s Espeon.txt`
Excadrill=`stat --print=%s Excadrill.txt`
Exeggcute=`stat --print=%s Exeggcute.txt`
Exeggutor=`stat --print=%s Exeggutor.txt`
Exploud=`stat --print=%s Exploud.txt`

if [ $Eelektrik -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catEelektrik.sh
fi

if [ $Eelektross -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catEelektross.sh
fi

if [ $Eevee -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catEevee.sh
fi

if [ $Ekans -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catEkans.sh
fi

if [ $Electabuzz -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catElectabuzz.sh
fi

if [ $Electivire -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catElectivire.sh
fi

if [ $Electrike -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catElectrike.sh
fi

if [ $Electrode -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catElectrode.sh
fi

if [ $Elekid -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catElekid.sh
fi

if [ $Elgyem -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catElgyem.sh
fi

if [ $Emboar -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catEmboar.sh
fi

if [ $Emolga -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catEmolga.sh
fi

if [ $Empoleon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catEmpoleon.sh
fi

if [ $Entei -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catEntei.sh
fi

if [ $Escavalier -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catEscavalier.sh
fi

if [ $Espeon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catEspeon.sh
fi

if [ $Excadrill -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catExcadrill.sh
fi

if [ $Exeggcute -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catExeggcute.sh
fi

if [ $Exeggutor -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catExeggutor.sh
fi

if [ $Exploud -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/E/catExploud.sh
fi

rm Eelektrik.txt
rm Eelektross.txt
rm Eevee.txt
rm Ekans.txt
rm Electabuzz.txt
rm Electivire.txt
rm Electrike.txt
rm Electrode.txt
rm Elekid.txt
rm Elgyem.txt
rm Emboar.txt
rm Emolga.txt
rm Empoleon.txt
rm Entei.txt
rm Escavalier.txt
rm Espeon.txt
rm Excadrill.txt
rm Exeggcute.txt
rm Exeggutor.txt
rm Exploud.txt
