#!/bin/bash
cat newpages.txt | egrep -i 'Kabuto\b' >> Kabuto.txt
cat newpages.txt | egrep -i 'Kabutops' >> Kabutops.txt
cat newpages.txt | egrep -i 'Kadabra' >> Kadabra.txt
cat newpages.txt | egrep -i 'Kakuna' >> Kakuna.txt
cat newpages.txt | egrep -i 'Kangaskhan' >> Kangaskhan.txt
cat newpages.txt | egrep -i 'Karrablast' >> Karrablast.txt
cat newpages.txt | egrep -i 'Kecleon' >> Kecleon.txt
cat newpages.txt | egrep -i 'Keldeo' >> Keldeo.txt
cat newpages.txt | egrep -i 'Kingdra' >> Kingdra.txt
cat newpages.txt | egrep -i 'Kingler' >> Kingler.txt
cat newpages.txt | egrep -i 'Kirlia' >> Kirlia.txt
cat newpages.txt | egrep -i 'Klang' >> Klang.txt
cat newpages.txt | egrep -i 'Klink' >> Klink.txt
cat newpages.txt | egrep -i 'Klinklang' >> Klinklang.txt
cat newpages.txt | egrep -i 'Koffing' >> Koffing.txt
cat newpages.txt | egrep -i 'Krabby' >> Krabby.txt
cat newpages.txt | egrep -i 'Kricketot' >> Kricketot.txt
cat newpages.txt | egrep -i 'Kricketune' >> Kricketune.txt
cat newpages.txt | egrep -i 'Krookodile' >> Krookodile.txt
cat newpages.txt | egrep -i 'Krokorok' >> Krokorok.txt
cat newpages.txt | egrep -i 'Kyogre' >> Kyogre.txt
cat newpages.txt | egrep -i 'Kyurem' >> Kyurem.txt

Kabuto=`stat --print=%s Kabuto.txt`
Kabutops=`stat --print=%s Kabutops.txt`
Kadabra=`stat --print=%s Kadabra.txt`
Kakuna=`stat --print=%s Kakuna.txt`
Kangaskhan=`stat --print=%s Kangaskhan.txt`
Karrablast=`stat --print=%s Karrablast.txt`
Kecleon=`stat --print=%s Kecleon.txt`
Keldeo=`stat --print=%s Keldeo.txt`
Kingdra=`stat --print=%s Kingdra.txt`
Kingler=`stat --print=%s Kingler.txt`
Kirlia=`stat --print=%s Kirlia.txt`
Klang=`stat --print=%s Klang.txt`
Klink=`stat --print=%s Klink.txt`
Klinklang=`stat --print=%s Klinklang.txt`
Koffing=`stat --print=%s Koffing.txt`
Krabby=`stat --print=%s Krabby.txt`
Kricketot=`stat --print=%s Kricketot.txt`
Kricketune=`stat --print=%s Kricketune.txt`
Krookodile=`stat --print=%s Krookodile.txt`
Krokorok=`stat --print=%s Krokorok.txt`
Kyogre=`stat --print=%s Kyogre.txt`
Kyurem=`stat --print=%s Kyurem.txt`

if [ $Kabuto -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKabuto.sh
fi

if [ $Kabutops -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKabutops.sh
fi

if [ $Kadabra -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKadabra.sh
fi

if [ $Kakuna -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKakuna.sh
fi

if [ $Kangaskhan -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKangaskhan.sh
fi

if [ $Karrablast -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKarrablast.sh
fi

if [ $Kecleon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKecleon.sh
fi

if [ $Keldeo -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKeldeo.sh
fi

if [ $Kingdra -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKingdra.sh
fi

if [ $Kingler -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKingler.sh
fi

if [ $Kirlia -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKirlia.sh
fi

if [ $Klang -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKlang.sh
fi

if [ $Klink -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKlink.sh
fi

if [ $Klinklang -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKlinklang.sh
fi

if [ $Koffing -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKoffing.sh
fi

if [ $Krabby -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKrabby.sh
fi

if [ $Kricketot -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKricketot.sh
fi

if [ $Kricketune -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKricketune.sh
fi

if [ $Krookodile -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKrookodile.sh
fi

if [ $Krokorok -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKrokorok.sh
fi

if [ $Kyogre -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKyogre.sh
fi

if [ $Kyurem -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/K/catKyurem.sh
fi


rm Kabuto.txt
rm Kabutops.txt
rm Kadabra.txt
rm Kakuna.txt
rm Kangaskhan.txt
rm Karrablast.txt
rm Kecleon.txt
rm Keldeo.txt
rm Kingdra.txt
rm Kingler.txt
rm Kirlia.txt
rm Klang.txt
rm Klink.txt
rm Klinklang.txt
rm Koffing.txt
rm Krabby.txt
rm Kricketot.txt
rm Kricketune.txt
rm Krookodile.txt
rm Krokorok.txt
rm Kyogre.txt
rm Kyurem.txt
