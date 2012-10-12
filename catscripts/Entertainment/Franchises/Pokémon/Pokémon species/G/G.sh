#!/bin/bash



cat newpages.txt | egrep -i 'Gabite' >> Gabite.txt
cat newpages.txt | egrep -i 'Gallade' >> Gallade.txt
cat newpages.txt | egrep -i 'Garbodor' >> Garbodor.txt
cat newpages.txt | egrep -i 'Garchomp' >> Garchomp.txt
cat newpages.txt | egrep -i 'Gardevoir' >> Gardevoir.txt
cat newpages.txt | egrep -i 'Gastly' >> Gastly.txt
cat newpages.txt | egrep -i 'Gastrodon' >> Gastrodon.txt
cat newpages.txt | egrep -i 'Galvantula' >> Galvantula.txt
cat newpages.txt | egrep -i 'Genesect' >> Genesect.txt
cat newpages.txt | egrep -i 'Gengar' >> Gengar.txt
cat newpages.txt | egrep -i 'Geodude' >> Geodude.txt
cat newpages.txt | egrep -i '\bGible' >> Gible.txt
cat newpages.txt | egrep -i 'Gigalith' >> Gigalith.txt
cat newpages.txt | egrep -i 'Girafarig' >> Girafarig.txt
cat newpages.txt | egrep -i 'Giratina' >> Giratina.txt
cat newpages.txt | egrep -i 'Glaceon' >> Glaceon.txt
cat newpages.txt | egrep -i 'Glalie' >> Glalie.txt
cat newpages.txt | egrep -i 'Glameow' >> Glameow.txt
cat newpages.txt | egrep -i 'Gligar' >> Gligar.txt
cat newpages.txt | egrep -i 'Gliscor' >> Gliscor.txt
cat newpages.txt | egrep -i 'Gloom' >> Gloom.txt
cat newpages.txt | egrep -i 'Golbat' >> Golbat.txt
cat newpages.txt | egrep -i 'Goldeen' >> Goldeen.txt
cat newpages.txt | egrep -i 'Golduck' >> Golduck.txt
cat newpages.txt | egrep -i 'Golem' >> Golem.txt
cat newpages.txt | egrep -i 'Golett' >> Golett.txt
cat newpages.txt | egrep -i 'Golurk' >> Golurk.txt
cat newpages.txt | egrep -i 'Gorebyss' >> Gorebyss.txt
cat newpages.txt | egrep -i 'Gothita' >> Gothita.txt
cat newpages.txt | egrep -i 'Gothitelle' >> Gothitelle.txt
cat newpages.txt | egrep -i 'Gothorita' >> Gothorita.txt
cat newpages.txt | egrep -i 'Granbull' >> Granbull.txt
cat newpages.txt | egrep -i 'Graveler' >> Graveler.txt
cat newpages.txt | egrep -i 'Grimer' >> Grimer.txt
cat newpages.txt | egrep -i 'Grotle' >> Grotle.txt
cat newpages.txt | egrep -i 'Groudon' >> Groudon.txt
cat newpages.txt | egrep -i 'Grovyle' >> Grovyle.txt
cat newpages.txt | egrep -i 'Growlithe' >> Growlithe.txt
cat newpages.txt | egrep -i 'Grumpig' >> Grumpig.txt
cat newpages.txt | egrep -i 'Gulpin' >> Gulpin.txt
cat newpages.txt | egrep -i 'Gurdurr' >> Gurdurr.txt
cat newpages.txt | egrep -i 'Gyarados' >> Gyarados.txt

