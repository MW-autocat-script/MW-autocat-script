#!/bin/bash


cat newpages.txt | egrep -i '\bAbomasnow' >> Abomasnow.txt

cat newpages.txt | egrep -i '\bAbra\b' >> Abra.txt

cat newpages.txt | egrep -i '\bAbsol\b' >> Absol.txt

cat newpages.txt | egrep -i '\bAccelgor' >> Accelgor.txt

cat newpages.txt | egrep -i '\bAerodactyl' >> Aerodactyl.txt

cat newpages.txt | egrep -i '\bAggron' >> Aggron.txt

cat newpages.txt | egrep -i '\bAipom' >> Aipom.txt

cat newpages.txt | egrep -i '\bAlakazam' >> Alakazam.txt

cat newpages.txt | egrep -i '\bAlomomola' >> Alomomola.txt

cat newpages.txt | egrep -i '\bAltaria' >> Altaria.txt

cat newpages.txt | egrep -i '\bAmbipom' >> Ambipom.txt

cat newpages.txt | egrep -i '\bAmoonguss' >> Amoonguss.txt

cat newpages.txt | egrep -i '\bAmpharos' >> Ampharos.txt

cat newpages.txt | egrep -i '\bAnorith' >> Anorith.txt

cat newpages.txt | egrep -i '\bArbok' >> Arbok.txt

cat newpages.txt | egrep -i '\bArcanine' >> Arcanine.txt

cat newpages.txt | egrep -i '\bArceus' >> Arceus.txt

cat newpages.txt | egrep -i '\bArchen\b' >> Archen.txt

cat newpages.txt | egrep -i '\bArcheops' >> Archeops.txt

cat newpages.txt | egrep -i '\bAriados' >> Ariados.txt

cat newpages.txt | egrep -i '\bArmaldo' >> Armaldo.txt

cat newpages.txt | egrep -i '\bAron\b|\bArons\b' >> Aron.txt

cat newpages.txt | egrep -i '\bArticuno' >> Articuno.txt

cat newpages.txt | egrep -i '\bAudino' >> Audino.txt

cat newpages.txt | egrep -i '\bAxew' >> Axew.txt

cat newpages.txt | egrep -i '\bAzelf' >> Azelf.txt

cat newpages.txt | egrep -i '\bAzumarill' >> Azumarill.txt

cat newpages.txt | egrep -i '\bAzurill' >> Azurill.txt

ABOMASNOW=`stat --print=%s Abomasnow.txt`
ABRA=`stat --print=%s Abra.txt` 
ABSOL=`stat --print=%s Absol.txt` 
ACCELGOR=`stat --print=%s Accelgor.txt` 
AERODACTYL=`stat --print=%s Aerodactyl.txt`
AGGRON=`stat --print=%s Aggron.txt` 
AIPOM=`stat --print=%s Aipom.txt` 
ALAKAZAM=`stat --print=%s Alakazam.txt` 
ALOMOMOLA=`stat --print=%s Alomomola.txt` 
ALTARIA=`stat --print=%s Altaria.txt` 
AMBIPOM=`stat --print=%s Ambipom.txt` 
AMOONGUSS=`stat --print=%s Amoonguss.txt` 
AMPHAROS=`stat --print=%s Ampharos.txt` 
ANORITH=`stat --print=%s Anorith.txt` 
ARBOK=`stat --print=%s Arbok.txt` 
ARCANINE=`stat --print=%s Arcanine.txt` 
ARCEUS=`stat --print=%s Arceus.txt` 
ARCHEN=`stat --print=%s Archen.txt` 
ARCHEOPS=`stat --print=%s Archeops.txt` 
ARIADOS=`stat --print=%s Ariados.txt` 
ARMALDO=`stat --print=%s Armaldo.txt` 
ARON=`stat --print=%s Aron.txt` 
ARTICUNO=`stat --print=%s Articuno.txt` 
AUDINO=`stat --print=%s Audino.txt` 
AXEW=`stat --print=%s Axew.txt` 
AZELF=`stat --print=%s Azelf.txt` 
AZUMARILL=`stat --print=%s Azumarill.txt` 
AZURILL=`stat --print=%s Azurill.txt`


if [ $ABOMASNOW -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAbomasnow.sh
fi


if [ $ABRA -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAbra.sh
fi


if [ $ABSOL -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAbsol.sh
fi


if [ $ACCELGOR -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAccelgor.sh
fi


if [ $AERODACTYL -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAerodactyl.sh
fi


if [ $AGGRON -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAggron.sh
fi


if [ $AIPOM -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAipom.sh
fi


if [ $ALAKAZAM -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAlakazam.sh
fi


if [ $ALOMOMOLA -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAlomomola.sh
fi


if [ $ALTARIA -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon species/A/catAltaria.sh
fi


if [ $AMBIPOM -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon species/A/catAmbipom.sh
fi


if [ $AMOONGUSS -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon species/A/catAmoonguss.sh
fi


if [ $AMPHAROS -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon species/A/catAmpharos.sh
fi


if [ $ANORITH -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon species/A/catAnorith.sh
fi


if [ $ARBOK -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon species/A/catArbok.sh
fi


if [ $ARCANINE -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon species/A/catArcanine.sh
fi


if [ $ARCEUS -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catArceus.sh
fi


if [ $ARCHEN -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catArchen.sh
fi


if [ $ARCHEOPS -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catArcheops.sh
fi


if [ $ARIADOS -ne 0 ]; 
then
  ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAriados.sh
fi


if [ $ARMALDO -ne 0 ]; 
then
    ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catArmaldo.sh
fi


if [ $ARON -ne 0 ]; 
then
    ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAron.sh
fi


if [ $ARTICUNO -ne 0 ]; 
then
    ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catArticuno.sh
fi


if [ $AUDINO -ne 0 ]; 
then
    ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAudino.sh
fi


if [ $AXEW -ne 0 ]; 
then
    ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAxew.sh
fi


if [ $AZELF -ne 0 ]; 
then
    ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAzelf.sh
fi


if [ $AZUMARILL -ne 0 ]; 
then
    ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAzumarill.sh
fi


if [ $AZURILL -ne 0 ]; 
then
    ./catscripts/Entertainment/Franchises/Pokémon/Pokémon\ species/A/catAzurill.sh
fi







rm Abomasnow.txt
rm Abra.txt
rm Absol.txt
rm Accelgor.txt
rm Aerodactyl.txt
rm Aggron.txt
rm Aipom.txt
rm Alakazam.txt
rm Alomomola.txt
rm Altaria.txt
rm Ambipom.txt
rm Amoonguss.txt
rm Ampharos.txt
rm Anorith.txt
rm Arbok.txt
rm Arcanine.txt
rm Arceus.txt
rm Archen.txt
rm Archeops.txt
rm Ariados.txt
rm Armaldo.txt
rm Aron.txt
rm Articuno.txt
rm Audino.txt
rm Axew.txt
rm Azelf.txt
rm Azumarill.txt
rm Azurill.txt