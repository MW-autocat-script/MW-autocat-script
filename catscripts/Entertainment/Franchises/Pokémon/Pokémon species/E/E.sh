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
   export CATFILE="Eelektrik.txt"
   export CATNAME="Eelektrik"
   ./catscripts/Categorize.sh
fi

if [ $Eelektross -ne 0 ];
then
   export CATFILE="Eelektross.txt"
   export CATNAME="Eelektross"
   ./catscripts/Categorize.sh
fi

if [ $Eevee -ne 0 ];
then
   export CATFILE="Eevee.txt"
   export CATNAME="Eevee"
   ./catscripts/Categorize.sh
fi

if [ $Ekans -ne 0 ];
then
   export CATFILE="Ekans.txt"
   export CATNAME="Ekans"
   ./catscripts/Categorize.sh
fi

if [ $Electabuzz -ne 0 ];
then
   export CATFILE="Electabuzz.txt"
   export CATNAME="Electabuzz"
   ./catscripts/Categorize.sh
fi

if [ $Electivire -ne 0 ];
then
   export CATFILE="Electivire.txt"
   export CATNAME="Electivire"
   ./catscripts/Categorize.sh
fi

if [ $Electrike -ne 0 ];
then
   export CATFILE="Electrike.txt"
   export CATNAME="Electrike"
   ./catscripts/Categorize.sh
fi

if [ $Electrode -ne 0 ];
then
   export CATFILE="Electrode.txt"
   export CATNAME="Electrode"
   ./catscripts/Categorize.sh
fi

if [ $Elekid -ne 0 ];
then
   export CATFILE="Elekid.txt"
   export CATNAME="Elekid"
   ./catscripts/Categorize.sh
fi

if [ $Elgyem -ne 0 ];
then
   export CATFILE="Elgyem.txt"
   export CATNAME="Elgyem"
   ./catscripts/Categorize.sh
fi

if [ $Emboar -ne 0 ];
then
   export CATFILE="Emboar.txt"
   export CATNAME="Emboar"
   ./catscripts/Categorize.sh
fi

if [ $Emolga -ne 0 ];
then
   export CATFILE="Emolga.txt"
   export CATNAME="Emolga"
   ./catscripts/Categorize.sh
fi

if [ $Empoleon -ne 0 ];
then
   export CATFILE="Empoleon.txt"
   export CATNAME="Empoleon"
   ./catscripts/Categorize.sh
fi

if [ $Entei -ne 0 ];
then
   export CATFILE="Entei.txt"
   export CATNAME="Entei"
   ./catscripts/Categorize.sh
fi

if [ $Escavalier -ne 0 ];
then
   export CATFILE="Escavalier.txt"
   export CATNAME="Escavalier"
   ./catscripts/Categorize.sh
fi

if [ $Espeon -ne 0 ];
then
   export CATFILE="Espeon.txt"
   export CATNAME="Espeon"
   ./catscripts/Categorize.sh
fi

if [ $Excadrill -ne 0 ];
then
   export CATFILE="Excadrill.txt"
   export CATNAME="Excadrill"
   ./catscripts/Categorize.sh
fi

if [ $Exeggcute -ne 0 ];
then
   export CATFILE="Exeggcute.txt"
   export CATNAME="Exeggcute"
   ./catscripts/Categorize.sh
fi

if [ $Exeggutor -ne 0 ];
then
   export CATFILE="Exeggutor.txt"
   export CATNAME="Exeggutor"
   ./catscripts/Categorize.sh
fi

if [ $Exploud -ne 0 ];
then
   export CATFILE="Exploud.txt"
   export CATNAME="Exploud"
   ./catscripts/Categorize.sh
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