Gabite=`stat --print=%s Gabite.txt`
Gallade=`stat --print=%s Gallade.txt`
Garbodor=`stat --print=%s Garbodor.txt`
Garchomp=`stat --print=%s Garchomp.txt`
Gardevoir=`stat --print=%s Gardevoir.txt`
Gastly=`stat --print=%s Gastly.txt`
Gastrodon=`stat --print=%s Gastrodon.txt`
Galvantula=`stat --print=%s Galvantula.txt`
Genesect=`stat --print=%s Genesect.txt`
Gengar=`stat --print=%s Gengar.txt`
Geodude=`stat --print=%s Geodude.txt`
Gible=`stat --print=%s Gible.txt`
Gigalith=`stat --print=%s Gigalith.txt`
Girafarig=`stat --print=%s Girafarig.txt`
Giratina=`stat --print=%s Giratina.txt`
Glaceon=`stat --print=%s Glaceon.txt`
Glalie=`stat --print=%s Glalie.txt`
Glameow=`stat --print=%s Glameow.txt`
Gligar=`stat --print=%s Gligar.txt`
Gliscor=`stat --print=%s Gliscor.txt`
Gloom=`stat --print=%s Gloom.txt`
Golbat=`stat --print=%s Golbat.txt`
Goldeen=`stat --print=%s Goldeen.txt`
Golduck=`stat --print=%s Golduck.txt`
Golem=`stat --print=%s Golem.txt`
Golett=`stat --print=%s Golett.txt`
Golurk=`stat --print=%s Golurk.txt`
Gorebyss=`stat --print=%s Gorebyss.txt`
Gothita=`stat --print=%s Gothita.txt`
Gothitelle=`stat --print=%s Gothitelle.txt`
Gothorita=`stat --print=%s Gothorita.txt`
Granbull=`stat --print=%s Granbull.txt`
Graveler=`stat --print=%s Graveler.txt`
Grimer=`stat --print=%s Grimer.txt`
Grotle=`stat --print=%s Grotle.txt`
Groudon=`stat --print=%s Groudon.txt`
Grovyle=`stat --print=%s Grovyle.txt`
Growlithe=`stat --print=%s Growlithe.txt`
Grumpig=`stat --print=%s Grumpig.txt`
Gulpin=`stat --print=%s Gulpin.txt`
Gurdurr=`stat --print=%s Gurdurr.txt`
Gyarados=`stat --print=%s Gyarados.txt`

if [ $Gabite -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGabite.sh
fi

if [ $Gallade -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGallade.sh
fi

if [ $Garbodor -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGarbodor.sh
fi

if [ $Garchomp -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGarchomp.sh
fi

if [ $Gardevoir -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGardevoir.sh
fi

if [ $Gastly -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGastly.sh
fi

if [ $Gastrodon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGastrodon.sh
fi

if [ $Galvantula -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGalvantula.sh
fi

if [ $Genesect -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGenesect.sh
fi

if [ $Gengar -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGengar.sh
fi

if [ $Geodude -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGeodude.sh
fi

if [ $Gible -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGible.sh
fi

if [ $Gigalith -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGigalith.sh
fi

if [ $Girafarig -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGirafarig.sh
fi

if [ $Giratina -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGiratina.sh
fi

if [ $Glaceon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGlaceon.sh
fi

if [ $Glalie -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGlalie.sh
fi

if [ $Glameow -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGlameow.sh
fi

if [ $Gligar -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGligar.sh
fi

if [ $Gliscor -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGliscor.sh
fi

if [ $Gloom -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGloom.sh
fi

if [ $Golbat -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGolbat.sh
fi

if [ $Goldeen -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGoldeen.sh
fi

if [ $Golduck -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGolduck.sh
fi

if [ $Golem -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGolem.sh
fi

if [ $Golett -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGolett.sh
fi

if [ $Golurk -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGolurk.sh
fi

if [ $Gorebyss -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGorebyss.sh
fi

if [ $Gothita -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGothita.sh
fi

if [ $Gothitelle -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGothitelle.sh
fi

if [ $Gothorita -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGothorita.sh
fi

if [ $Granbull -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGranbull.sh
fi

if [ $Graveler -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGraveler.sh
fi

if [ $Grimer -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGrimer.sh
fi

if [ $Grotle -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGrotle.sh
fi

if [ $Groudon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGroudon.sh
fi

if [ $Grovyle -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGrovyle.sh
fi

if [ $Growlithe -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGrowlithe.sh
fi

if [ $Grumpig -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGrumpig.sh
fi

if [ $Gulpin -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGulpin.sh
fi

if [ $Gurdurr -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGurdurr.sh
fi

if [ $Gyarados -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/G/catGyarados.sh
fi


rm Gabite.txt
rm Gallade.txt
rm Garbodor.txt
rm Garchomp.txt
rm Gardevoir.txt
rm Gastly.txt
rm Gastrodon.txt
rm Galvantula.txt
rm Genesect.txt
rm Gengar.txt
rm Geodude.txt
rm Gible.txt
rm Gigalith.txt
rm Girafarig.txt
rm Giratina.txt
rm Glaceon.txt
rm Glalie.txt
rm Glameow.txt
rm Gligar.txt
rm Gliscor.txt
rm Gloom.txt
rm Golbat.txt
rm Goldeen.txt
rm Golduck.txt
rm Golem.txt
rm Golett.txt
rm Golurk.txt
rm Gorebyss.txt
rm Gothita.txt
rm Gothitelle.txt
rm Gothorita.txt
rm Granbull.txt
rm Graveler.txt
rm Grimer.txt
rm Grotle.txt
rm Groudon.txt
rm Grovyle.txt
rm Growlithe.txt
rm Grumpig.txt
rm Gulpin.txt
rm Gurdurr.txt
rm Gyarados.txt
