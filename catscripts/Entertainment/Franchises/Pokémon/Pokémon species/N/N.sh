#!/bin/bash
cat newpages.txt | egrep -i 'Natu\b' >> Natu.txt
cat newpages.txt | egrep -i 'Nidoking' >> Nidoking.txt
cat newpages.txt | egrep -i 'Nidoqueen' >> Nidoqueen.txt
cat newpages.txt | egrep -i 'Nidoran♀|Nidoran ♀|Nidoran (girl|female)|Nidoran \(female\)|(girl|female) Nidoran' >> Nidoran♀.txt
cat newpages.txt | egrep -i 'Nidoran♂|Nidoran ♂|Nidoran (boy|guy|male)|Nidoran \(male\)|(boy|guy|male) Nidoran' >> Nidoran♂.txt
cat newpages.txt | egrep -i 'Nidoran' | egrep -iv '♀|♀|girl|female|male|guy|boy' >> Nidoran♀.txt
cat newpages.txt | egrep -i 'Nidoran' | egrep -iv '♀|♀|girl|female|male|guy|boy' >> Nidoran♂.txt
cat newpages.txt | egrep -i 'Nidorina' >> Nidorina.txt
cat newpages.txt | egrep -i 'Nidorino' >> Nidorino.txt
cat newpages.txt | egrep -i 'Nincada' >> Nincada.txt
cat newpages.txt | egrep -i 'Ninetales' >> Ninetales.txt
cat newpages.txt | egrep -i 'Ninjask' >> Ninjask.txt
cat newpages.txt | egrep -i 'Noctowl' >> Noctowl.txt
cat newpages.txt | egrep -i 'Nosepass' >> Nosepass.txt
cat newpages.txt | egrep -i 'Numel' >> Numel.txt
cat newpages.txt | egrep -i 'Nuzleaf' >> Nuzleaf.txt

Natu=`stat --print=%s Natu.txt`
Nidoking=`stat --print=%s Nidoking.txt`
Nidoqueen=`stat --print=%s Nidoqueen.txt`
NidoranFemale=`stat --print=%s Nidoran♀.txt`
NidoranMale=`stat --print=%s Nidoran♂.txt`
Nidorina=`stat --print=%s Nidorina.txt`
Nidorino=`stat --print=%s Nidorino.txt`
Nincada=`stat --print=%s Nincada.txt`
Ninetales=`stat --print=%s Ninetales.txt`
Ninjask=`stat --print=%s Ninjask.txt`
Noctowl=`stat --print=%s Noctowl.txt`
Nosepass=`stat --print=%s Nosepass.txt`
Numel=`stat --print=%s Numel.txt`
Nuzleaf=`stat --print=%s Nuzleaf.txt`

if [ $Natu -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNatu.sh
fi

if [ $Nidoking -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNidoking.sh
fi

if [ $Nidoqueen -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNidoqueen.sh
fi

if [ $NidoranFemale -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNidoran♀.sh
fi

if [ $NidoranMale -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNidoran♂.sh
fi

if [ $Nidorina -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNidorina.sh
fi

if [ $Nidorino -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNidorino.sh
fi

if [ $Nincada -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNincada.sh
fi

if [ $Ninetales -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNinetales.sh
fi

if [ $Ninjask -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNinjask.sh
fi

if [ $Noctowl -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNoctowl.sh
fi

if [ $Nosepass -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNosepass.sh
fi

if [ $Numel -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNumel.sh
fi

if [ $Nuzleaf -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/N/catNuzleaf.sh
fi


rm Natu.txt
rm Nidoking.txt
rm Nidoqueen.txt
rm Nidoran♀.txt
rm Nidoran♂.txt
rm Nidorina.txt
rm Nidorino.txt
rm Nincada.txt
rm Ninetales.txt
rm Ninjask.txt
rm Noctowl.txt
rm Nosepass.txt
rm Numel.txt
rm Nuzleaf.txt
