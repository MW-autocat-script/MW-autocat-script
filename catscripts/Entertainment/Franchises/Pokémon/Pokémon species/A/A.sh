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
   export CATFILE="Abomasnow.txt"
   export CATNAME="Abomasnow"
   ./catscripts/Categorize.sh
fi


if [ $ABRA -ne 0 ]; 
then
   export CATFILE="Abra.txt"
   export CATNAME="Abra"
   ./catscripts/Categorize.sh
fi


if [ $ABSOL -ne 0 ]; 
then
   export CATFILE="Absol.txt"
   export CATNAME="Absol"
   ./catscripts/Categorize.sh
fi


if [ $ACCELGOR -ne 0 ]; 
then
   export CATFILE="Accelgor.txt"
   export CATNAME="Accelgor"
   ./catscripts/Categorize.sh
fi


if [ $AERODACTYL -ne 0 ]; 
then
   export CATFILE="Aerodactyl.txt"
   export CATNAME="Aerodactyl"
   ./catscripts/Categorize.sh
fi


if [ $AGGRON -ne 0 ]; 
then
   export CATFILE="Aggron.txt"
   export CATNAME="Aggron"
   ./catscripts/Categorize.sh
fi


if [ $AIPOM -ne 0 ]; 
then
   export CATFILE="Aipom.txt"
   export CATNAME="Aipom"
   ./catscripts/Categorize.sh
fi


if [ $ALAKAZAM -ne 0 ]; 
then
   export CATFILE="Alakazam.txt"
   export CATNAME="Alakazam"
   ./catscripts/Categorize.sh
fi


if [ $ALOMOMOLA -ne 0 ]; 
then
   export CATFILE="Alomomola.txt"
   export CATNAME="Alomomola"
   ./catscripts/Categorize.sh
fi


if [ $ALTARIA -ne 0 ]; 
then
   export CATFILE="Altaria.txt"
   export CATNAME="Altaria"
   ./catscripts/Categorize.sh
fi


if [ $AMBIPOM -ne 0 ]; 
then
   export CATFILE="Ambipom.txt"
   export CATNAME="Ambipom"
   ./catscripts/Categorize.sh
fi


if [ $AMOONGUSS -ne 0 ]; 
then
   export CATFILE="Amoonguss.txt"
   export CATNAME="Amoonguss"
   ./catscripts/Categorize.sh
fi


if [ $AMPHAROS -ne 0 ]; 
then
   export CATFILE="Ampharos.txt"
   export CATNAME="Ampharos"
   ./catscripts/Categorize.sh
fi


if [ $ANORITH -ne 0 ]; 
then
   export CATFILE="Anorith.txt"
   export CATNAME="Anorith"
   ./catscripts/Categorize.sh
fi


if [ $ARBOK -ne 0 ]; 
then
   export CATFILE="Arbok.txt"
   export CATNAME="Arbok"
   ./catscripts/Categorize.sh
fi


if [ $ARCANINE -ne 0 ]; 
then
   export CATFILE="Arcanine.txt"
   export CATNAME="Arcanine"
   ./catscripts/Categorize.sh
fi


if [ $ARCEUS -ne 0 ]; 
then
   export CATFILE="Arceus.txt"
   export CATNAME="Arceus"
   ./catscripts/Categorize.sh
fi


if [ $ARCHEN -ne 0 ]; 
then
   export CATFILE="Archen.txt"
   export CATNAME="Archen"
   ./catscripts/Categorize.sh
fi


if [ $ARCHEOPS -ne 0 ]; 
then
   export CATFILE="Archeops.txt"
   export CATNAME="Archeops"
   ./catscripts/Categorize.sh
fi


if [ $ARIADOS -ne 0 ]; 
then
   export CATFILE="Ariados.txt"
   export CATNAME="Ariados"
   ./catscripts/Categorize.sh
fi


if [ $ARMALDO -ne 0 ]; 
then
   export CATFILE="Armaldo.txt"
   export CATNAME="Armaldo"
   ./catscripts/Categorize.sh
fi


if [ $ARON -ne 0 ]; 
then
   export CATFILE="Aron.txt"
   export CATNAME="Aron"
   ./catscripts/Categorize.sh
fi


if [ $ARTICUNO -ne 0 ]; 
then
   export CATFILE="Articuno.txt"
   export CATNAME="Articuno"
   ./catscripts/Categorize.sh
fi


if [ $AUDINO -ne 0 ]; 
then
   export CATFILE="Audino.txt"
   export CATNAME="Audino"
   ./catscripts/Categorize.sh
fi


if [ $AXEW -ne 0 ]; 
then
   export CATFILE="Axew.txt"
   export CATNAME="Axew"
   ./catscripts/Categorize.sh
fi


if [ $AZELF -ne 0 ]; 
then
   export CATFILE="Azelf.txt"
   export CATNAME="Azelf"
   ./catscripts/Categorize.sh
fi


if [ $AZUMARILL -ne 0 ]; 
then
   export CATFILE="Azumarill.txt"
   export CATNAME="Azumarill"
   ./catscripts/Categorize.sh
fi


if [ $AZURILL -ne 0 ]; 
then
   export CATFILE="Azurill.txt"
   export CATNAME="Azurill"
   ./catscripts/Categorize.sh
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