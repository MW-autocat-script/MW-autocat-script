#!/bin/bash
cat newpages.txt | egrep -i 'Happiny' >> Happiny.txt
cat newpages.txt | egrep -i 'Hariyama' >> Hariyama.txt
cat newpages.txt | egrep -i 'Haunter' >> Haunter.txt
cat newpages.txt | egrep -i 'Haxorus' >> Haxorus.txt
cat newpages.txt | egrep -i 'Heatmor' >> Heatmor.txt
cat newpages.txt | egrep -i 'Heatran' >> Heatran.txt
cat newpages.txt | egrep -i 'Heracross' >> Heracross.txt
cat newpages.txt | egrep -i 'Herdier' >> Herdier.txt
cat newpages.txt | egrep -i 'Hippopotas' >> Hippopotas.txt
cat newpages.txt | egrep -i 'Hippowdon' >> Hippowdon.txt
cat newpages.txt | egrep -i 'Hitmonchan' >> Hitmonchan.txt
cat newpages.txt | egrep -i 'Hitmonlee' >> Hitmonlee.txt
cat newpages.txt | egrep -i 'Hitmontop' >> Hitmontop.txt
cat newpages.txt | egrep -i 'Ho-Oh' >> Ho-Oh.txt
cat newpages.txt | egrep -i 'Honchkrow' >> Honchkrow.txt
cat newpages.txt | egrep -i 'Hoothoot' >> Hoothoot.txt
cat newpages.txt | egrep -i 'Hoppip' >> Hoppip.txt
cat newpages.txt | egrep -i 'Horsea' >> Horsea.txt
cat newpages.txt | egrep -i 'Houndoom' >> Houndoom.txt
cat newpages.txt | egrep -i 'Houndour' >> Houndour.txt
cat newpages.txt | egrep -i 'Huntail' >> Huntail.txt
cat newpages.txt | egrep -i 'Hydreigon' >> Hydreigon.txt
cat newpages.txt | egrep -i 'Hypno\b' >> Hypno.txt

Happiny=`stat --print=%s Happiny.txt`
Hariyama=`stat --print=%s Hariyama.txt`
Haunter=`stat --print=%s Haunter.txt`
Haxorus=`stat --print=%s Haxorus.txt`
Heatmor=`stat --print=%s Heatmor.txt`
Heatran=`stat --print=%s Heatran.txt`
Heracross=`stat --print=%s Heracross.txt`
Herdier=`stat --print=%s Herdier.txt`
Hippopotas=`stat --print=%s Hippopotas.txt`
Hippowdon=`stat --print=%s Hippowdon.txt`
Hitmonchan=`stat --print=%s Hitmonchan.txt`
Hitmonlee=`stat --print=%s Hitmonlee.txt`
Hitmontop=`stat --print=%s Hitmontop.txt`
HoOh=`stat --print=%s Ho-Oh.txt`
Honchkrow=`stat --print=%s Honchkrow.txt`
Hoothoot=`stat --print=%s Hoothoot.txt`
Hoppip=`stat --print=%s Hoppip.txt`
Horsea=`stat --print=%s Horsea.txt`
Houndoom=`stat --print=%s Houndoom.txt`
Houndour=`stat --print=%s Houndour.txt`
Huntail=`stat --print=%s Huntail.txt`
Hydreigon=`stat --print=%s Hydreigon.txt`
Hypno=`stat --print=%s Hypno.txt`

if [ $Happiny -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHappiny.sh
fi

if [ $Hariyama -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHariyama.sh
fi

if [ $Haunter -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHaunter.sh
fi

if [ $Haxorus -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHaxorus.sh
fi

if [ $Heatmor -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHeatmor.sh
fi

if [ $Heatran -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHeatran.sh
fi

if [ $Heracross -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHeracross.sh
fi

if [ $Herdier -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHerdier.sh
fi

if [ $Hippopotas -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHippopotas.sh
fi

if [ $Hippowdon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHippowdon.sh
fi

if [ $Hitmonchan -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHitmonchan.sh
fi

if [ $Hitmonlee -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHitmonlee.sh
fi

if [ $Hitmontop -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHitmontop.sh
fi

if [ $HoOh -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHo-Oh.sh
fi

if [ $Honchkrow -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHonchkrow.sh
fi

if [ $Hoothoot -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHoothoot.sh
fi

if [ $Hoppip -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHoppip.sh
fi

if [ $Horsea -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHorsea.sh
fi

if [ $Houndoom -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHoundoom.sh
fi

if [ $Houndour -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHoundour.sh
fi

if [ $Huntail -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHuntail.sh
fi

if [ $Hydreigon -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHydreigon.sh
fi

if [ $Hypno -ne 0 ];
then
   ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/H/catHypno.sh
fi


rm Happiny.txt
rm Hariyama.txt
rm Haunter.txt
rm Haxorus.txt
rm Heatmor.txt
rm Heatran.txt
rm Heracross.txt
rm Herdier.txt
rm Hippopotas.txt
rm Hippowdon.txt
rm Hitmonchan.txt
rm Hitmonlee.txt
rm Hitmontop.txt
rm Ho-Oh.txt
rm Honchkrow.txt
rm Hoothoot.txt
rm Hoppip.txt
rm Horsea.txt
rm Houndoom.txt
rm Houndour.txt
rm Huntail.txt
rm Hydreigon.txt
rm Hypno.txt
