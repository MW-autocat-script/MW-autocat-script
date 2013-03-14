#!/bin/bash
#Pokemon species by name, starting with the letter A

egrep -i '\bAbomasnow' newpages.txt >> Abomasnow.txt
egrep -i '\bAbra\b' newpages.txt >> Abra.txt
egrep -i '\bAbsol\b' newpages.txt >> Absol.txt
egrep -i '\bAccelgor' newpages.txt >> Accelgor.txt
egrep -i '\bAerodactyl' newpages.txt >> Aerodactyl.txt
egrep -i '\bAggron' newpages.txt >> Aggron.txt
egrep -i '\bAipom' newpages.txt >> Aipom.txt
egrep -i '\bAlakazam' newpages.txt >> Alakazam.txt
egrep -i '\bAlomomola' newpages.txt >> Alomomola.txt
egrep -i '\bAltaria' newpages.txt >> Altaria.txt
egrep -i '\bAmbipom' newpages.txt >> Ambipom.txt
egrep -i '\bAmoonguss' newpages.txt >> Amoonguss.txt
egrep -i '\bAmpharos' newpages.txt >> Ampharos.txt
egrep -i '\bAnorith' newpages.txt >> Anorith.txt
egrep -i '\bArbok' newpages.txt >> Arbok.txt
egrep -i '\bArcanine' newpages.txt >> Arcanine.txt
egrep -i '\bArceus' newpages.txt >> Arceus.txt
egrep -i '\bArchen\b' newpages.txt >> Archen.txt
egrep -i '\bArcheops' newpages.txt >> Archeops.txt
egrep -i '\bAriados' newpages.txt >> Ariados.txt
egrep -i '\bArmaldo' newpages.txt >> Armaldo.txt
egrep -i '\bAron\b|\bArons\b' newpages.txt >> Aron.txt
egrep -i '\bArticuno' newpages.txt >> Articuno.txt
egrep -i '\bAudino' newpages.txt >> Audino.txt
egrep -i '\bAxew' newpages.txt >> Axew.txt
egrep -i '\bAzelf' newpages.txt >> Azelf.txt
egrep -i '\bAzumarill' newpages.txt >> Azumarill.txt
egrep -i '\bAzurill' newpages.txt >> Azurill.txt

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